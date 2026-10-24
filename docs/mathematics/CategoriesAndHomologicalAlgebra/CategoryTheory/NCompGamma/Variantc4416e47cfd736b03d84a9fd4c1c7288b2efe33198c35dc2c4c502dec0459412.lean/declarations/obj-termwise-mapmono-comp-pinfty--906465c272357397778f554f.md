# Γ₀_obj_termwise_mapMono_comp_PInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbb91e3e-6ebb-d50e-ebe6-071254db7b26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bae1e21-4e12-2396-765a-c1a0b6228942",
  "kind": "theorem",
  "lexical_name": "Γ₀_obj_termwise_mapMono_comp_PInfty",
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
  "slug": "obj-termwise-mapmono-comp-pinfty--906465c272357397778f554f",
  "source": {
    "blob": "613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906465c272357397778f554fae9191bd9b455e959095a69cd65412c0d30d29a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bae1e21-4e12-2396-765a-c1a0b6228942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Γ₀_obj_termwise_mapMono_comp_PInfty (X : SimplicialObject C) {Δ Δ' : SimplexCategory}
    (i : Δ ⟶ Δ') [Mono i] :
    Γ₀.Obj.Termwise.mapMono (AlternatingFaceMapComplex.obj X) i ≫ PInfty.f Δ.len =
      PInfty.f Δ'.len ≫ X.map i.op := by
  induction' Δ using SimplexCategory.rec with n
  induction' Δ' using SimplexCategory.rec with n'
  dsimp
  -- We start with the case `i` is an identity
  by_cases n = n'
  · subst h
    simp only [SimplexCategory.eq_id_of_mono i, Γ₀.Obj.Termwise.mapMono_id, op_id, X.map_id]
    dsimp
    simp only [id_comp, comp_id]
  by_cases hi : Isδ₀ i
  -- The case `i = δ 0`
  · have h' : n' = n + 1 := hi.left
    subst h'
    simp only [Γ₀.Obj.Termwise.mapMono_δ₀' _ i hi]
    dsimp
    rw [← PInfty.comm _ n, AlternatingFaceMapComplex.obj_d_eq]
    simp only [eq_self_iff_true, id_comp, if_true, Preadditive.comp_sum]
    rw [Finset.sum_eq_single (0 : Fin (n + 2))]
    rotate_left
    · intro b _ hb
      rw [Preadditive.comp_zsmul]
      erw [PInfty_comp_map_mono_eq_zero X (SimplexCategory.δ b) h
          (by
            rw [Isδ₀.iff]
            exact hb),
        zsmul_zero]
    · simp only [Finset.mem_univ, not_true, IsEmpty.forall_iff]
    · simp only [hi.eq_δ₀, Fin.val_zero, pow_zero, one_zsmul]
      rfl
  -- The case `i ≠ δ 0`
  · rw [Γ₀.Obj.Termwise.mapMono_eq_zero _ i _ hi, zero_comp]
    swap
    · by_contra h'
      exact h (congr_arg SimplexCategory.len h'.symm)
    rw [PInfty_comp_map_mono_eq_zero]
    · exact h
    · by_contra h'
      exact hi h'
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₀_obj_termwise_map_mono_comp_P_infty AlgebraicTopology.DoldKan.Γ₀_obj_termwise_mapMono_comp_PInfty

variable [HasFiniteCoproducts C]

namespace Γ₂N₁

/-- The natural transformation `N₁ ⋙ Γ₂ ⟶ toKaroubi (SimplicialObject C)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
