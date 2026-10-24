# Complete source: GRWTSK.Algebra.LinearAlgebra.SourceArithmeticOrbit.Variant700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b34d3f537f22944a1d9b3f14e73a6e8851f46f99` · SHA-256 `700bdc956544c37062bbc66eec89a790650f06a0b230aa7af52ddb7f3aa4e6c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDualRotation
import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.Isomorphisms
import Mathlib.LinearAlgebra.Matrix.DotProduct
import Mathlib.Tactic

/-!
# Actual finite four-channel source orbit and its Gram geometry

The ambient space is the actual complex Lebesgue L² space. Each finite index
supplies both signed logarithmic translates of a source and their actual angular
sign duals. Reflection-evenness gives the exact R/T/J invariant span. Synthesis
and its Hermitian Gram form retain dependent generators and mixed channels.

Inventory inclusion below fixes the source vector; it asserts no nesting across
changing scales. No arithmetic edge, localized-state membership, coefficient
independence, Euclidean state norm or signed RH bound is inferred.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceArithmeticOrbit

open scoped BigOperators InnerProductSpace
open SourceReflectionDuality SourceDualRotation

/-- Four channels per index: signed translation, original versus actual angular dual. -/
abbrev OrbitIndex (I : Finset ℕ) := Bool × Bool × ↥I

/-- `false` selects the positive log shift, and `true` the negative log shift. -/
def signedLog (ε : Bool) (m : ℕ) : ℝ :=
  if ε then -Real.log (m : ℝ) else Real.log (m : ℝ)

/-- Reversing the translation tag negates its literal shift. -/
theorem signedLog_not (ε : Bool) (m : ℕ) : signedLog (!ε) m = -signedLog ε m := by
  cases ε <;> simp [signedLog]

/-- An actual original/dual logarithmic-translate channel, with no coefficient normalization. -/
def orbitAtom (q : ComplexL2) (ε δ : Bool) (m : ℕ) : ComplexL2 :=
  if δ then angularSignDuality (translation (signedLog ε m) q)
  else translation (signedLog ε m) q

/-- The four-channel family restricted to the independently supplied finite inventory. -/
def orbitGenerator (q : ComplexL2) (I : Finset ℕ) (i : OrbitIndex I) : ComplexL2 :=
  orbitAtom q i.1 i.2.1 i.2.2

/-- The actual complex span, without treating its labelled generators as a basis. -/
def finiteOrbit (q : ComplexL2) (I : Finset ℕ) : Submodule ℂ ComplexL2 :=
  Submodule.span ℂ (Set.range (orbitGenerator q I))

/-- Every labelled generator belongs to the literal orbit. -/
theorem orbitGenerator_mem (q : ComplexL2) (I : Finset ℕ) (i : OrbitIndex I) :
    orbitGenerator q I i ∈ finiteOrbit q I :=
  Submodule.subset_span ⟨i, rfl⟩

/-- Finite inventory membership supplies all four actual channels. -/
theorem orbitAtom_mem (q : ComplexL2) {I : Finset ℕ} {m : ℕ}
    (hm : m ∈ I) (ε δ : Bool) : orbitAtom q ε δ m ∈ finiteOrbit q I :=
  orbitGenerator_mem q I (ε, δ, ⟨m, hm⟩)

/-- Actual angular duality exchanges the two channels without changing translation direction. -/
theorem orbitAtom_duality (q : ComplexL2) (ε δ : Bool) (m : ℕ) :
    angularSignDuality (orbitAtom q ε δ m) = orbitAtom q ε (!δ) m := by
  cases δ <;> simp [orbitAtom, angular_duality_involutive]

/-- Reflection reverses the original translate of a reflection-even source. -/
theorem orbitAtom_reflection_original {q : ComplexL2} (hq : reflection q = q)
    (ε : Bool) (m : ℕ) :
    reflection (orbitAtom q ε false m) = orbitAtom q (!ε) false m := by
  simp only [orbitAtom, Bool.false_eq_true, ↓reduceIte, reflection_translation_reverse,
    hq, signedLog_not]

/-- Reflection reverses the dual translate with the necessary minus sign. -/
theorem orbitAtom_reflection_dual {q : ComplexL2} (hq : reflection q = q)
    (ε : Bool) (m : ℕ) :
    reflection (orbitAtom q ε true m) = -orbitAtom q (!ε) true m := by
  simp only [orbitAtom, ↓reduceIte,
    angular_reflection_duality_anticommute, reflection_translation_reverse, hq, signedLog_not]

/-- J=RT sends an original channel to minus the oppositely shifted dual channel. -/
theorem orbitAtom_quarterTurn_original {q : ComplexL2} (hq : reflection q = q)
    (ε : Bool) (m : ℕ) :
    quarterTurn (orbitAtom q ε false m) = -orbitAtom q (!ε) true m := by
  rw [quarterTurn_apply, orbitAtom_duality]
  exact orbitAtom_reflection_dual hq ε m

/-- J=RT sends a dual channel to the oppositely shifted original channel. -/
theorem orbitAtom_quarterTurn_dual {q : ComplexL2} (hq : reflection q = q)
    (ε : Bool) (m : ℕ) :
    quarterTurn (orbitAtom q ε true m) = orbitAtom q (!ε) false m := by
  rw [quarterTurn_apply, orbitAtom_duality]
  exact orbitAtom_reflection_original hq ε m

/-- Angular duality preserves the entire actual span, with no source-even premise. -/
theorem duality_mem_finiteOrbit (q : ComplexL2) (I : Finset ℕ)
    {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    angularSignDuality f ∈ finiteOrbit q I := by
  induction hf using Submodule.span_induction with
  | mem f hf =>
    rcases hf with ⟨⟨ε, δ, m⟩, rfl⟩
    exact orbitAtom_duality q ε δ m ▸ orbitAtom_mem q m.property ε (!δ)
  | zero => simpa only [map_zero] using (finiteOrbit q I).zero_mem
  | add f g _ _ ihf ihg => simpa using (finiteOrbit q I).add_mem ihf ihg
  | smul c f _ ih => simpa using (finiteOrbit q I).smul_mem c ih

/-- Reflection-evenness makes the whole four-channel span reflection-invariant. -/
theorem reflection_mem_finiteOrbit {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    reflection f ∈ finiteOrbit q I := by
  induction hf using Submodule.span_induction with
  | mem f hf =>
    rcases hf with ⟨⟨ε, δ, m⟩, rfl⟩
    change reflection (orbitAtom q ε δ m) ∈ finiteOrbit q I
    cases δ
    · exact orbitAtom_reflection_original hq ε m ▸ orbitAtom_mem q m.property (!ε) false
    · rw [orbitAtom_reflection_dual hq ε m]
      exact (finiteOrbit q I).neg_mem (orbitAtom_mem q m.property (!ε) true)
  | zero => simpa only [map_zero] using (finiteOrbit q I).zero_mem
  | add f g _ _ ihf ihg => simpa using (finiteOrbit q I).add_mem ihf ihg
  | smul c f _ ih => simpa using (finiteOrbit q I).smul_mem c ih

/-- The actual quarter turn preserves the orbit by its literal R-after-T factorization. -/
theorem quarterTurn_mem_finiteOrbit {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    quarterTurn f ∈ finiteOrbit q I := by
  rw [quarterTurn_apply]
  exact reflection_mem_finiteOrbit hq I (duality_mem_finiteOrbit q I hf)

/-- Inventory inclusion gives only fixed-source span inclusion. -/
theorem finiteOrbit_mono (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K) :
    finiteOrbit q I ≤ finiteOrbit q K := by
  apply Submodule.span_le.mpr
  rintro _ ⟨⟨ε, δ, m⟩, rfl⟩
  exact orbitAtom_mem q (hIK m.property) ε δ

/-- The finite family has exactly four labels per retained inventory index. -/
theorem orbitIndex_card (I : Finset ℕ) : Fintype.card (OrbitIndex I) = 4 * I.card := by
  simp [OrbitIndex]
  omega

/-- The literal finite span is finite-dimensional even when its generators are dependent. -/
instance finiteOrbit_finiteDimensional (q : ComplexL2) (I : Finset ℕ) :
    FiniteDimensional ℂ (finiteOrbit q I) :=
  FiniteDimensional.span_of_finite ℂ (Set.finite_range (orbitGenerator q I))

/-- Four labels per index give an upper dimension bound, with no independence claim. -/
theorem finiteOrbit_finrank_le (q : ComplexL2) (I : Finset ℕ) :
    Module.finrank ℂ (finiteOrbit q I) ≤ 4 * I.card := by
  exact (finrank_range_le_card (R := ℂ) (orbitGenerator q I)).trans_eq (orbitIndex_card I)

/-- Any real-coefficient cI+sJ preserves the span,
without needing a unit-circle premise for membership. -/
theorem rotationMap_mem_finiteOrbit {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) (c s : ℝ) {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    rotationMap c s f ∈ finiteOrbit q I := by
  rw [rotationMap_apply]
  exact (finiteOrbit q I).add_mem ((finiteOrbit q I).smul_mem _ hf)
    ((finiteOrbit q I).smul_mem _ (quarterTurn_mem_finiteOrbit hq I hf))

/-- Actual angle rotations preserve the same fixed-source finite orbit. -/
theorem angleRotation_mem_finiteOrbit {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) (θ : ℝ) {f : ComplexL2} (hf : f ∈ finiteOrbit q I) :
    angleRotation θ f ∈ finiteOrbit q I :=
  rotationMap_mem_finiteOrbit hq I _ _ hf

/-- Full finite channel profiles retain arbitrary complex arithmetic coefficients. -/
def finiteProfile (q : ComplexL2) (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) : ComplexL2 :=
  ∑ m ∈ I, c m • orbitAtom q ε δ m

/-- The full finite signed profile belongs to its literal actual span. -/
theorem finiteProfile_mem (q : ComplexL2) (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    finiteProfile q I ε δ c ∈ finiteOrbit q I := by
  exact (finiteOrbit q I).sum_mem fun m hm =>
    (finiteOrbit q I).smul_mem _ (orbitAtom_mem q hm ε δ)

/-- Synthesis maps all labelled coefficients into the actual Hilbert space. -/
def synthesis (q : ComplexL2) (I : Finset ℕ) : (OrbitIndex I → ℂ) →ₗ[ℂ] ComplexL2 where
  toFun c := ∑ i, c i • orbitGenerator q I i
  map_add' c d := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' a c := by simp [Finset.smul_sum, smul_smul]

/-- Literal synthesis evaluation fixes the coefficient convention. -/
theorem synthesis_apply (q : ComplexL2) (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    synthesis q I c = ∑ i, c i • orbitGenerator q I i := rfl

/-- A coordinate singleton synthesizes to exactly that labelled generator. -/
theorem synthesis_single (q : ComplexL2) (I : Finset ℕ) (i : OrbitIndex I) (a : ℂ) :
    synthesis q I (Pi.single i a) = a • orbitGenerator q I i := by
  classical
  simp [synthesis, Pi.single_apply]

/-- No synthesized state escapes the literal span. -/
theorem synthesis_mem (q : ComplexL2) (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    synthesis q I c ∈ finiteOrbit q I :=
  (finiteOrbit q I).sum_mem fun i _ =>
    (finiteOrbit q I).smul_mem _ (orbitGenerator_mem q I i)

/-- The synthesis range is precisely the actual span, even for dependent labels. -/
theorem synthesis_range (q : ComplexL2) (I : Finset ℕ) :
    LinearMap.range (synthesis q I) = finiteOrbit q I := by
  apply le_antisymm
  · rintro f ⟨c, rfl⟩
    exact synthesis_mem q I c
  · apply Submodule.span_le.mpr
    rintro _ ⟨i, rfl⟩
    exact ⟨Pi.single i 1, by simp [synthesis_single]⟩

/-- The Gram matrix is the actual Hermitian L² pairing, including all mixed channels. -/
def gramMatrix (q : ComplexL2) (I : Finset ℕ) : Matrix (OrbitIndex I) (OrbitIndex I) ℂ :=
  fun i j => ⟪orbitGenerator q I i, orbitGenerator q I j⟫_ℂ

/-- The actual Gram form has exact Hermitian conjugate symmetry. -/
theorem gramMatrix_conj_symm (q : ComplexL2) (I : Finset ℕ) (i j : OrbitIndex I) :
    star (gramMatrix q I i j) = gramMatrix q I j i :=
  inner_conj_symm _ _

/-- Synthesis evaluates every Hermitian interaction with left-conjugated coefficients. -/
theorem synthesis_inner (q : ComplexL2) (I : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, synthesis q I d⟫_ℂ =
      ∑ i, ∑ j, star (c i) * d j * gramMatrix q I i j := by
  simp only [synthesis_apply]
  rw [sum_inner]
  simp only [inner_sum, inner_smul_left, inner_smul_right, gramMatrix, starRingEnd_apply]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The state norm is its actual Gram quadratic form, rather than a Euclidean label norm. -/
theorem synthesis_norm_sq (q : ComplexL2) (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    ‖synthesis q I c‖ ^ 2 =
      (∑ i, ∑ j, star (c i) * c j * gramMatrix q I i j).re := by
  have h := congrArg Complex.re (synthesis_inner q I c c)
  change RCLike.re ⟪synthesis q I c, synthesis q I c⟫_ℂ = _ at h
  rw [inner_self_eq_norm_sq] at h
  exact h

/-- Positivity belongs to the stationary Gram form, without asserting positivity of reflection. -/
theorem gramMatrix_quadratic_nonneg (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    0 ≤ (∑ i, ∑ j, star (c i) * c j * gramMatrix q I i j).re := by
  rw [← synthesis_norm_sq]
  positivity

/-- A Gram row is precisely its generator paired against the synthesized state. -/
theorem gramMatrix_mulVec_eq_inner (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) (i : OrbitIndex I) :
    (gramMatrix q I).mulVec c i = ⟪orbitGenerator q I i, synthesis q I c⟫_ℂ := by
  simp [Matrix.mulVec, dotProduct, gramMatrix, synthesis_apply, inner_sum,
    inner_smul_right, mul_comm]

/-- The Gram nullspace is exactly synthesis dependency, with no independence hypothesis. -/
theorem gramMatrix_mulVec_eq_zero_iff (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    (gramMatrix q I).mulVec c = 0 ↔ synthesis q I c = 0 := by
  constructor
  · intro h
    apply (inner_self_eq_zero (𝕜 := ℂ)).mp
    have hrows (i : OrbitIndex I) : ⟪orbitGenerator q I i, synthesis q I c⟫_ℂ = 0 := by
      rw [← gramMatrix_mulVec_eq_inner]
      exact congrFun h i
    calc
      ⟪synthesis q I c, synthesis q I c⟫_ℂ =
          ∑ i, star (c i) * ⟪orbitGenerator q I i, synthesis q I c⟫_ℂ := by
        simp only [synthesis_apply, sum_inner, inner_smul_left, starRingEnd_apply]
      _ = 0 := by simp [hrows]
  · intro h
    funext i
    rw [gramMatrix_mulVec_eq_inner, h, inner_zero_right]
    rfl

/-- The coefficient quotient by actual synthesis dependencies is the literal orbit. -/
def synthesisQuotientEquivOrbit (q : ComplexL2) (I : Finset ℕ) :
    ((OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) ≃ₗ[ℂ] finiteOrbit q I :=
  (synthesis q I).quotKerEquivRange.trans
    (LinearEquiv.ofEq _ _ (synthesis_range q I))

/-- Quotient transport returns the original synthesized state, with no Euclidean renormalization. -/
theorem synthesisQuotientEquivOrbit_apply_mk (q : ComplexL2) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    (synthesisQuotientEquivOrbit q I (Submodule.Quotient.mk c) : ComplexL2) =
      synthesis q I c := rfl

/-- The mixed translated original/dual coefficient remains explicit in the Gram geometry. -/
def mixedKernel (q : ComplexL2) (s t : ℝ) : ℂ :=
  ⟪translation s q, angularSignDuality (translation t q)⟫_ℂ

/-- The original/original Gram block is the actual stationary kernel. -/
theorem orbitAtom_inner_original_original (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε false m, orbitAtom q η false n⟫_ℂ =
      stationaryKernel q (signedLog ε m) (signedLog η n) := rfl

/-- The dual/dual block retains the same stationary coefficient through actual unitarity. -/
theorem orbitAtom_inner_dual_dual (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε true m, orbitAtom q η true n⟫_ℂ =
      stationaryKernel q (signedLog ε m) (signedLog η n) :=
  angularSignDuality.inner_map_map _ _

/-- The original/dual block is the actual mixed kernel, not an assumed zero. -/
theorem orbitAtom_inner_original_dual (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε false m, orbitAtom q η true n⟫_ℂ =
      mixedKernel q (signedLog ε m) (signedLog η n) := rfl

/-- Actual self-adjoint involution makes the dual/original block the same mixed coefficient. -/
theorem orbitAtom_inner_dual_original (q : ComplexL2) (ε η : Bool) (m n : ℕ) :
    ⟪orbitAtom q ε true m, orbitAtom q η false n⟫_ℂ =
      mixedKernel q (signedLog ε m) (signedLog η n) := by
  have h := angularSignDuality.inner_map_map
    (translation (signedLog ε m) q) (angularSignDuality (translation (signedLog η n) q))
  rw [angular_duality_involutive] at h
  exact h

/-- Orthogonality is justified at equal shifts; unequal mixed Gram entries remain unrestricted. -/
theorem mixedKernel_self_zero {q : ComplexL2} (hq : reflection q = q) (s : ℝ) :
    mixedKernel q s s = 0 := by
  unfold mixedKernel
  rw [← angular_translation_duality_commute, (translation s).inner_map_map]
  exact even_inner_dual_zero hq

/-- Reflection stays a separate signed form on actual generators, rather than the Gram metric. -/
def reflectedMatrix (q : ComplexL2) (I : Finset ℕ) : Matrix (OrbitIndex I) (OrbitIndex I) ℂ :=
  fun i j => ⟪orbitGenerator q I i, reflection (orbitGenerator q I j)⟫_ℂ

/-- Finite coefficient coordinates reconstruct the full signed reflected interaction exactly. -/
theorem synthesis_reflected_inner (q : ComplexL2) (I : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ =
      ∑ i, ∑ j, star (c i) * d j * reflectedMatrix q I i j := by
  simp only [synthesis_apply, map_sum, map_smul]
  rw [sum_inner]
  simp only [inner_sum, inner_smul_left, inner_smul_right,
    reflectedMatrix, starRingEnd_apply]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- At index one, opposite translation labels have identical actual shifts. -/
theorem orbitAtom_one_shift_equal (q : ComplexL2) (δ : Bool) :
    orbitAtom q false δ 1 = orbitAtom q true δ 1 := by
  simp [orbitAtom, signedLog]

/-- Two distinct labels at index one give a literal dependent coefficient vector. -/
def dependentCoefficients (I : Finset ℕ) (h1 : 1 ∈ I) : OrbitIndex I → ℂ :=
  Pi.single (false, false, ⟨1, h1⟩) 1 - Pi.single (true, false, ⟨1, h1⟩) 1

/-- The labelled coefficient difference is nonzero, independently of the source vector. -/
theorem dependentCoefficients_ne_zero (I : Finset ℕ) (h1 : 1 ∈ I) :
    dependentCoefficients I h1 ≠ 0 := by
  intro h
  have hfirst := congrFun h (false, false, ⟨1, h1⟩)
  norm_num [dependentCoefficients, Pi.single_apply] at hfirst

/-- Its actual synthesized state is zero, forbidding an independent-basis interpretation. -/
theorem dependentCoefficients_synthesis_zero (q : ComplexL2) (I : Finset ℕ) (h1 : 1 ∈ I) :
    synthesis q I (dependentCoefficients I h1) = 0 := by
  rw [dependentCoefficients, map_sub, synthesis_single, synthesis_single]
  simp only [one_smul, orbitGenerator, orbitAtom_one_shift_equal, sub_self]

/-- The same nonzero labelled vector belongs to the actual Gram nullspace. -/
theorem dependentCoefficients_gram_zero (q : ComplexL2) (I : Finset ℕ) (h1 : 1 ∈ I) :
    (gramMatrix q I).mulVec (dependentCoefficients I h1) = 0 :=
  (gramMatrix_mulVec_eq_zero_iff q I _).mpr (dependentCoefficients_synthesis_zero q I h1)

end FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
```
