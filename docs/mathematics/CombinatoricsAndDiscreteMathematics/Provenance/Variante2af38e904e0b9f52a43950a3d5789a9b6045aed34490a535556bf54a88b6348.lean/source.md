# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Provenance.Variante2af38e904e0b9f52a43950a3d5789a9b6045aed34490a535556bf54a88b6348

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4d0cd6573c8b59b8464149ab7481ac191fa636d` · SHA-256 `91be2c89d77f0ddedbc807b3cde729fa81bb88c6041e9362a5f08d1b7ac596c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CertifiedPrimitiveCore.Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CertifiedPrimitiveCore.Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Obstruction/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Provenance wrapper for primitive cores

Metadata binds a mathematical core to an immutable implementation cut.  It
does not participate in completion or minimality proofs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CertifiedPrimitiveCore.Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint
universe uSnapshot uRevision uChecker uVersion uEvidence

structure CertifiedPrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial)
    (SnapshotId : Type uSnapshot)
    (RegistryRevision : Type uRevision)
    (CheckerId : Type uChecker)
    (CheckerVersion : Type uVersion)
    (EvidenceId : Type uEvidence)
    [DecidableEq EvidenceId] where
  mathematicalCore :
    PrimitiveCore semantics registry partial
  snapshot : SnapshotId
  constraintRegistryRevision :
    RegistryRevision
  checker : CheckerId
  checkerVersion : CheckerVersion
  evidenceRefs : Finset EvidenceId

theorem CertifiedPrimitiveCore.infeasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {SnapshotId : Type uSnapshot}
    {RegistryRevision : Type uRevision}
    {CheckerId : Type uChecker}
    {CheckerVersion : Type uVersion}
    {EvidenceId : Type uEvidence}
    [DecidableEq EvidenceId]
    (certificate :
      CertifiedPrimitiveCore
        semantics registry partial
        SnapshotId RegistryRevision
        CheckerId CheckerVersion EvidenceId) :
    semantics.Infeasible
      certificate.mathematicalCore.constraints
      partial :=
  certificate.mathematicalCore.infeasible

end Mathematics.BinaryFrontier.Obstruction
```
