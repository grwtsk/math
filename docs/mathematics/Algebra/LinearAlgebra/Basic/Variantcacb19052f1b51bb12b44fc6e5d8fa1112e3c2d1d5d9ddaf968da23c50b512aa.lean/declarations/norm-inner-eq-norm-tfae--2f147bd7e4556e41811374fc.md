# norm_inner_eq_norm_tfae

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
      "line": 1585,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89e6ecf5-f10a-effb-b7b6-a01ae20de2ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3027c02c-fd2f-9644-b45d-e2d12f0610c5",
  "kind": "theorem",
  "lexical_name": "norm_inner_eq_norm_tfae",
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
  "slug": "norm-inner-eq-norm-tfae--2f147bd7e4556e41811374fc",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1612,
    "line": 1585,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f147bd7e4556e41811374fc13cf234d0e5bc6be4c2a7b277ee42aa585b5a29c",
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

Occurrence: `result:3027c02c-fd2f-9644-b45d-e2d12f0610c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1585–1612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_inner_eq_norm_tfae (x y : E) :
    List.TFAE [‖⟪x, y⟫‖ = ‖x‖ * ‖y‖,
      x = 0 ∨ y = (⟪x, y⟫ / ⟪x, x⟫) • x,
      x = 0 ∨ ∃ r : 𝕜, y = r • x,
      x = 0 ∨ y ∈ 𝕜 ∙ x] := by
  tfae_have 1 → 2
  · refine' fun h => or_iff_not_imp_left.2 fun hx₀ => _
    have : ‖x‖ ^ 2 ≠ 0 := pow_ne_zero _ (norm_ne_zero_iff.2 hx₀)
    rw [← sq_eq_sq (norm_nonneg _) (mul_nonneg (norm_nonneg _) (norm_nonneg _)), mul_pow, ←
      mul_right_inj' this, eq_comm, ← sub_eq_zero, ← mul_sub] at h
    simp only [@norm_sq_eq_inner 𝕜] at h
    letI : InnerProductSpace.Core 𝕜 E := InnerProductSpace.toCore
    erw [← InnerProductSpace.Core.cauchy_schwarz_aux, InnerProductSpace.Core.normSq_eq_zero,
      sub_eq_zero] at h
    rw [div_eq_inv_mul, mul_smul, h, inv_smul_smul₀]
    rwa [inner_self_ne_zero]
  tfae_have 2 → 3; exact fun h => h.imp_right fun h' => ⟨_, h'⟩
  tfae_have 3 → 1
  · rintro (rfl | ⟨r, rfl⟩) <;>
    simp [inner_smul_right, norm_smul, inner_self_eq_norm_sq_to_K, inner_self_eq_norm_mul_norm,
      sq, mul_left_comm]
  tfae_have 3 ↔ 4; · simp only [Submodule.mem_span_singleton, eq_comm]
  tfae_finish
#align norm_inner_eq_norm_tfae norm_inner_eq_norm_tfae

/-- If the inner product of two vectors is equal to the product of their norms, then the two vectors
are multiples of each other. One form of the equality case for Cauchy-Schwarz.
Compare `inner_eq_norm_mul_iff`, which takes the stronger hypothesis `⟪x, y⟫ = ‖x‖ * ‖y‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L1585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
