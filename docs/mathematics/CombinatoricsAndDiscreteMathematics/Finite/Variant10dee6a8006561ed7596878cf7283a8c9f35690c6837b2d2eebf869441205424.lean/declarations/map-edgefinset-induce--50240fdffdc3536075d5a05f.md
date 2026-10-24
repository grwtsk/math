# map_edgeFinset_induce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feede69e73628a44e81353f30d98986f4befa9ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceb7483f-2837-d794-2f22-fed1329f9344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee27a234-49b4-4da2-c72f-9747f0a4fa65",
  "kind": "theorem",
  "lexical_name": "map_edgeFinset_induce",
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
  "slug": "map-edgefinset-induce--50240fdffdc3536075d5a05f",
  "source": {
    "blob": "feede69e73628a44e81353f30d98986f4befa9ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 467,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50240fdffdc3536075d5a05fc3c6fc5177e567724502288b7cf0d6e63b24d3d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee27a234-49b4-4da2-c72f-9747f0a4fa65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_edgeFinset_induce [DecidableEq V] :
    (G.induce s).edgeFinset.map (Embedding.subtype s).sym2Map
      = G.edgeFinset ∩ s.toFinset.sym2 := by
  simp_rw [Finset.ext_iff, Sym2.forall, mem_inter, mk_mem_sym2_iff, mem_map, Sym2.exists,
    Set.mem_toFinset, mem_edgeSet, comap_adj, Embedding.sym2Map_apply, Embedding.coe_subtype,
    Sym2.map_pair_eq, Sym2.eq_iff]
  intro v w
  constructor
  · rintro ⟨x, y, hadj, ⟨hv, hw⟩ | ⟨hw, hv⟩⟩
    all_goals rw [← hv, ← hw]
    · exact ⟨hadj, x.prop, y.prop⟩
    · exact ⟨hadj.symm, y.prop, x.prop⟩
  · intro ⟨hadj, hv, hw⟩
    use ⟨v, hv⟩, ⟨w, hw⟩, hadj
    tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feede69e73628a44e81353f30d98986f4befa9ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
