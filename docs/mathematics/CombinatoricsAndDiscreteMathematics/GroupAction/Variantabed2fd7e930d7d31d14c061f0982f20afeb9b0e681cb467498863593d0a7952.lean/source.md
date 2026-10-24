# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GroupAction.Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b12c346618ded0ff83810c3e1c8d6dd0dd19379` · SHA-256 `15b3e8489d8381abb18fccdde0f47542ae30657ccbca1b5941e29779445d969a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteAction.Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteAction.Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/GroupAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.InvariantLaw

/-!
# Finite actions and invariant-law transport

Equivariance is stated at the law level.  The theorem below derives preservation
of the unique invariant law; it does not accept a name such as "automorphism"
as evidence of equivariance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteAction.Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247

namespace Mathematics.SpectralClosure

structure FiniteAction (G X : Type)
    [Fintype G] [Fintype X] where
  act : G → X → X
  identity : G
  multiply : G → G → G
  identityAct : ∀ point, act identity point = point
  composeAct :
    ∀ left right point,
      act (multiply left right) point =
        act left (act right point)

structure LawAction (G X : Type)
    [Fintype G] [Fintype X] where
  act : G → FiniteLaw X → FiniteLaw X
  identity : G
  multiply : G → G → G
  identityAct : ∀ law, act identity law = law
  composeAct :
    ∀ left right law,
      act (multiply left right) law =
        act left (act right law)

def KernelLawEquivariant
    {G X : Type} [Fintype G] [Fintype X]
    (lawAction : LawAction G X)
    (kernel : MarkovKernel X) : Prop :=
  ∀ groupElement law,
    kernel.push (lawAction.act groupElement law) =
      lawAction.act groupElement (kernel.push law)

theorem unique_equivariant_invariant_law_is_group_invariant
    {G X : Type} [Fintype G] [Fintype X]
    (lawAction : LawAction G X)
    (kernel : MarkovKernel X)
    (equivariant : KernelLawEquivariant lawAction kernel)
    (canonical : FiniteLaw X)
    (canonicalInvariant : IsInvariantLaw kernel canonical)
    (unique :
      ∀ candidate,
        IsInvariantLaw kernel candidate →
        candidate = canonical)
    (groupElement : G) :
    lawAction.act groupElement canonical = canonical := by
  apply unique
  unfold IsInvariantLaw
  rw [equivariant groupElement canonical, canonicalInvariant]

structure EquivarianceCertificate
    {G X : Type} [Fintype G] [Fintype X]
    (lawAction : LawAction G X)
    (kernel : MarkovKernel X) where
  equivariant : KernelLawEquivariant lawAction kernel
  proofRef : SpectralId

/-!
One value of `CommonContractiveBoundaryLawAtScale` binds all of the local
premises required at one immutable cut to the same externally declared
`UniformContractionMargin`.  A family of cuts satisfies the common law only
when it supplies one such value per cut using the same margin.  In particular,
this structure contains no invariant-law existence proof.
-/

structure CommonContractiveBoundaryLawAtScale
    {G X : Type} [Fintype G] [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (lawAction : LawAction G X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin) where
  contraction : ContractionCertificate kernel metric
  usesCommonMargin :
    UsesUniformContractionMargin margin contraction
  equivariance : EquivarianceCertificate lawAction kernel
  admissibility :
    AdmissibilityCertificate kernel admissible
  cutRef : SpectralId
  stateSpaceRef : SpectralId
  separatedMetricRef : SpectralId

theorem commonBoundaryLaw_certified_invariant_unique
    {G X : Type} [Fintype G] [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (lawAction : LawAction G X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin)
    (boundary :
      CommonContractiveBoundaryLawAtScale
        kernel metric lawAction admissible margin)
    (left right : InvariantLawCertificate kernel) :
    left.law = right.law :=
  certified_invariant_laws_coincide
    kernel metric boundary.contraction left right

theorem commonBoundaryLaw_certified_invariant_is_group_invariant
    {G X : Type} [Fintype G] [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (lawAction : LawAction G X)
    (admissible : X → Prop)
    (margin : UniformContractionMargin)
    (boundary :
      CommonContractiveBoundaryLawAtScale
        kernel metric lawAction admissible margin)
    (canonical : InvariantLawCertificate kernel)
    (groupElement : G) :
    lawAction.act groupElement canonical.law =
      canonical.law := by
  apply unique_equivariant_invariant_law_is_group_invariant
    lawAction kernel
    boundary.equivariance.equivariant
    canonical.law canonical.invariant
  intro candidate candidateInvariant
  exact invariantLaw_unique_under_strict_contraction
    kernel metric boundary.contraction
    candidate canonical.law
    candidateInvariant canonical.invariant

end Mathematics.SpectralClosure
```
