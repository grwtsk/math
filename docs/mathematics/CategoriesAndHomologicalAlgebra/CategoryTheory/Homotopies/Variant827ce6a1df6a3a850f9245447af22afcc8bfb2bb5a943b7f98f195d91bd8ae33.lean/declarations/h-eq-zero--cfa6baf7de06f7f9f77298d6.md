# Hσ_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e29a1fc-721a-0c74-4af9-92fd09936db3",
  "kind": "theorem",
  "lexical_name": "Hσ_eq_zero",
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
  "slug": "h-eq-zero--cfa6baf7de06f7f9f77298d6",
  "source": {
    "blob": "c57f58e386e928f3964137b4470190b1b60e7b50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variant827ce6a1df6a3a850f9245447af22afcc8bfb2bb5a943b7f98f195d91bd8ae33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa6baf7de06f7f9f77298d61a75420dcb99e477868ec43fb24e4e19297b38f0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variant827ce6a1df6a3a850f9245447af22afcc8bfb2bb5a943b7f98f195d91bd8ae33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e29a1fc-721a-0c74-4af9-92fd09936db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hσ_eq_zero (q : ℕ) : (Hσ q : K[X] ⟶ K[X]).f 0 = 0 := by
  unfold Hσ
  rw [nullHomotopicMap'_f_of_not_rel_left (c_mk 1 0 rfl) cs_down_0_not_rel_left]
  rcases q with (_|q)
  · rw [hσ'_eq (show 0 = 0 + 0 by rfl) (c_mk 1 0 rfl)]
    simp only [pow_zero, Fin.mk_zero, one_zsmul, eqToHom_refl, Category.comp_id]
    -- This `erw` is needed to show `0 + 1 = 1`.
    erw [ChainComplex.of_d]
    rw [AlternatingFaceMapComplex.objD, Fin.sum_univ_two, Fin.val_zero, Fin.val_one, pow_zero,
      pow_one, one_smul, neg_smul, one_smul, comp_add, comp_neg, add_neg_eq_zero,
      ← Fin.castSucc_zero, ← Fin.succ_zero_eq_one, δ_comp_σ_self, δ_comp_σ_succ]
  · rw [hσ'_eq_zero (Nat.succ_pos q) (c_mk 1 0 rfl), zero_comp]

/-- The maps `hσ' q n m hnm` are natural on the simplicial object -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variant827ce6a1df6a3a850f9245447af22afcc8bfb2bb5a943b7f98f195d91bd8ae33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variant827ce6a1df6a3a850f9245447af22afcc8bfb2bb5a943b7f98f195d91bd8ae33.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f58e386e928f3964137b4470190b1b60e7b50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
