# sqrt_two_div_pi_mem_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a790ae5a-e8c8-44e3-2688-50d7d74feb7b",
  "kind": "theorem",
  "lexical_name": "sqrt_two_div_pi_mem_interval",
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
  "slug": "sqrt-two-div-pi-mem-interval--7f66c22141ee3bd0f841c561",
  "source": {
    "blob": "6fa8ab3d81c90b359f6a21a834b5c2b55a29e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f66c22141ee3bd0f841c56147584828ddbe4be1102ef195cce1fb7f776c2d16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a790ae5a-e8c8-44e3-2688-50d7d74feb7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_two_div_pi_mem_interval :
    Real.sqrt (2 / Real.pi) ∈
      (⟨gelu_c1_lo, gelu_c1_lo + 1/1000000, by norm_num⟩ : IntervalRat) := by
  rw [IntervalRat.mem_def]
  simp only [gelu_c1_lo]
  have hpi_lo : (3.141592 : ℝ) < Real.pi := Real.pi_gt_d6
  have hpi_hi : Real.pi < (3.141593 : ℝ) := Real.pi_lt_d6
  have hpi_pos : (0 : ℝ) < Real.pi := Real.pi_pos
  constructor
  · -- Lower bound: ↑(797884/1000000) ≤ √(2/π)
    -- Strategy: Use Real.le_sqrt to convert to squared bound, then use π bounds
    rw [Real.le_sqrt (by norm_num) (by positivity)]
    -- Goal: (797884/1000000)^2 ≤ 2/π
    -- Since π < 3.141593, we have 2/3.141593 < 2/π
    -- So it suffices to show (797884/1000000)^2 < 2/3.141593
    have h_div_bound : (2 : ℝ) / 3.141593 < 2 / Real.pi :=
      div_lt_div_of_pos_left (by norm_num) hpi_pos hpi_hi
    have h_sq_bound : ((797884 / 1000000 : ℚ) : ℝ) ^ 2 < (2 : ℝ) / 3.141593 := by norm_num
    linarith
  · -- Upper bound: √(2/π) ≤ ↑(797885/1000000)
    have hsum : ((797884 / 1000000 : ℚ) + 1 / 1000000) = (797885 / 1000000 : ℚ) := by norm_num
    rw [hsum, Real.sqrt_le_left (by norm_num)]
    -- Goal: 2/π ≤ (797885/1000000)^2
    -- Since 3.141592 < π, we have 2/π < 2/3.141592
    -- So it suffices to show 2/3.141592 < (797885/1000000)^2
    have h_div_bound : (2 : ℝ) / Real.pi < 2 / 3.141592 :=
      div_lt_div_of_pos_left (by norm_num) (by linarith) hpi_lo
    have h_sq_bound : (2 : ℝ) / 3.141592 < ((797885 / 1000000 : ℚ) : ℝ) ^ 2 := by norm_num
    linarith

/-- GELU is bounded by the interval computation.
    The proof follows from composition of verified operations:
    1. x³ ∈ pow I 3 (by mem_pow)
    2. c2*x³ ∈ scale gelu_c2 (pow I 3) (by mem_scale)
    3. x + c2*x³ ∈ add I (scale gelu_c2 (pow I 3)) (by mem_add)
    4. √(2/π) ∈ c1_interval (by sqrt_two_div_pi_mem_interval)
    5. √(2/π) * inner ∈ mul c1_interval inner (by mem_mul)
    6. tanh(arg) ∈ tanhInterval arg (by mem_tanhInterval)
    7. 1 + tanh ∈ add (singleton 1) tanh_interval (by mem_add)
    8. 0.5*x ∈ scale (1/2) I (by mem_scale)
    9. Final: 0.5*x*(1+tanh(...)) ∈ mul half_x one_plus_tanh (by mem_mul) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa8ab3d81c90b359f6a21a834b5c2b55a29e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
