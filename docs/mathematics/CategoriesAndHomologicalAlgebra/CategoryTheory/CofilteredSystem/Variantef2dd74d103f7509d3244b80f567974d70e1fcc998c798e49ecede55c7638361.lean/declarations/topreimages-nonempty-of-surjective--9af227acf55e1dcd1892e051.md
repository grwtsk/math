# toPreimages_nonempty_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7479641f17904982c3e3483189e2c7b18965396",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cb40c17-3e70-f572-799d-56837b491ad7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9acb5849-d91a-9dd9-7dee-977392267c18",
  "kind": "theorem",
  "lexical_name": "toPreimages_nonempty_of_surjective",
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
  "slug": "topreimages-nonempty-of-surjective--9af227acf55e1dcd1892e051",
  "source": {
    "blob": "b7479641f17904982c3e3483189e2c7b18965396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 323,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af227acf55e1dcd1892e0514e51c3c5939b0cb444045021ad4ac0ebb43cef65",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9acb5849-d91a-9dd9-7dee-977392267c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPreimages_nonempty_of_surjective [hFn : ∀ j : J, Nonempty (F.obj j)]
    (Fsur : ∀ ⦃i j : J⦄ (f : i ⟶ j), (F.map f).Surjective) (hs : s.Nonempty) (j) :
    Nonempty ((F.toPreimages s).obj j) := by
  simp only [toPreimages_obj, nonempty_coe_sort, nonempty_iInter, mem_preimage]
  obtain h | ⟨⟨ji⟩⟩ := isEmpty_or_nonempty (j ⟶ i)
  · exact ⟨(hFn j).some, fun ji => h.elim ji⟩
  · obtain ⟨y, ys⟩ := hs
    obtain ⟨x, rfl⟩ := Fsur ji y
    exact ⟨x, fun ji' => (F.thin_diagram_of_surjective Fsur ji' ji).symm ▸ ys⟩
#align category_theory.functor.to_preimages_nonempty_of_surjective CategoryTheory.Functor.toPreimages_nonempty_of_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7479641f17904982c3e3483189e2c7b18965396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
