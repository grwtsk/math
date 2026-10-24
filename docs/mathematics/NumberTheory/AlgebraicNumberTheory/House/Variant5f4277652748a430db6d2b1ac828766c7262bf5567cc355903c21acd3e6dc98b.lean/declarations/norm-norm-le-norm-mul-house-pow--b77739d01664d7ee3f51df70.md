# norm_norm_le_norm_mul_house_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fb74605785bf2d2530db27ebb4957fbeffd4317",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4277652748a430db6d2b1ac828766c7262bf5567cc355903c21acd3e6dc98b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78da6350-5406-ac29-067d-45b2bddb4058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c7133a6-555f-b42d-4394-bababf9337cf",
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
  "slug": "norm-norm-le-norm-mul-house-pow--b77739d01664d7ee3f51df70",
  "source": {
    "blob": "7fb74605785bf2d2530db27ebb4957fbeffd4317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant5f4277652748a430db6d2b1ac828766c7262bf5567cc355903c21acd3e6dc98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77739d01664d7ee3f51df70427b0bb94feedaafd5eee89f24b634b5b5be844c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant5f4277652748a430db6d2b1ac828766c7262bf5567cc355903c21acd3e6dc98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7133a6-555f-b42d-4394-bababf9337cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–136.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant5f4277652748a430db6d2b1ac828766c7262bf5567cc355903c21acd3e6dc98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant5f4277652748a430db6d2b1ac828766c7262bf5567cc355903c21acd3e6dc98b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb74605785bf2d2530db27ebb4957fbeffd4317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
