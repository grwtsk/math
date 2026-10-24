# StructureGroupoid.restriction_mem_maximalAtlas_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de76bc478d9e7b57cbba8b0e1bce1f6b18631986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bbfd709-947b-571e-e061-73fc47782ca0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:814560af-a4d6-ac3f-2750-a80ee035f5a0",
  "kind": "theorem",
  "lexical_name": "StructureGroupoid.restriction_mem_maximalAtlas_subtype",
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
  "slug": "structuregroupoid-restriction-mem-maximalatlas-subtype--0c4e4ee2d2e421988d36b9f7",
  "source": {
    "blob": "de76bc478d9e7b57cbba8b0e1bce1f6b18631986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 442,
    "path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4e4ee2d2e421988d36b9f7364a6bf5ae0e1510f4d93f1b29f2906dedbc594b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:814560af-a4d6-ac3f-2750-a80ee035f5a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructureGroupoid.restriction_mem_maximalAtlas_subtype
    {e : OpenPartialHomeomorph M H} (he : e ∈ atlas H M)
    (hs : Nonempty e.source) [HasGroupoid M G] [ClosedUnderRestriction G] :
    let s := { carrier := e.source, is_open' := e.open_source : Opens M }
    let t := { carrier := e.target, is_open' := e.open_target : Opens H }
    ∀ c' ∈ atlas H t,
      e.toHomeomorphSourceTarget.toOpenPartialHomeomorph ≫ₕ c' ∈ G.maximalAtlas s := by
  intro s t c' hc'
  have : Nonempty t := nonempty_coe_sort.mpr (e.mapsTo.nonempty (nonempty_coe_sort.mp hs))
  obtain ⟨x, hc'⟩ := Opens.chart_eq this hc'
  -- As H has only one chart, `chartAt H x` is the identity: i.e., `c'` is the inclusion.
  rw [hc', (chartAt_self_eq)]
  -- Our expression equals this chart, at least on its source.
  rw [OpenPartialHomeomorph.subtypeRestr_def, OpenPartialHomeomorph.trans_refl]
  let goal :=
    e.toHomeomorphSourceTarget.toOpenPartialHomeomorph ≫ₕ (t.openPartialHomeomorphSubtypeCoe this)
  have : goal ≈ e.subtypeRestr (s := s) hs :=
    (goal.eqOnSource_iff (e.subtypeRestr (s := s) hs)).mpr
      ⟨by
        simp only [trans_toPartialEquiv, PartialEquiv.trans_source,
          Homeomorph.toOpenPartialHomeomorph_source, toFun_eq_coe,
          Homeomorph.toOpenPartialHomeomorph_apply, Opens.openPartialHomeomorphSubtypeCoe_source,
          preimage_univ, inter_self, subtypeRestr_source, goal, s]
        exact Subtype.coe_preimage_self _ |>.symm, by intro _ _; rfl⟩
  exact G.mem_maximalAtlas_of_eqOnSource (M := s) this (G.subtypeRestr_mem_maximalAtlas he hs)

/-- Each chart of a charted space is a structomorphism between its source and target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de76bc478d9e7b57cbba8b0e1bce1f6b18631986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
