# ExactGuardedByteEdit.typedInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdd4ae5beb152926ff01c1332cfbb1cf919e7a444b19c678c90dfd222449a463",
  "kind": "def",
  "lexical_name": "ExactGuardedByteEdit.typedInverse",
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
  "slug": "exactguardedbyteedit-typedinverse--2b3c9af4748f45026e3b4f6d",
  "source": {
    "blob": "5ddecc442f59b1132fe728c13c44b5deca58917a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b3c9af4748f45026e3b4f6dcec84bf1a98c12b52bcff8586b6b186e89fd3ecc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdd4ae5beb152926ff01c1332cfbb1cf919e7a444b19c678c90dfd222449a463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def ExactGuardedByteEdit.typedInverse
    (edit : ExactGuardedByteEdit) (inverseSequenceNumber : Nat) :
    ExactGuardedByteEdit where
  targetPathUtf8 := edit.targetPathUtf8
  targetFile := edit.targetFile
  expectedFileHash := edit.expectedAfterFileHash
  expectedRange := {
    startByte := edit.expectedRange.startByte
    endByte := edit.expectedRange.startByte + edit.afterBytes.length }
  expectedBeforeByteHash := edit.expectedAfterByteHash
  expectedAfterByteHash := edit.expectedBeforeByteHash
  expectedAfterFileHash := edit.expectedFileHash
  beforeBytes := edit.afterBytes
  afterBytes := edit.beforeBytes
  sequenceNumber := inverseSequenceNumber

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inverse/Variant3c520b9880dca6093e9094d742695052db88f0a5c451098338d76b2b6b6b360a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ddecc442f59b1132fe728c13c44b5deca58917a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
