# Complete source: GRWTSK.Analysis.ClosedSelfAdjointOperator.Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7234174cfbd3401b914f3a2abac20eb7a9da1f5e` · SHA-256 `8170df60714d70f746279477ff72b2f090867f00f35b6a2587bd668f0f018297`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ClosedSelfAdjointOperator.Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ClosedSelfAdjointOperator.Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ClosedSelfAdjointOperator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.LinearPMap
public import Mathlib.Analysis.Normed.Operator.Compact.Basic

/-!
# Minimal closed self-adjoint operator interface

This module packages the unbounded Hilbert-space operator primitives already
present in the pinned mathlib.  Closedness and density are consequences of
self-adjointness, not duplicated structure fields.

`ResolventAt` carries an explicit bounded two-sided inverse for `A - z`.
The Cayley candidate uses a resolvent witness for `A + i`, equivalently
`z = -i`.  No existence, compact-spectrum, unitarity, Stone theorem, or
spectral-realization claim is asserted.
-/


namespace GRWTSK.Analysis.ClosedSelfAdjointOperator.Variant9ae3f1d63f113e89e9cac5bfd0246a61df108f50db31c3c269b48c74f180a4a3

public section

namespace Surface.Core

noncomputable section

open Complex Set
open scoped LinearPMap

/-- A self-adjoint partially defined operator on a complex Hilbert space. -/
structure ClosedSelfAdjointOperator (H : Type*)
    [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  toLinearPMap : H →ₗ.[ℂ] H
  selfAdjoint : IsSelfAdjoint toLinearPMap

namespace ClosedSelfAdjointOperator

variable {H : Type*}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- Self-adjointness supplies a dense operator domain in the pinned API. -/
@[surface_adapter, surface_published]
theorem dense_domain (A : ClosedSelfAdjointOperator H) :
    Dense (A.toLinearPMap.domain : Set H) :=
  A.selfAdjoint.dense_domain

/-- Self-adjointness supplies a closed graph in the pinned API. -/
@[surface_adapter, surface_published]
theorem isClosed (A : ClosedSelfAdjointOperator H) :
    A.toLinearPMap.IsClosed :=
  A.selfAdjoint.isClosed

/-- The ambient eigenspace at a real candidate eigenvalue. -/
@[expose]
def eigenspace (A : ClosedSelfAdjointOperator H) (gamma : ℝ) :
    Submodule ℂ H :=
  A.toLinearPMap.eqLocus
    (((gamma : ℂ) • (LinearMap.id : H →ₗ[ℂ] H)).toPMap ⊤)

/-- A bounded two-sided inverse for the partially defined shifted operator
`A - z`.  The range condition makes applying `A` to `inverse y` well
typed. -/
structure ResolventAt (A : ClosedSelfAdjointOperator H) (z : ℂ) where
  inverse : H →L[ℂ] H
  mapsToDomain : ∀ y : H, inverse y ∈ A.toLinearPMap.domain
  right_inverse : ∀ y : H,
    A.toLinearPMap ⟨inverse y, mapsToDomain y⟩ - z • inverse y = y
  left_inverse : ∀ x : A.toLinearPMap.domain,
    inverse (A.toLinearPMap x - z • (x : H)) = (x : H)

/-- Existence of at least one compact bounded resolvent inverse. -/
@[expose]
def HasCompactResolvent (A : ClosedSelfAdjointOperator H) : Prop :=
  ∃ (z : ℂ) (R : ResolventAt A z), IsCompactOperator R.inverse

/-- The bounded candidate `(A - i) (A + i)⁻¹`, written as
`1 - 2 i (A + i)⁻¹`.

This definition requires a caller-supplied resolvent witness at `-i`.  It
does not assert that the witness exists or that this candidate is unitary. -/
@[expose]
def cayleyCandidate (A : ClosedSelfAdjointOperator H)
    (R : ResolventAt A (-Complex.I)) : H →L[ℂ] H :=
  1 - (2 * Complex.I) • R.inverse

@[surface_novel, surface_published, simp]
theorem cayleyCandidate_apply (A : ClosedSelfAdjointOperator H)
    (R : ResolventAt A (-Complex.I)) (y : H) :
    cayleyCandidate A R y = y - (2 * Complex.I) • R.inverse y := by
  simp [cayleyCandidate]

end ClosedSelfAdjointOperator

end

end Surface.Core
```
