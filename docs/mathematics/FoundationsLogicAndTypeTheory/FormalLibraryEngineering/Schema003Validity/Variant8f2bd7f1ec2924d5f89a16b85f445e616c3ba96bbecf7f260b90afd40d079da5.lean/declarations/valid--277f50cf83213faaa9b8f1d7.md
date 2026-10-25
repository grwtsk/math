# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4369e4ee065b9562a9683b23e009787c1c806423232d3e0e47dd5a5c2e065b3",
  "kind": "structure",
  "lexical_name": "Valid",
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
  "slug": "valid--277f50cf83213faaa9b8f1d7",
  "source": {
    "blob": "2e650244825926ed359cb34958cd76976d4ae5f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Schema003Validity/Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:277f50cf83213faaa9b8f1d7df832af23f1963de827f15a06a16471332e915f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Schema003Validity/Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4369e4ee065b9562a9683b23e009787c1c806423232d3e0e47dd5a5c2e065b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Valid (candidate : ConfigurationPolicy) : Prop where
  schemaVersion : candidate.schemaVersion = 3
  supersedes : candidate.supersedesSchemaVersion = 2
  positiveBitLength : 0 < candidate.bitLength
  supportedBitLength : candidate.bitLength ∈ candidate.currentSupportedBitLengths
  failClosed : candidate.failClosed = true
  rejectUnknown : candidate.rejectUnknownKeys = true
  explicitDecoderLimit : candidate.decoderExplicitMaximumRequired = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Schema003Validity/Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Schema003Validity/Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e650244825926ed359cb34958cd76976d4ae5f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
