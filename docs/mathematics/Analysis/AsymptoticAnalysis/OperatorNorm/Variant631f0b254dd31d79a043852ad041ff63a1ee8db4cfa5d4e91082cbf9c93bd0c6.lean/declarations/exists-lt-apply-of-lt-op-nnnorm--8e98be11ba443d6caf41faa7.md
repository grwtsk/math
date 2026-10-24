# exists_lt_apply_of_lt_op_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8748a5b9-239c-e8f5-517f-3a85f67d4a92",
  "kind": "theorem",
  "lexical_name": "exists_lt_apply_of_lt_op_nnnorm",
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
  "slug": "exists-lt-apply-of-lt-op-nnnorm--8e98be11ba443d6caf41faa7",
  "source": {
    "blob": "d430a4d0f26a7ca7e607d1c5349583e2d4936119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 518,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e98be11ba443d6caf41faa7320b5c8f04c1c495d8c3a821847505150996583c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8748a5b9-239c-e8f5-517f-3a85f67d4a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_apply_of_lt_op_nnnorm {𝕜 𝕜₂ E F : Type*} [NormedAddCommGroup E]
    [SeminormedAddCommGroup F] [DenselyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] {σ₁₂ : 𝕜 →+* 𝕜₂}
    [NormedSpace 𝕜 E] [NormedSpace 𝕜₂ F] [RingHomIsometric σ₁₂] (f : E →SL[σ₁₂] F) {r : ℝ≥0}
    (hr : r < ‖f‖₊) : ∃ x : E, ‖x‖₊ < 1 ∧ r < ‖f x‖₊ := by
  obtain ⟨y, hy⟩ := f.exists_mul_lt_apply_of_lt_op_nnnorm hr
  have hy' : ‖y‖₊ ≠ 0 :=
    nnnorm_ne_zero_iff.2 fun heq => by
      simp [heq, nnnorm_zero, map_zero, not_lt_zero'] at hy
  have hfy : ‖f y‖₊ ≠ 0 := (zero_le'.trans_lt hy).ne'
  rw [← inv_inv ‖f y‖₊, NNReal.lt_inv_iff_mul_lt (inv_ne_zero hfy), mul_assoc, mul_comm ‖y‖₊, ←
    mul_assoc, ← NNReal.lt_inv_iff_mul_lt hy'] at hy
  obtain ⟨k, hk₁, hk₂⟩ := NormedField.exists_lt_nnnorm_lt 𝕜 hy
  refine' ⟨k • y, (nnnorm_smul k y).symm ▸ (NNReal.lt_inv_iff_mul_lt hy').1 hk₂, _⟩
  have : ‖σ₁₂ k‖₊ = ‖k‖₊ := Subtype.ext RingHomIsometric.is_iso
  rwa [map_smulₛₗ f, nnnorm_smul, ← NNReal.div_lt_iff hfy, div_eq_mul_inv, this]
#align continuous_linear_map.exists_lt_apply_of_lt_op_nnnorm ContinuousLinearMap.exists_lt_apply_of_lt_op_nnnorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d430a4d0f26a7ca7e607d1c5349583e2d4936119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
