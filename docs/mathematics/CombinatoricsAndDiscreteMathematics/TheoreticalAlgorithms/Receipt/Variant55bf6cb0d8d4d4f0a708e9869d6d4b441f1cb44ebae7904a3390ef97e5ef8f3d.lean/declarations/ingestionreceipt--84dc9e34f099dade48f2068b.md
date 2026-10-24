# IngestionReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1d67e1433266406348a20a53d9e6a9f324bbe539befda49e3a3de8b37a6ecdd",
  "kind": "structure",
  "lexical_name": "IngestionReceipt",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ingestionreceipt--84dc9e34f099dade48f2068b",
  "source": {
    "blob": "75ac01ab7953a631fd34fc54ff4287575220bf26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant55bf6cb0d8d4d4f0a708e9869d6d4b441f1cb44ebae7904a3390ef97e5ef8f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84dc9e34f099dade48f2068b5f8b64d29ce12eb382006c3ed97eaa6cd4186d8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant55bf6cb0d8d4d4f0a708e9869d6d4b441f1cb44ebae7904a3390ef97e5ef8f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1d67e1433266406348a20a53d9e6a9f324bbe539befda49e3a3de8b37a6ecdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IngestionReceipt where
  raw : RawIngestion
  artifactReceipts : List ArtifactReceipt
  receiptIdsUnique :
    (artifactReceipts.map ArtifactReceipt.artifactId).Nodup
  artifactCoverage :
    ∀ artifactId,
      artifactId ∈ raw.snapshot.manifest.sourceInventory ↔
        ∃ receipt ∈ artifactReceipts,
          receipt.artifactId = artifactId
  declarations : List Declaration
  environment : EnvironmentCapture
  environment_matches :
    environment.capsuleKey =
      raw.reconstruction.sandboxed.capsule.key
  declarationIdsUnique :
    (declarations.map Extractor.DeclarationRecord.declarationId).Nodup
  declarationCoverage :
    ∀ declarationId,
      declarationId ∈ environment.declarationInventory ↔
        ∃ declaration ∈ declarations,
          declaration.declarationId = declarationId
  proofs : List ProofCapture
  proofObligations : List ProofObligation
  sorryCoverage :
    ∀ closure ∈ environment.verification.extraction.trustClosures,
      ∀ assumption ∈ closure.assumptions,
        assumption.kind = .sorryDerivedDeclaration →
          ∃ obligation ∈ proofObligations,
            obligation.declarationId = closure.declarationId ∧
            obligation.assumption = assumption
  attributes : List DeclarationAttribute
  blueprints : List BlueprintRecord
  workflows : List WorkflowRecord
  issues : List IssueRecord
  data : List DataRecord
  receiptDigest : Digest

namespace IngestionReceipt

/-- Total ingestion cannot silently omit an inventoried artifact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant55bf6cb0d8d4d4f0a708e9869d6d4b441f1cb44ebae7904a3390ef97e5ef8f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant55bf6cb0d8d4d4f0a708e9869d6d4b441f1cb44ebae7904a3390ef97e5ef8f3d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ac01ab7953a631fd34fc54ff4287575220bf26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
