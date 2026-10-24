# attach_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63aeb9f7-526d-a7cc-5d44-c9102d6393df",
  "kind": "theorem",
  "lexical_name": "attach_filterMap",
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
  "slug": "attach-filtermap--58296f5666cb8190cc730b6f",
  "source": {
    "blob": "298de21244dbf716048660a16d8bc2d10ab5c10c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 452,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58296f5666cb8190cc730b6f18dd222362739248d51797f7b59155115b06086d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63aeb9f7-526d-a7cc-5d44-c9102d6393df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attach_filterMap {l : List α} {f : α → Option β} :
    (l.filterMap f).attach = l.attach.filterMap
      fun ⟨x, h⟩ => (f x).pbind (fun b m => some ⟨b, mem_filterMap.mpr ⟨x, h, m⟩⟩) := by
  induction l with
  | nil => rfl
  | cons x xs ih =>
    simp only [filterMap_cons, attach_cons, filterMap_map]
    split <;> rename_i h
    · simp only [Option.pbind_eq_none_iff, reduceCtorEq, exists_false,
        or_false] at h
      rw [attach_congr]
      rotate_left
      · simp only [h]
        rfl
      rw [ih]
      simp only [map_filterMap, Option.map_pbind, Option.map_some]
      rfl
    · simp only [Option.pbind_eq_some_iff] at h
      obtain ⟨a, h, w⟩ := h
      simp only [Option.some.injEq] at w
      subst w
      rw [attach_congr]
      rotate_left
      · simp only [h]
        rfl
      rw [attach_cons, map_cons, map_map, ih, map_filterMap]
      congr
      ext
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298de21244dbf716048660a16d8bc2d10ab5c10c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
