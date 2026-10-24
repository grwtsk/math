# doublingOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb3ccac48a32a1159cd15d6c4749c155d3208d217a8700042d4cd3f50aacfc6c",
  "kind": "def",
  "lexical_name": "doublingOperator",
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
  "slug": "doublingoperator--892c6481004c349f7455b6ba",
  "source": {
    "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:892c6481004c349f7455b6ba596b3bf7be462bb3990dc4488e2d9d5b8a7927d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb3ccac48a32a1159cd15d6c4749c155d3208d217a8700042d4cd3f50aacfc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doublingOperator : VersionedOperator ℝ :=
  VersionedOperator.onUniverse
    { value := "operator:real-doubling" }
    snapshot
    (fun value ↦ 2 * value)
    digest

/-- Identity real-line operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3874ad4ee8e3b2ab501b398030b231948c6e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
