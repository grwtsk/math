# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ProjectiveRayleigh.Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `651a664aafbfbec4e240080b81a232f6ea036323` · SHA-256 `d7b7fe44cc8ffaccba6437c1c8efd0e9d8c001570883621bc741365e12284db8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RayleighQuotientBase.Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RayleighQuotientBase.Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"d0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ProjectiveRayleigh.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.Rayleigh
public import Mathlib.LinearAlgebra.Projectivization.Basic

/-!
# Rayleigh quotients on complex projective inner-product spaces

For a complex inner-product space `H`, `Projectivization ℂ H` is the quotient of
the nonzero vectors by multiplication by a nonzero complex scalar.  At the data
level, mathlib implements it as

```text
Quotient ((MulAction.orbitRel ℂˣ H).comap Subtype.val).
```

This is the algebraic projective space.  If `H` also has `[CompleteSpace H]`, it
is appropriate to call `H` a Hilbert space; completeness is not needed for the
quotient or for the scale-invariance proved below.

For `A : H →L[ℂ] H`, mathlib's real Rayleigh quotient is exactly

```text
re ⟪A v, v⟫ / ‖v‖².
```

The numerator and denominator both acquire the factor `‖c‖²` under
`v ↦ c • v`.  Hence the quotient is unchanged for `c ≠ 0`, and it descends to
`Projectivization ℂ H`.  Self-adjointness is not required for this descent: it
is required only when the quotient is interpreted spectrally as the expectation
value of an observable.

No topology, manifold structure, or Fubini--Study metric is asserted here.
Mathlib's `Projectivization` module supplies the algebraic quotient, but not
those analytic structures.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RayleighQuotientBase.Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0

public section

open Complex InnerProductSpace
open scoped ComplexConjugate LinearAlgebra.Projectivization

namespace Surface.Core.ProjectiveRayleigh

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- The base quotient, in the exact argument order used by the manuscript. -/
@[expose, surface_adapter, surface_published]
noncomputable def rayleighQuotientBase (A : H →L[ℂ] H) (v : H) : ℝ :=
  RCLike.re (inner ℂ v (A v)) / ‖v‖ ^ 2

/-! The next two results make the exact relationship to mathlib executable. -/

/-- Unfold the manuscript definition without changing the order of the inner-product inputs. -/
@[surface_adapter, surface_published]
theorem rayleighQuotientBase_eq (A : H →L[ℂ] H) (v : H) :
    rayleighQuotientBase A v = RCLike.re (inner ℂ v (A v)) / ‖v‖ ^ 2 :=
  rfl

/-- The manuscript formula is exactly mathlib's bundled Rayleigh quotient. -/
@[surface_adapter, surface_published]
theorem rayleighQuotientBase_eq_mathlib (A : H →L[ℂ] H) (v : H) :
    rayleighQuotientBase A v = A.rayleighQuotient v := by
  simp only [rayleighQuotientBase, ContinuousLinearMap.rayleighQuotient,
    ContinuousLinearMap.reApplyInnerSelf_apply, inner_re_symm]

/-- A nonzero complex rescaling does not change the base Rayleigh quotient. -/
@[surface_adapter, surface_published]
theorem rayleighQuotientBase_smul (A : H →L[ℂ] H) (v : H) {c : ℂ}
    (hc : c ≠ 0) :
    rayleighQuotientBase A (c • v) = rayleighQuotientBase A v :=
  by
    simpa only [rayleighQuotientBase_eq_mathlib] using A.rayleigh_smul v hc

/--
The Rayleigh quotient on complex projective space.  The use of
`Projectivization.lift` makes scale independence part of the definition's
kernel-checked well-definedness obligation.
-/
@[expose, surface_novel, surface_published]
noncomputable def projectiveRayleighQuotient (A : H →L[ℂ] H) :
    Projectivization ℂ H → ℝ :=
  Projectivization.lift
    (fun v ↦ rayleighQuotientBase A (v : H))
    (by
      intro a b c hab
      have hc : c ≠ 0 := by
        intro hc
        apply a.property
        rw [hab, hc, zero_smul]
      rw [hab]
      exact rayleighQuotientBase_smul A (b : H) hc)

/-- Evaluating the descended function at a projective class recovers any representative. -/
@[surface_novel, surface_published, simp]
theorem projectiveRayleighQuotient_mk (A : H →L[ℂ] H) (v : H) (hv : v ≠ 0) :
    projectiveRayleighQuotient A (Projectivization.mk ℂ v hv) =
      rayleighQuotientBase A v :=
  Projectivization.lift_mk _ _ v hv

/-- Equal projective classes necessarily have equal Rayleigh values. -/
@[surface_novel, surface_published]
theorem projectiveRayleighQuotient_eq_of_mk_eq_mk
    (A : H →L[ℂ] H) (v w : H) (hv : v ≠ 0) (hw : w ≠ 0)
    (hvw : Projectivization.mk ℂ v hv = Projectivization.mk ℂ w hw) :
    rayleighQuotientBase A v = rayleighQuotientBase A w := by
  rw [← projectiveRayleighQuotient_mk A v hv,
    ← projectiveRayleighQuotient_mk A w hw, hvw]

end Surface.Core.ProjectiveRayleigh
````
