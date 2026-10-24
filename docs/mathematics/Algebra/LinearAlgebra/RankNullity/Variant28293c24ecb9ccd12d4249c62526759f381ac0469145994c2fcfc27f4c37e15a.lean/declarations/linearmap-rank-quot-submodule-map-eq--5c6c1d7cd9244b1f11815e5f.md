# LinearMap.rank_quot_submodule_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daaf467a9ec0eca0330d167d074eeb610d1c6549",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02753989-df38-0f9f-08f0-4fe24036148c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74c95c11-c3ce-8ff8-84f2-41f93e158c87",
  "kind": "lemma",
  "lexical_name": "LinearMap.rank_quot_submodule_map_eq",
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
  "slug": "linearmap-rank-quot-submodule-map-eq--5c6c1d7cd9244b1f11815e5f",
  "source": {
    "blob": "daaf467a9ec0eca0330d167d074eeb610d1c6549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6c1d7cd9244b1f11815e5f69a0484ab84212d9067e970dd9afa1e1ba8865d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74c95c11-c3ce-8ff8-84f2-41f93e158c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.rank_quot_submodule_map_eq [HasRankNullity.{v} R]
    {f : M →ₗ[R] M'} (p : Submodule R M) :
    Module.rank R (M' ⧸ map f p) =
      Module.rank R (M' ⧸ f.range) + Module.rank R (f.range ⧸ map f.rangeRestrict p) := by
  let f' : M' ⧸ map f p →ₗ[R] M' ⧸ f.range := factor map_le_range
  let +nondep e : (f.range ⧸ map f.rangeRestrict p) ≃ₗ[R] f'.ker := by
    let g : f.range →ₗ[R] f'.ker :=
      (LinearEquiv.ofEq (map (map f p).mkQ f.range) f'.ker) (by rw [ker_mapQ]; rfl) ∘ₗ
        (map f p).mkQ.submoduleMap f.range
    have g_surj : Surjective g := by simpa [g] using submoduleMap_surjective (map f p).mkQ f.range
    have g_ker : g.ker = map f.rangeRestrict p := by
      simp [g, submoduleMap, ker_restrict, map_codRestrict]
    let e := g.quotKerEquivOfSurjective g_surj
    rwa [g_ker] at e
  have := f'.rank_eq_of_surjective <| factor_surjective map_le_range
  rwa [← e.rank_eq] at this

omit [HasRankNullity.{u} R] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaf467a9ec0eca0330d167d074eeb610d1c6549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
