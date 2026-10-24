# pow_mul_meas_ge_le_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0c447f-45bb-387f-97e2-5efb2c381845",
  "kind": "theorem",
  "lexical_name": "pow_mul_meas_ge_le_eLpNorm",
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
  "slug": "pow-mul-meas-ge-le-elpnorm--2aedf77147e955cc0087f8f4",
  "source": {
    "blob": "ceefa9b1485a56a0f27b9425a664cc9a60041eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aedf77147e955cc0087f8f4ed62eb6fd3f595fd26ac20522ecf6023a18d7c6c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef0c447f-45bb-387f-97e2-5efb2c381845`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_mul_meas_ge_le_eLpNorm (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    {f : α → ε'} (ε : ℝ≥0∞) :
    (ε * μ { x | ε ≤ ‖f x‖ₑ ^ p.toReal }) ^ (1 / p.toReal) ≤ eLpNorm f p μ := by
  by_cases hf : AEStronglyMeasurable f μ
  · rw [eLpNorm_eq_lintegral_rpow_enorm_toReal hp_ne_zero hp_ne_top hf]
    gcongr
    exact mul_meas_ge_le_lintegral₀ (hf.enorm.pow_const _) ε
  rw [eLpNorm_of_not_aestronglyMeasurable hf]
  exact le_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant9042909bf4225f8f57ce405826295a0379419c2d326cc9e8f4bfc3bd66f5dd05.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceefa9b1485a56a0f27b9425a664cc9a60041eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
