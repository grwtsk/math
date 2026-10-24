# shift_sub_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed7e4b54-4ad8-8d2c-7ce0-0ca6583350d8",
  "kind": "theorem",
  "lexical_name": "shift_sub_norm_le",
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
  "slug": "shift-sub-norm-le--8b38e6536e6b2c7a48f584eb",
  "source": {
    "blob": "c5a8875a9fd3bc306df92f57132d7e0754f11298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b38e6536e6b2c7a48f584eb47fa3b0e345a3b934b21b6b4ceac3c594cb90965",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed7e4b54-4ad8-8d2c-7ce0-0ca6583350d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shift_sub_norm_le {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) (a b : ℝ) :
    ‖shift A hp a - shift A hp b‖ ≤ 5 * |b - a| / A := by
  have ht := sourceCorrelation_linear_taylor_bound hA 0 (b - a)
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero A hp,
    mul_zero, sub_zero] at ht
  have hs := norm_sub_sq_real (shift A hp a) (shift A hp b)
  rw [shift_norm hA hp a, shift_norm hA hp b, shift_inner A hp a b] at hs
  have hk : 162826 / (7623 * A ^ 2) ≤ (25 : ℝ) / A ^ 2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith [sq_nonneg A]
  have ht' := (abs_le.mp ht).1
  have hk' := mul_le_mul_of_nonneg_right hk (sq_nonneg (b - a))
  have hsq : ‖shift A hp a - shift A hp b‖ ^ 2 ≤ 25 / A ^ 2 * (b - a) ^ 2 := by
    nlinarith
  have he : (5 * |b - a| / A) ^ 2 = 25 / A ^ 2 * (b - a) ^ 2 := by
    rw [div_pow, mul_pow, sq_abs]
    ring
  rw [← he] at hsq
  have hn : 0 ≤ 5 * |b - a| / A := by positivity
  nlinarith [norm_nonneg (shift A hp a - shift A hp b)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a8875a9fd3bc306df92f57132d7e0754f11298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
