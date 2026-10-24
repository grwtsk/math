# filter_lt_of_top_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:416555a9-d6f7-26f9-b2d8-b838827f8d78",
  "kind": "theorem",
  "lexical_name": "filter_lt_of_top_le",
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
  "slug": "filter-lt-of-top-le--647a2bdcd4f845388813617a",
  "source": {
    "blob": "eb82d6a376cab99aba8a28f4085feb15bd5f1c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647a2bdcd4f845388813617a7e08a7ea17c74c9279388d17b070c40fd298220c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:416555a9-d6f7-26f9-b2d8-b838827f8d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_lt_of_top_le {n m l : ℕ} (hml : m ≤ l) :
    ((Ico n m).filter fun x => x < l) = Ico n m :=
  filter_eq_self.2 fun k hk => by
    simp only [(lt_of_lt_of_le (mem.1 hk).2 hml), decide_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb82d6a376cab99aba8a28f4085feb15bd5f1c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
