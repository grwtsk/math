# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7d566b391da062511fdacc14da38c2090fdc1de0956f44840a9553e387ea138",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--d96ffc6c3750c0e03589fe4c",
  "source": {
    "blob": "d31f8361efd5940938d32c7c59d770fee41b661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d96ffc6c3750c0e03589fe4cf899aa4abd20d3e4432b7fa905b17aacd69cfccf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7d566b391da062511fdacc14da38c2090fdc1de0956f44840a9553e387ea138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (hX : 2 ≤ X) :
    0 < epsilonSchedule X ∧ epsilonSchedule X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X :=
  schedule_admissible X hX
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31f8361efd5940938d32c7c59d770fee41b661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
