# Complete source: GRWTSK.Geometry.Hodge.RationalHodgeTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce90366d81cf18384db557b2d66b3734b33d6f28` · SHA-256 `02099019703f64f901297197bab29e49b4380f57968f7cc4a7ade0218ae3aa10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Geometry.Hodge.RationalCycleCellular

namespace GRWTSK.Geometry.Hodge.RationalHodgeTransport

universe u v w x

/-- Exact linear equivalence between two rational cycle-class problems.

The commuting square is theorem data. Matching dimensions, names, or source prose do not
construct this record. -/
structure CycleClassEquiv
    {Cycle : Type u} {HodgeClass : Type v}
    {Cycle' : Type w} {HodgeClass' : Type x}
    [AddCommGroup Cycle] [Module ℚ Cycle]
    [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
    [AddCommGroup Cycle'] [Module ℚ Cycle']
    [AddCommGroup HodgeClass'] [Module ℚ HodgeClass']
    (H : RationalHodgeData Cycle HodgeClass)
    (H' : RationalHodgeData Cycle' HodgeClass') where
  cycleEquiv : Cycle ≃ₗ[ℚ] Cycle'
  hodgeEquiv : HodgeClass ≃ₗ[ℚ] HodgeClass'
  commute :
    hodgeEquiv.toLinearMap.comp H.cycleClass =
      H'.cycleClass.comp cycleEquiv.toLinearMap

namespace CycleClassEquiv

variable
    {Cycle : Type u} {HodgeClass : Type v}
    {Cycle' : Type w} {HodgeClass' : Type x}
    [AddCommGroup Cycle] [Module ℚ Cycle]
    [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
    [AddCommGroup Cycle'] [Module ℚ Cycle']
    [AddCommGroup HodgeClass'] [Module ℚ HodgeClass']
    {H : RationalHodgeData Cycle HodgeClass}
    {H' : RationalHodgeData Cycle' HodgeClass'}

/-- Pointwise form of the cycle-class comparison square. -/
theorem commute_apply (E : CycleClassEquiv H H') (z : Cycle) :
    E.hodgeEquiv (H.cycleClass z) = H'.cycleClass (E.cycleEquiv z) := by
  have h := congrArg (fun f : Cycle →ₗ[ℚ] HodgeClass' => f z) E.commute
  simpa [LinearMap.comp_apply] using h

/-- Surjectivity transports forward through an exact cycle-class equivalence. -/
theorem surjective_forward
    (E : CycleClassEquiv H H') (hH : H.IsSurjective) :
    H'.IsSurjective := by
  intro h'
  obtain ⟨z, hz⟩ := hH (E.hodgeEquiv.symm h')
  refine ⟨E.cycleEquiv z, ?_⟩
  calc
    H'.cycleClass (E.cycleEquiv z) = E.hodgeEquiv (H.cycleClass z) :=
      (E.commute_apply z).symm
    _ = E.hodgeEquiv (E.hodgeEquiv.symm h') := by rw [hz]
    _ = h' := E.hodgeEquiv.apply_symm_apply h'

/-- Surjectivity reflects backward through an exact cycle-class equivalence. -/
theorem surjective_backward
    (E : CycleClassEquiv H H') (hH' : H'.IsSurjective) :
    H.IsSurjective := by
  intro h
  obtain ⟨z', hz'⟩ := hH' (E.hodgeEquiv h)
  refine ⟨E.cycleEquiv.symm z', ?_⟩
  apply E.hodgeEquiv.injective
  calc
    E.hodgeEquiv (H.cycleClass (E.cycleEquiv.symm z')) =
        H'.cycleClass (E.cycleEquiv (E.cycleEquiv.symm z')) :=
      E.commute_apply (E.cycleEquiv.symm z')
    _ = H'.cycleClass z' := by rw [E.cycleEquiv.apply_symm_apply]
    _ = E.hodgeEquiv h := hz'

/-- Exact cycle-class equivalence preserves the rational-Hodge surjectivity proposition. -/
theorem surjective_iff (E : CycleClassEquiv H H') :
    H.IsSurjective ↔ H'.IsSurjective :=
  ⟨E.surjective_forward, E.surjective_backward⟩

/-- Transport one proof-carrying source-bound rational-Hodge theorem without changing its
source, variety, codimension, or realization metadata.

These metadata fields are strings (with a natural-number codimension), not type indices.
Their geometric interpretation for the target linear model is an external model obligation;
this construction preserves their recorded values and proves linear-map surjectivity. -/
def transportTheorem
    (E : CycleClassEquiv H H')
    (G : SourceBoundRationalHodgeTheorem H) :
    SourceBoundRationalHodgeTheorem H' where
  source := G.source
  variety := G.variety
  codimension := G.codimension
  realization := G.realization
  surjective := E.surjective_forward G.surjective

end CycleClassEquiv

namespace Fixtures

open GRWTSK.Geometry.Hodge.Examples

/-- Identity equivalence of the one-dimensional rational-Hodge fixture. -/
def lineEquiv : CycleClassEquiv lineHodgeData lineHodgeData where
  cycleEquiv := LinearEquiv.refl ℚ ℚ
  hodgeEquiv := LinearEquiv.refl ℚ ℚ
  commute := rfl

/-- Transport along the identity equivalence retains the local surjectivity theorem. -/
theorem line_transport_surjective :
    lineHodgeData.IsSurjective :=
  (lineEquiv.transportTheorem lineSourceTheorem).surjective

end Fixtures

end GRWTSK.Geometry.Hodge.RationalHodgeTransport
```
