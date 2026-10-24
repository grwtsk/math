# norm_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0eb94097-d28e-8a1a-d187-7aa89bde91a3",
  "kind": "theorem",
  "lexical_name": "norm_norm",
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
  "slug": "norm-norm--ccfb80118c3cbd2f93e9ad2a",
  "source": {
    "blob": "08f80e2ac0915662f4461e2b1a6395ceda0c4778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 347,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfb80118c3cbd2f93e9ad2addf3ddef860a34d51094ad8e1f547afadea37847",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eb94097-d28e-8a1a-d187-7aa89bde91a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_norm [Algebra L F] [IsScalarTower K L F] [IsSeparable K F] (x : F) :
    norm K (norm L x) = norm K x := by
  by_cases hKF : FiniteDimensional K F
  · let A := AlgebraicClosure K
    apply (algebraMap K A).injective
    haveI : FiniteDimensional L F := FiniteDimensional.right K L F
    haveI : FiniteDimensional K L := FiniteDimensional.left K L F
    haveI : IsSeparable K L := isSeparable_tower_bot_of_isSeparable K L F
    haveI : IsSeparable L F := isSeparable_tower_top_of_isSeparable K L F
    letI : ∀ σ : L →ₐ[K] A,
        haveI := σ.toRingHom.toAlgebra
        Fintype (F →ₐ[L] A) := fun _ => inferInstance
    rw [norm_eq_prod_embeddings K A (_ : F),
      Fintype.prod_equiv algHomEquivSigma (fun σ : F →ₐ[K] A => σ x)
        (fun π : Σ f : L →ₐ[K] A, _ => (π.2 : F → A) x) fun _ => rfl]
    suffices ∀ σ : L →ₐ[K] A,
        haveI := σ.toRingHom.toAlgebra
        ∏ π : F →ₐ[L] A, π x = σ (norm L x)
      by simp_rw [← Finset.univ_sigma_univ, Finset.prod_sigma, this, norm_eq_prod_embeddings]
    · intro σ
      letI : Algebra L A := σ.toRingHom.toAlgebra
      rw [← norm_eq_prod_embeddings L A (_ : F)]
      rfl
  · rw [norm_eq_one_of_not_module_finite hKF]
    by_cases hKL : FiniteDimensional K L
    · have hLF : ¬FiniteDimensional L F := by
        refine' (mt _) hKF
        intro hKF
        exact FiniteDimensional.trans K L F
      rw [norm_eq_one_of_not_module_finite hLF, _root_.map_one]
    · rw [norm_eq_one_of_not_module_finite hKL]
#align algebra.norm_norm Algebra.norm_norm

end EqProdEmbeddings

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f80e2ac0915662f4461e2b1a6395ceda0c4778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
