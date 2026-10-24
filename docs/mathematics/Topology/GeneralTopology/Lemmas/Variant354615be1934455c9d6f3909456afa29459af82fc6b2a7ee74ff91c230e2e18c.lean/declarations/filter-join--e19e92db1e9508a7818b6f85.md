# filter_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57475143-b0ae-2bb9-09c6-68de5619009b",
  "kind": "theorem",
  "lexical_name": "filter_join",
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
  "slug": "filter-join--e19e92db1e9508a7818b6f85",
  "source": {
    "blob": "87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 663,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19e92db1e9508a7818b6f854db03e44dbb94ac9d24c04f054dab9de6b0fd191",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57475143-b0ae-2bb9-09c6-68de5619009b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem filter_join {p : α → Bool} : {o : Option (Option α)} →
    o.join.filter p = (o.filter (Option.any p)).join
  | none => by simp
  | some none => by
    simp only [join_some, filter_some]
    split <;> simp
  | some (some a) => by
    simp only [join_some, filter_some, any_some]
    split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
