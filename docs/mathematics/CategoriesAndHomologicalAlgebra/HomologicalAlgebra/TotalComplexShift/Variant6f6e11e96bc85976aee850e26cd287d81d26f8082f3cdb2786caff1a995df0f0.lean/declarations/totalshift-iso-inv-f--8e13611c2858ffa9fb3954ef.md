# ι_totalShift₁Iso_inv_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b7aa23e-d89b-83b0-9abd-1c38dfa2288b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77f7ca19-e2eb-562b-7266-d86598d73c3f",
  "kind": "lemma",
  "lexical_name": "ι_totalShift₁Iso_inv_f",
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
  "slug": "totalshift-iso-inv-f--8e13611c2858ffa9fb3954ef",
  "source": {
    "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e13611c2858ffa9fb3954efd17638acd5c187fc942757b1283420f885d45bc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f7ca19-e2eb-562b-7266-d86598d73c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_totalShift₁Iso_inv_f (a b n : ℤ) (h : a + b = n) (a' n' : ℤ)
    (ha' : a' + b = n') (hn' : n' = n + x) :
    K.ιTotal (up ℤ) a' b n' ha' ≫
      (CochainComplex.shiftFunctorObjXIso (K.total (up ℤ)) x n n' hn').inv ≫
        (K.totalShift₁Iso x).inv.f n =
      (K.shiftFunctor₁XXIso a x a' (by omega) b).inv ≫
        ((shiftFunctor₁ C x).obj K).ιTotal (up ℤ) a b n h := by
  subst hn'
  obtain rfl : a = a' - x := by omega
  dsimp [totalShift₁Iso, totalShift₁XIso, shiftFunctor₁XXIso, XXIsoOfEq]
  simp only [id_comp, ι_totalDesc]

variable {K L} in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d91aa6f4ce8e18edc862d3e7dbe896edd414046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
