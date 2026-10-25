# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicalStatus.Variant7043009b2fd8cafbf304fc56df97149654013c16a96d98ae88933c190c896130

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2b87ab4f2b009ff8e6d80527c974d2160c59087` · SHA-256 `e85e6a969cb9676200d9f58ba6bad4fb6ab9c354209cefc1fe326e345f2540b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicalStatus.Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LogicalStatus.Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/LogicalStatus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Core
import Lean

/-!
# Claims, proofs, and explicit hypotheses

A conjecture is just a `Claim` for which no `Certificate` has been supplied.
There is intentionally no operation that promotes an arbitrary claim to a
certificate.  Names and manifests may record research targets, but code
generation and manifests are not theorem authorities.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogicalStatus.Variant8ce379053dbec0d02a1c179f1d3d5f55cfe4c8be9d76ee51c7e855a2e071095d

namespace DAF.Comparison

universe u v

/--
Typed manifest metadata for the three logical statuses.  This tag never
produces a proof; proof authority remains in `Certificate` structures.
-/
inductive LogicalStatus
  | proved
  | conditional
  | conjectural
  deriving DecidableEq, Repr

/-- A proposition stated about a particular comparison. -/
structure Claim (C : Spec A B) where
  statement : Prop

/-- A proof of a stated comparison claim. -/
structure Certificate (C : Spec A B) (P : Claim C) where
  proof : P.statement

/-- A proof of a claim under an explicit, retained hypothesis. -/
structure ConditionalCertificate (C : Spec A B) (P : Claim C) where
  Hypothesis : Prop
  proof : Hypothesis → P.statement

namespace Certificate

def logicalStatus (_h : Certificate C P) : LogicalStatus :=
  .proved

/-- A proof can be viewed as conditional on the vacuous hypothesis `True`. -/
def toConditional (h : Certificate C P) : ConditionalCertificate C P where
  Hypothesis := True
  proof := fun _ ↦ h.proof

end Certificate

namespace ConditionalCertificate

def logicalStatus (_h : ConditionalCertificate C P) : LogicalStatus :=
  .conditional

/-- Replace a hypothesis by a stronger one through an explicit implication. -/
def mapHypothesis
    (h : ConditionalCertificate C P)
    {H₂ : Prop}
    (strengthen : H₂ → h.Hypothesis) :
    ConditionalCertificate C P where
  Hypothesis := H₂
  proof := fun h₂ ↦ h.proof (strengthen h₂)

end ConditionalCertificate

/-- Metadata for a conjectural research target; it contains no proof. -/
structure ConjecturalTarget (C : Spec A B) where
  name : Lean.Name
  claim : Claim C

namespace ConjecturalTarget

def logicalStatus (_target : ConjecturalTarget C) : LogicalStatus :=
  .conjectural

end ConjecturalTarget

end DAF.Comparison
```
