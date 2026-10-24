# fst_prod_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6482512e9efe335052a045672ccd65b6c861cb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad76bef0-bf46-18b6-f981-1772542c255d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12c7245f-2bf7-191f-8f0d-083d4045c83e",
  "kind": "theorem",
  "lexical_name": "fst_prod_snd",
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
  "slug": "fst-prod-snd--1804670ab51c4da8dc305ff8",
  "source": {
    "blob": "b6482512e9efe335052a045672ccd65b6c861cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1804670ab51c4da8dc305ff8633d8dd468fd85c67024c70ef4ec9a8b93e66c2a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c7245f-2bf7-191f-8f0d-083d4045c83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_prod_snd (G : Face (C₁.prod C₂)) : G.fst.prod G.snd = G := by
  ext x
  simp only [prod, fst, snd, ← mem_toPointedCone, toPointedCone, mem_prod, mem_map,
    LinearMap.fst_apply, Prod.exists, exists_and_right, exists_eq_right, LinearMap.snd_apply]
  constructor
  · simp only [and_imp, forall_exists_index]
    intro y yn z zm
    have := add_mem zm yn
    simp only [Prod.mk_add_mk, add_comm] at this
    rw [← Prod.mk_add_mk, add_comm] at this
    refine G.isFaceOf.mem_of_add_mem_left ?_ ?_ this
    · exact ⟨(mem_prod.mp (G.isFaceOf.le yn)).1, (mem_prod.mp (G.isFaceOf.le zm)).2⟩
    · exact ⟨(mem_prod.mp (G.isFaceOf.le zm)).1, (mem_prod.mp (G.isFaceOf.le yn)).2⟩
  · intro h; exact ⟨⟨x.2, h⟩, ⟨x.1, h⟩⟩

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6482512e9efe335052a045672ccd65b6c861cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
