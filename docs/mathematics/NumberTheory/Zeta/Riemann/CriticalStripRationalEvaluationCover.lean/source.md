# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationCover

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fc2fdfed35a5f4ff9b243deb466fbf014886d07` · SHA-256 `95957f3b30436894af0d288e2a0fd8d78bb7ab6e007752412dc74f6b71e5e78d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationPatch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension

set_option autoImplicit false

/-!
# Fusing arithmetic disk validation with existing rational covering trees

No analytic fields remain for the caller: leaf patches are constructed from the
finite evaluator and the actual Mellin derivative theorem. Geometry is still an
independent checked obligation. An accepted tree includes every rectangle point,
not only a rational grid or its corners. A zero-permitting cover keeps its
isolation regions when a proved clear rectangle is adjoined.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalEvaluationPatch
open Complex Set RationalPatchCover ZeroIsolation

/-- Checking all stored packets is conservative; no unused failed packet is hidden. -/
def coverCheck {count : ℕ} (W : Fin count → Data) (tree : Tree count) (box : Rectangle) : Bool :=
  decide (∀ i : Fin count, (W i).check=true) && tree.check (fun i => (W i).disk) box

lemma coverCheck_iff {count : ℕ} (W : Fin count → Data) (tree : Tree count) (box : Rectangle) :
    coverCheck W tree box=true ↔
      (∀ i, (W i).check=true) ∧ tree.check (fun i => (W i).disk) box=true := by
  simp only [coverCheck,Bool.and_eq_true,decide_eq_true_eq]

/-- The maintained geometry-to-analytic port receives constructed SAME-source patches. -/
noncomputable def checkedCover {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true) :
    FiniteVariationCover poleNormalizedZeta box.carrier :=
  Tree.toFiniteVariationCover (fun i => (W i).disk)
    (fun i => Data.patch (((coverCheck_iff W tree box).mp hc).1 i))
    tree box ((coverCheck_iff W tree box).mp hc).2

/-- Acceptance cannot be obtained from an inverted or empty rectangle. -/
theorem cover_nonempty {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true) :
    box.carrier.Nonempty :=
  box.carrier_nonempty (Tree.check_wellFormed (fun i => (W i).disk) tree box
    ((coverCheck_iff W tree box).mp hc).2)

theorem cover_count_pos {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true) : 0 < count :=
  Tree.count_pos_of_check (fun i => (W i).disk) tree box ((coverCheck_iff W tree box).mp hc).2

/-- Exact lower-bound transport can retain the common leaf margin separately. -/
theorem cover_norm_lower {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {m : ℚ} (hm : ∀ i, m ≤ (W i).margin) {z : ℂ} (hz : z ∈ box.carrier) :
    (m : ℝ) ≤ ‖poleNormalizedZeta z‖ := by
  have hh := (coverCheck_iff W tree box).mp hc
  obtain ⟨i,hi⟩ := tree.check_covers (fun i => (W i).disk) box hh.2 z hz
  exact (show (m : ℝ) ≤ ((W i).margin : ℝ) from by exact_mod_cast hm i).trans
    (Data.source_norm_lower (hh.1 i) hi)

theorem noTargetZero_of_check {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true) :
    NoTargetZero box.carrier := noTargetZero_of_poleNormalized_cover (checkedCover hc)

/-- No analytic equality of reflected H-values is asserted; this uses target symmetry. -/
theorem noTargetZero_reflected {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true) :
    NoTargetZero {z | criticalReflection z ∈ box.carrier} := by
  intro z hz hz0
  exact noTargetZero_of_check hc (criticalReflection z) hz hz0.critical_reflection

/-- Existing isolation regions and their capacity proofs are literally preserved. -/
noncomputable def extendMixed {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {U : Set ℂ} (C : ZeroPermittingCover U) : ZeroPermittingCover (U ∪ box.carrier) :=
  C.extendZeroFree box.carrier (noTargetZero_of_check hc)

@[simp] theorem extendMixed_count {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {U : Set ℂ} (C : ZeroPermittingCover U) : (extendMixed hc C).count=C.count := rfl

@[simp] theorem extendMixed_regions {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {U : Set ℂ} (C : ZeroPermittingCover U) (i : Fin C.count) :
    (extendMixed hc C).regions i=C.regions i := rfl

/-- Only a proved target inclusion can make this cover consume a complete shell. -/
theorem noTargetZero_on_subset {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {U : Set ℂ} (hU : U ⊆ box.carrier) : NoTargetZero U :=
  fun z hz hz0 => noTargetZero_of_check hc z (hU hz) hz0

/-- Consume the maintained fiber successor only after the ENTIRE closed box is
covered by the previous mixed region and the independently checked rectangle. -/
theorem window_successor_of_mixed_extension {count : ℕ} {W : Fin count → Data}
    {tree : Tree count} {box : Rectangle} (hc : coverCheck W tree box=true)
    {N : ℕ} (hbase : WindowRH N) {U : Set ℂ} (C : ZeroPermittingCover U)
    (hcover : HeightFiber.successorBox N ⊆ U ∪ box.carrier) : WindowRH (N+1) :=
  HeightFiber.window_successor_of_fibers hbase
    (HeightFiber.targetCapacity_of_rhOn ((extendMixed hc C).restrict hcover).rhOn)

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalEvaluationPatch
```
