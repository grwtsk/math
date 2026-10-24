# norm_extend_symm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e2841af-17be-b9df-b466-2833d49cf4f9",
  "kind": "theorem",
  "lexical_name": "norm_extend_symm_le",
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
  "slug": "norm-extend-symm-le--516283cfd2f3da7d31b6900a",
  "source": {
    "blob": "c8dafc87a52fc650a21d7d3f63eca65e8db26730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 295,
    "path": "GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516283cfd2f3da7d31b6900abc972959a7e6dd4895895a31cef559cc7c36a92b",
  "verification": {
    "reference": "docs/verification/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e2841af-17be-b9df-b466-2833d49cf4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_extend_symm_le (C : ℝ) (h_dense₁ : DenseRange e₁)
    (h_norm₁ : ∃ C, ∀ x, ‖e₂ (f x)‖ ≤ C * ‖e₁ x‖) (h_dense₂ : DenseRange e₂)
    (h_norm₂ : ∀ x, ‖e₁ (f.symm x)‖ ≤ C * ‖e₂ x‖) (x : Fₗ) :
    ‖(f.extend e₁ e₂ h_dense₁ h_norm₁ h_dense₂ ⟨C, h_norm₂⟩).symm x‖ ≤ C * ‖x‖ :=
  LinearMap.norm_extendOfNorm_apply_le h_dense₂ _ h_norm₂ _

end extend

section extendOfIsometry

variable [NormedField 𝕜] [NormedField 𝕜₂]
  [AddCommGroup E] [Module 𝕜 E]
  [AddCommGroup F] [Module 𝕜₂ F]
  [NormedAddCommGroup Eₗ] [NormedSpace 𝕜 Eₗ] [CompleteSpace Eₗ]
  [NormedAddCommGroup Fₗ] [NormedSpace 𝕜₂ Fₗ] [CompleteSpace Fₗ]

variable {σ₁₂ : 𝕜 →+* 𝕜₂} {σ₂₁ : 𝕜₂ →+* 𝕜} [RingHomInvPair σ₁₂ σ₂₁] [RingHomInvPair σ₂₁ σ₁₂]
variable (f : E ≃ₛₗ[σ₁₂] F) (e₁ : E →ₗ[𝕜] Eₗ) (e₂ : F →ₗ[𝕜₂] Fₗ)

/-- Extend a densely defined operator that preserves the norm to a linear isometry equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8dafc87a52fc650a21d7d3f63eca65e8db26730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
