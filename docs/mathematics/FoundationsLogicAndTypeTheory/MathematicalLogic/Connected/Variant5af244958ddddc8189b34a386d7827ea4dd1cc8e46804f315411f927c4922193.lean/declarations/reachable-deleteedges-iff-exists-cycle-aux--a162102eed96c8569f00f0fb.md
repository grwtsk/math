# reachable_deleteEdges_iff_exists_cycle.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2908b75a-03ce-7f10-258a-34e45610631d",
  "kind": "theorem",
  "lexical_name": "reachable_deleteEdges_iff_exists_cycle.aux",
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
  "slug": "reachable-deleteedges-iff-exists-cycle-aux--a162102eed96c8569f00f0fb",
  "source": {
    "blob": "a5d8cc92b8b2acc14c73262422459bc4c022cba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 807,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a162102eed96c8569f00f0fb45aa2f8aa4ff6a12d46acdf5c8e452022893e962",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2908b75a-03ce-7f10-258a-34e45610631d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reachable_deleteEdges_iff_exists_cycle.aux [DecidableEq V] {u v w : V}
    (hb : ∀ p : G.Walk v w, s(v, w) ∈ p.edges) (c : G.Walk u u) (hc : c.IsTrail)
    (he : s(v, w) ∈ c.edges)
    (hw : w ∈ (c.takeUntil v (c.fst_mem_support_of_mem_edges he)).support) : False := by
  have hv := c.fst_mem_support_of_mem_edges he
  -- decompose c into
  --      puw     pwv     pvu
  --   u ----> w ----> v ----> u
  let puw := (c.takeUntil v hv).takeUntil w hw
  let pwv := (c.takeUntil v hv).dropUntil w hw
  let pvu := c.dropUntil v hv
  have : c = (puw.append pwv).append pvu := by simp [puw, pwv, pvu]
  -- We have two walks from v to w
  --      pvu     puw
  --   v ----> u ----> w
  --   |               ^
  --    `-------------'
  --      pwv.reverse
  -- so they both contain the edge s(v, w), but that's a contradiction since c is a trail.
  have hbq := hb (pvu.append puw)
  have hpq' := hb pwv.reverse
  rw [Walk.edges_reverse, List.mem_reverse] at hpq'
  rw [Walk.isTrail_def, this, Walk.edges_append, Walk.edges_append, List.nodup_append_comm,
    ← List.append_assoc, ← Walk.edges_append] at hc
  exact List.disjoint_of_nodup_append hc hbq hpq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d8cc92b8b2acc14c73262422459bc4c022cba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
