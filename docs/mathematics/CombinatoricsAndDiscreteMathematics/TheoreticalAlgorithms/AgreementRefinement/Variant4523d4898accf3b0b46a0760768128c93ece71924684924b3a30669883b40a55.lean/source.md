# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgreementRefinement.Variant4523d4898accf3b0b46a0760768128c93ece71924684924b3a30669883b40a55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8611438401e6c412374edf99c89915df23a42696` · SHA-256 `976ee327383801721a15764c0c294f6af42919f85b8646eb5ee040528706e643`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StableDisagreementPartition.Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StableDisagreementPartition.Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65","mathematical_subject":"Computation.DataStructures","original_sha256":"82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/AgreementRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Agreement
import Mathematics.Discovery.OpenElement

/-!
# Open target: exact disagreement refinement

The target asks for a finite partition of every oracle identity mentioned in
an agreement ledger such that explicitly disagreeing distinct oracles are
separated and every source finding remains referenced.  No agreement class
gains theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StableDisagreementPartition.Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65

namespace Mathematics.Oracle

def AgreementLedger.oracleIds
    (ledger : AgreementLedger) : List OracleId :=
  ledger.findings.flatMap AgreementFinding.oracleIds

structure StableDisagreementPartition
    (ledger : AgreementLedger) where
  blocks : List (List OracleId)
  block_members_unique :
    ∀ block ∈ blocks, block.Nodup
  coverage :
    blocks.flatten.toFinset =
      ledger.oracleIds.toFinset
  disjoint :
    ∀ left ∈ blocks,
      ∀ right ∈ blocks,
        left ≠ right →
          List.Disjoint left right
  disagreementsSeparated :
    ∀ finding ∈ ledger.findings,
      finding.status = .disagrees →
      ∀ left ∈ finding.oracleIds,
        ∀ right ∈ finding.oracleIds,
          left ≠ right →
          ∀ block ∈ blocks,
            ¬ (left ∈ block ∧ right ∈ block)
  retainedFindingIds : List StableId
  findingsRetained :
    retainedFindingIds =
      ledger.findings.map AgreementFinding.findingId

/-- Closed finite refinement target emitted as an immutable proposal element. -/
def OracleDisagreementRefinementStatement : Prop :=
  ∀ ledger : AgreementLedger,
    Nonempty (StableDisagreementPartition ledger)

/-- Immutable proposal-only element for the exact refinement target. -/
def oracleDisagreementRefinementOpenElement :
    Discovery.OpenConjectureElement
      OracleDisagreementRefinementStatement where
  elementId := {
    id := {
      value := "open:oracle:disagreement-refinement"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Exact oracle disagreement refinement"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Oracle.OracleDisagreementRefinementStatement"
  leanDeclarationName_nonempty := by
    decide

end Mathematics.Oracle
```
