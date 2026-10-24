# inner_eq_norm_mul_iff_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9725bb5b-5468-7214-3f3d-ac6deba72694",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5ccf440-1826-44bd-ee83-9d02149ecee4",
  "kind": "theorem",
  "lexical_name": "inner_eq_norm_mul_iff_div",
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
  "slug": "inner-eq-norm-mul-iff-div--c22ea60edca4958f14a5848c",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1665,
    "line": 1649,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22ea60edca4958f14a5848c51cddc20e0da44bbb6dc0ac4c5f1e5fe8b21da52",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ccf440-1826-44bd-ee83-9d02149ecee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1649–1665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_eq_norm_mul_iff_div {x y : E} (h₀ : x ≠ 0) :
    ⟪x, y⟫ = (‖x‖ : 𝕜) * ‖y‖ ↔ (‖y‖ / ‖x‖ : 𝕜) • x = y := by
  have h₀' := h₀
  rw [← norm_ne_zero_iff, Ne.def, ← @ofReal_eq_zero 𝕜] at h₀'
  constructor <;> intro h
  · have : x = 0 ∨ y = (⟪x, y⟫ / ⟪x, x⟫ : 𝕜) • x :=
      ((@norm_inner_eq_norm_tfae 𝕜 _ _ _ _ x y).out 0 1).1 (by simp [h])
    rw [this.resolve_left h₀, h]
    simp [norm_smul, inner_self_ofReal_norm, mul_div_cancel _ h₀']
  · conv_lhs => rw [← h, inner_smul_right, inner_self_eq_norm_sq_to_K]
    field_simp [sq, mul_left_comm]
#align inner_eq_norm_mul_iff_div inner_eq_norm_mul_iff_div

/-- If the inner product of two vectors is equal to the product of their norms (i.e.,
`⟪x, y⟫ = ‖x‖ * ‖y‖`), then the two vectors are nonnegative real multiples of each other. One form
of the equality case for Cauchy-Schwarz.
Compare `norm_inner_eq_norm_iff`, which takes the weaker hypothesis `abs ⟪x, y⟫ = ‖x‖ * ‖y‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L1649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
