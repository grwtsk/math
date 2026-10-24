# coefficient_logConvex_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "041b7f9712c76e5d807d8b78686c6e6d664ae3d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d89b80a-abf3-cd23-a236-1ebcad06a0b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e863d769-0c34-42fb-dcb4-5f3329ac7ceb",
  "kind": "theorem",
  "lexical_name": "coefficient_logConvex_factorial",
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
  "slug": "coefficient-logconvex-factorial--40a799bdebe23148ffb32a73",
  "source": {
    "blob": "041b7f9712c76e5d807d8b78686c6e6d664ae3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40a799bdebe23148ffb32a731a65d19a4c018cb95e86b6814602685f0c949df9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e863d769-0c34-42fb-dcb4-5f3329ac7ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_logConvex_factorial (n : ℕ) :
    coefficient (n + 1) ^ 2 * ((2 * (n : ℝ) + 2) * (2 * n + 1)) ≤
      coefficient n * coefficient (n + 2) * ((2 * n + 4) * (2 * n + 3)) := by
  have hm := thetaMoment_logConvex n
  have h0 := coefficient_mul_factorial n
  have h1 := coefficient_mul_factorial (n + 1)
  have h2 := coefficient_mul_factorial (n + 2)
  have hfac1 : ((2 * (n + 1)).factorial : ℝ) =
      (2 * (n : ℝ) + 2) * (2 * n + 1) * ((2 * n).factorial : ℝ) := by
    rw [show 2 * (n + 1) = 2 * n + 1 + 1 by omega,
      Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    ring
  have hfac2 : ((2 * (n + 2)).factorial : ℝ) =
      (2 * (n : ℝ) + 4) * (2 * n + 3) * ((2 * (n + 1)).factorial : ℝ) := by
    rw [show 2 * (n + 2) = 2 * (n + 1) + 1 + 1 by omega,
      Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    ring
  have hi : (coefficient (n + 1) * ((2 * (n + 1)).factorial : ℝ)) ^ 2 ≤
      (coefficient n * ((2 * n).factorial : ℝ)) *
        (coefficient (n + 2) * ((2 * (n + 2)).factorial : ℝ)) := by
    rw [h0, h1, h2]
    nlinarith
  rw [hfac2, hfac1] at hi
  let B : ℝ := ((2 * (n : ℝ) + 2) * (2 * n + 1)) * ((2 * n).factorial : ℝ) ^ 2
  have hB : 0 < B := by dsimp [B]; positivity
  apply (mul_le_mul_iff_right₀ hB).mp
  calc
    B * (coefficient (n + 1) ^ 2 * ((2 * (n : ℝ) + 2) * (2 * n + 1))) =
        (coefficient (n + 1) * ((2 * (n : ℝ) + 2) * (2 * n + 1) *
          ((2 * n).factorial : ℝ))) ^ 2 := by dsimp [B]; ring
    _ ≤ (coefficient n * ((2 * n).factorial : ℝ)) *
        (coefficient (n + 2) * ((2 * (n : ℝ) + 4) * (2 * n + 3) *
          ((2 * n + 2) * (2 * n + 1) * ((2 * n).factorial : ℝ)))) := hi
    _ = _ := by dsimp [B]; ring

/-- At every section degree at least four, the top three coefficients force
a negative root-square sum in the squared variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `041b7f9712c76e5d807d8b78686c6e6d664ae3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
