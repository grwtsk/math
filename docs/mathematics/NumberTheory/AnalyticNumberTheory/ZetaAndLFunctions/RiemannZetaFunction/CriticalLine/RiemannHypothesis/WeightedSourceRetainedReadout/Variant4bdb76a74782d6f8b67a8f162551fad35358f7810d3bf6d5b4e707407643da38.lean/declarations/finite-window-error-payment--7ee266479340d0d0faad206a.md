# finite_window_error_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6d4d2ca-6a2f-50f0-53f3-9723cb9d869c",
  "kind": "theorem",
  "lexical_name": "finite_window_error_payment",
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
  "slug": "finite-window-error-payment--7ee266479340d0d0faad206a",
  "source": {
    "blob": "8697b66c41f31bcac6905b959ec92a5f4b47a8ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variant4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee266479340d0d0faad206aa42d102be0a85aced849bd0228c4fd8b5fefb694",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variant4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d4d2ca-6a2f-50f0-53f3-9723cb9d869c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_window_error_payment {A : ℝ} (hA : 1 ≤ A) (e : ℝ → ℝ)
    (hi : IntervalIntegrable e volume (-A) (3 * A))
    (hi2 : Integrable (fun x ↦ e x ^ 2) volume) :
    |(∫ x in (-A)..(3 * A), e x) / (∫ x : ℝ, prescribedSource A x)| ≤
      massDecoder * Real.sqrt (∫ x : ℝ, e x ^ 2) := by
  have hab : -A ≤ 3 * A := by linarith
  have he : 0 ≤ ∫ x : ℝ, e x ^ 2 := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hcs :=
    open FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens in
      integral_sq_le_length_mul_integral_sq hab hi hi2.intervalIntegrable
  have hwindow : (∫ x in (-A)..(3 * A), e x ^ 2) ≤ ∫ x : ℝ, e x ^ 2 := by
    rw [intervalIntegral.integral_of_le hab]
    exact setIntegral_le_integral hi2 (ae_of_all _ fun _ ↦ sq_nonneg _)
  apply mass_decoder_of_square_bound hA he
  have hmul := mul_le_mul_of_nonneg_left hwindow (by linarith : 0 ≤ 3 * A - -A)
  linarith

/-- A retained vector may spread outside the original support. Only the
window-integrability and genuine full error energy are required. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variant4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variant4bdb76a74782d6f8b67a8f162551fad35358f7810d3bf6d5b4e707407643da38.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8697b66c41f31bcac6905b959ec92a5f4b47a8ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
