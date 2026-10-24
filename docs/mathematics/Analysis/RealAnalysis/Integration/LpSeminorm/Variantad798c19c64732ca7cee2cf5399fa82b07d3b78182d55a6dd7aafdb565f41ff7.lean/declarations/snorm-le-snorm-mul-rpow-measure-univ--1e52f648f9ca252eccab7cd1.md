# snorm'_le_snorm'_mul_rpow_measure_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b98aacc2-117b-5cc6-3a56-627f6f8133f9",
  "kind": "theorem",
  "lexical_name": "snorm'_le_snorm'_mul_rpow_measure_univ",
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
  "slug": "snorm-le-snorm-mul-rpow-measure-univ--1e52f648f9ca252eccab7cd1",
  "source": {
    "blob": "a628aac6b054467a684f1afb2f7cb9d4406c69d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1050,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e52f648f9ca252eccab7cd15664e49e8a4aa5571c811073c02a2f27e8de14b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b98aacc2-117b-5cc6-3a56-627f6f8133f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm'_le_snorm'_mul_rpow_measure_univ {p q : ℝ} (hp0_lt : 0 < p) (hpq : p ≤ q) {f : α → E}
    (hf : AEStronglyMeasurable f μ) :
    snorm' f p μ ≤ snorm' f q μ * μ Set.univ ^ (1 / p - 1 / q) := by
  have hq0_lt : 0 < q := lt_of_lt_of_le hp0_lt hpq
  by_cases hpq_eq : p = q
  · rw [hpq_eq, sub_self, ENNReal.rpow_zero, mul_one]
  have hpq : p < q := lt_of_le_of_ne hpq hpq_eq
  let g := fun _ : α => (1 : ℝ≥0∞)
  have h_rw : (∫⁻ a, (‖f a‖₊ : ℝ≥0∞) ^ p ∂μ) = ∫⁻ a, ((‖f a‖₊ : ℝ≥0∞) * g a) ^ p ∂μ :=
    lintegral_congr fun a => by simp
  repeat' rw [snorm']
  rw [h_rw]
  let r := p * q / (q - p)
  have hpqr : 1 / p = 1 / q + 1 / r := by
    field_simp [(ne_of_lt hp0_lt).symm, (ne_of_lt hq0_lt).symm]
    ring
  calc
    (∫⁻ a : α, (↑‖f a‖₊ * g a) ^ p ∂μ) ^ (1 / p) ≤
        (∫⁻ a : α, ↑‖f a‖₊ ^ q ∂μ) ^ (1 / q) * (∫⁻ a : α, g a ^ r ∂μ) ^ (1 / r) :=
      ENNReal.lintegral_Lp_mul_le_Lq_mul_Lr hp0_lt hpq hpqr μ hf.ennnorm aemeasurable_const
    _ = (∫⁻ a : α, ↑‖f a‖₊ ^ q ∂μ) ^ (1 / q) * μ Set.univ ^ (1 / p - 1 / q) := by
      rw [hpqr]; simp
#align measure_theory.snorm'_le_snorm'_mul_rpow_measure_univ MeasureTheory.snorm'_le_snorm'_mul_rpow_measure_univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a628aac6b054467a684f1afb2f7cb9d4406c69d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
