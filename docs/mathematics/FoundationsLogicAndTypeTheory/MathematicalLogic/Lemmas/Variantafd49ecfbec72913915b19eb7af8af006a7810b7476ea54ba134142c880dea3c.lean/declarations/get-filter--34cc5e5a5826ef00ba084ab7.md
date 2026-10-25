# get?_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e64df92-a4ef-9e35-8989-0f7831c0c582",
  "kind": "theorem",
  "lexical_name": "get?_filter",
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
  "slug": "get-filter--34cc5e5a5826ef00ba084ab7",
  "source": {
    "blob": "52cf1f0e2009d97be473c9ce15757b2053caabab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6759,
    "line": 6752,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34cc5e5a5826ef00ba084ab79d19635afbd91dff6bda4827c496262bd2042599",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e64df92-a4ef-9e35-8989-0f7831c0c582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6752–6759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get?_filter [TransCmp cmp]
    {f : α → β → Bool} {k : α} :
    Const.get? (t.filter f) k = (Const.get? t k).pfilter (fun x h' =>
      f (t.getKey k (mem_iff_isSome_get?.mpr (Option.isSome_of_eq_some h'))) x) :=
  Impl.Const.get?_filter t.wf

/-- Simpler variant of `get?_filter` when `LawfulEqCmp` is available. -/
@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean#L6752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf1f0e2009d97be473c9ce15757b2053caabab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
