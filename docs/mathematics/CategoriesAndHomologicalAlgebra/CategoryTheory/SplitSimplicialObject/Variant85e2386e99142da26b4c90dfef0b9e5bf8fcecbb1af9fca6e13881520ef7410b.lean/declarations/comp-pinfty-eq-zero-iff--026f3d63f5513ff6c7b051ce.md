# comp_PInfty_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808b78f8-e63f-9261-4457-5c38a18ccf41",
  "kind": "theorem",
  "lexical_name": "comp_PInfty_eq_zero_iff",
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
  "slug": "comp-pinfty-eq-zero-iff--026f3d63f5513ff6c7b051ce",
  "source": {
    "blob": "6ab1fe0382dc81635f80d72d986a98f7bfc0df99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026f3d63f5513ff6c7b051cee0403c8ab900f070fcb7049ded7be8b6ec9793f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808b78f8-e63f-9261-4457-5c38a18ccf41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_PInfty_eq_zero_iff {Z : C} {n : ℕ} (f : Z ⟶ X _[n]) :
    f ≫ PInfty.f n = 0 ↔ f ≫ s.πSummand (IndexSet.id (op [n])) = 0 := by
  constructor
  · intro h
    rcases n with _|n
    · dsimp at h
      rw [comp_id] at h
      rw [h, zero_comp]
    · have h' := f ≫= PInfty_f_add_QInfty_f (n + 1)
      dsimp at h'
      rw [comp_id, comp_add, h, zero_add] at h'
      rw [← h', assoc, QInfty_f, decomposition_Q, Preadditive.sum_comp, Preadditive.comp_sum,
        Finset.sum_eq_zero]
      intro i _
      simp only [assoc, σ_comp_πSummand_id_eq_zero, comp_zero]
  · intro h
    rw [← comp_id f, assoc, s.decomposition_id, Preadditive.sum_comp, Preadditive.comp_sum,
      Fintype.sum_eq_zero]
    intro A
    by_cases hA : A.EqId
    · dsimp at hA
      subst hA
      rw [assoc, reassoc_of% h, zero_comp]
    · simp only [assoc, s.ιSummand_comp_PInfty_eq_zero A hA, comp_zero]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.comp_P_infty_eq_zero_iff SimplicialObject.Splitting.comp_PInfty_eq_zero_iff

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab1fe0382dc81635f80d72d986a98f7bfc0df99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
