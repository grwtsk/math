# dropWhile_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f3adffa-9d31-ea6f-2c7d-3752dd2b5473",
  "kind": "theorem",
  "lexical_name": "dropWhile_cons",
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
  "slug": "dropwhile-cons--a4a330cae615a081e7fadfcf",
  "source": {
    "blob": "7072742fea8da6891a2adcb222fb663149dcf6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4a330cae615a081e7fadfcfbc1afae9b89de0f9fb81da90a1d1f8ae03905fd0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f3adffa-9d31-ea6f-2c7d-3752dd2b5473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dropWhile_cons :
    (x :: xs : List α).dropWhile p = if p x then xs.dropWhile p else x :: xs := by
  split <;> simp_all [dropWhile]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7072742fea8da6891a2adcb222fb663149dcf6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
