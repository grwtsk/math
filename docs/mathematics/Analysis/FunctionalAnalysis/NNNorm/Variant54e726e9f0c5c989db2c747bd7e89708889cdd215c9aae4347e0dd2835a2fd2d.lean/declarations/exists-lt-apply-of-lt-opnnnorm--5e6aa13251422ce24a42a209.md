# exists_lt_apply_of_lt_opNNNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63d0ba90-cad8-5200-906c-37c4efc572e8",
  "kind": "theorem",
  "lexical_name": "exists_lt_apply_of_lt_opNNNorm",
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
  "slug": "exists-lt-apply-of-lt-opnnnorm--5e6aa13251422ce24a42a209",
  "source": {
    "blob": "1bdc7b93c258dc6a9d57efa76ca10c999e8b5413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e6aa13251422ce24a42a2092b1b7842cf190d4e6837551fe036969568fecca7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63d0ba90-cad8-5200-906c-37c4efc572e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_apply_of_lt_opNNNorm {𝕜 𝕜₂ E F : Type*} [NormedAddCommGroup E]
    [SeminormedAddCommGroup F] [DenselyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] {σ₁₂ : 𝕜 →+* 𝕜₂}
    [NormedSpace 𝕜 E] [NormedSpace 𝕜₂ F] [RingHomIsometric σ₁₂] (f : E →SL[σ₁₂] F) {r : ℝ≥0}
    (hr : r < ‖f‖₊) : ∃ x : E, ‖x‖₊ < 1 ∧ r < ‖f x‖₊ := by
  obtain ⟨y, hy⟩ := f.exists_mul_lt_apply_of_lt_opNNNorm hr
  have hy' : ‖y‖₊ ≠ 0 :=
    nnnorm_ne_zero_iff.2 fun heq => by
      simp [heq, nnnorm_zero, map_zero, not_lt_zero'] at hy
  have hfy : ‖f y‖₊ ≠ 0 := (zero_le'.trans_lt hy).ne'
  rw [← inv_inv ‖f y‖₊, NNReal.lt_inv_iff_mul_lt (inv_ne_zero hfy), mul_assoc, mul_comm ‖y‖₊, ←
    mul_assoc, ← NNReal.lt_inv_iff_mul_lt hy'] at hy
  obtain ⟨k, hk₁, hk₂⟩ := NormedField.exists_lt_nnnorm_lt 𝕜 hy
  refine ⟨k • y, (nnnorm_smul k y).symm ▸ (NNReal.lt_inv_iff_mul_lt hy').1 hk₂, ?_⟩
  have : ‖σ₁₂ k‖₊ = ‖k‖₊ := Subtype.ext RingHomIsometric.is_iso
  rwa [map_smulₛₗ f, nnnorm_smul, ← div_lt_iff₀ hfy.bot_lt, div_eq_mul_inv, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant54e726e9f0c5c989db2c747bd7e89708889cdd215c9aae4347e0dd2835a2fd2d.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bdc7b93c258dc6a9d57efa76ca10c999e8b5413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
