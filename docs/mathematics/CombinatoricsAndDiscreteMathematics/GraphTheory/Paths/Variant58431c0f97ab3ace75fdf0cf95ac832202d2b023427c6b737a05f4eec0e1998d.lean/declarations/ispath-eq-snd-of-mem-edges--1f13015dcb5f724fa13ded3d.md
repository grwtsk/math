# IsPath.eq_snd_of_mem_edges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00cdc01c08911f51e54db8dbdcf5cb318c16e500",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad4555bd-263e-2859-67d8-1cf66e9af89c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c4344a1-6426-1775-5fbc-8101d92c1f24",
  "kind": "theorem",
  "lexical_name": "IsPath.eq_snd_of_mem_edges",
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
  "slug": "ispath-eq-snd-of-mem-edges--1f13015dcb5f724fa13ded3d",
  "source": {
    "blob": "00cdc01c08911f51e54db8dbdcf5cb318c16e500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f13015dcb5f724fa13ded3d81a3a3080ea28c91b23a261739da56ac1f5606f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c4344a1-6426-1775-5fbc-8101d92c1f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPath.eq_snd_of_mem_edges {p : G.Walk u v} (hp : p.IsPath) (hmem : s(u, w) ∈ p.edges) :
    w = p.snd := by
  have hnil := edges_eq_nil.not.mp <| List.ne_nil_of_mem hmem
  rw [← cons_tail_eq _ hnil, edges_cons, List.mem_cons, Sym2.eq, Sym2.rel_iff'] at hmem
  have : u ∉ p.tail.support := by induction p <;> simp_all
  grind [fst_mem_support_of_mem_edges]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00cdc01c08911f51e54db8dbdcf5cb318c16e500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
