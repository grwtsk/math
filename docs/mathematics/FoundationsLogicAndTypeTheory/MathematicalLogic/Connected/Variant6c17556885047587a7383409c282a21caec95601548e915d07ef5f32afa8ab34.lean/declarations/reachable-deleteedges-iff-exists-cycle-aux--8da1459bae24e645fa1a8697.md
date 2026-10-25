# reachable_deleteEdges_iff_exists_cycle.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae342296a14e1e865928f10973ad578007fd6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 799,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:690b8c65-4acb-f756-5aeb-0080e79e0b03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b3eb0a8-8c2a-aa98-e517-a4ed091dc0e9",
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
  "slug": "reachable-deleteedges-iff-exists-cycle-aux--8da1459bae24e645fa1a8697",
  "source": {
    "blob": "a2ae342296a14e1e865928f10973ad578007fd6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 799,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da1459bae24e645fa1a86972e102ee6053817b7cff50b12c604ff3da7c665a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3eb0a8-8c2a-aa98-e517-a4ed091dc0e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–824.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae342296a14e1e865928f10973ad578007fd6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
