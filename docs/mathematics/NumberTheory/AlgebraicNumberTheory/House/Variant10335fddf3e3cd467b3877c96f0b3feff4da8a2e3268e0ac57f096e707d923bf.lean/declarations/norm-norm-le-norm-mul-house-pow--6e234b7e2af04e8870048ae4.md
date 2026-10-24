# norm_norm_le_norm_mul_house_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e95d2969-d5d7-f340-28f6-fa72f5c2bcbc",
  "kind": "lemma",
  "lexical_name": "norm_norm_le_norm_mul_house_pow",
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
  "slug": "norm-norm-le-norm-mul-house-pow--6e234b7e2af04e8870048ae4",
  "source": {
    "blob": "f215b5b670e1726de5499c0e831b0cfce0acfdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e234b7e2af04e8870048ae47ef9e700ec9c6de143d9b885b48accdbc82d7b34",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e95d2969-d5d7-f340-28f6-fa72f5c2bcbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_norm_le_norm_mul_house_pow (α : K) (σ : K →+* ℂ) :
    ‖Algebra.norm ℚ α‖ ≤ ‖σ α‖ * house α ^ (Module.finrank ℚ K - 1) := by
  classical
  set σ' := σ.toRatAlgHom
  calc _ = ‖∏ τ : K →ₐ[ℚ] ℂ, τ α‖ := ?_
       _ = ‖(σ' α) * ∏ τ ∈ univ.erase σ', τ α‖ := by rw [mul_prod_erase univ (· α) (mem_univ σ')]
       _ ≤ ‖σ' α‖ * ∏ τ ∈ univ.erase σ', ‖τ α‖ := ?_
       _ ≤ ‖σ' α‖ * ∏ τ ∈ univ.erase σ', house α := by gcongr; apply norm_embedding_le_house
       _ = ‖σ' α‖ * house α ^ (Module.finrank ℚ K - 1) := by simp
  · rw [← Algebra.norm_eq_prod_embeddings, ← Rat.norm_cast_real,
      Real.norm_eq_abs, eq_ratCast, Complex.norm_ratCast]
  · rw [Complex.norm_mul]
    gcongr
    exact norm_prod_le (univ.erase σ') (· α)

end

end NumberField

namespace NumberField.house

noncomputable section

variable (K)

open Module.Free Module canonicalEmbedding Matrix Finset

attribute [local instance] Matrix.seminormedAddCommGroup

section DecidableEq

variable [DecidableEq (K →+* ℂ)]

set_option backward.privateInPublic true in
/-- `c` is defined as the product of the maximum absolute
  value of the entries of the inverse of the matrix `basisMatrix` and  `finrank ℚ K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f215b5b670e1726de5499c0e831b0cfce0acfdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
