# mem_geluIntervalRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db6c29aa-2ff0-7062-8a26-30e399c83f88",
  "kind": "theorem",
  "lexical_name": "mem_geluIntervalRat",
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
  "slug": "mem-geluintervalrat--003db1ba08b7ff420817dc5e",
  "source": {
    "blob": "6fa8ab3d81c90b359f6a21a834b5c2b55a29e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003db1ba08b7ff420817dc5e90eec47b27927730f0788cb43f960f9963deb46d",
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

Occurrence: `result:db6c29aa-2ff0-7062-8a26-30e399c83f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_geluIntervalRat {x : ℝ} {I : IntervalRat}
    (hx : x ∈ I) :
    Real.gelu x ∈ geluIntervalRat I := by
  simp only [Real.gelu, geluIntervalRat, gelu_c1_lo, gelu_c2]
  -- Key equalities for the constants
  have hc2_eq : (0.044715 : ℝ) = ((44715 / 1000000 : ℚ) : ℝ) := by norm_num
  have h_half_eq : (0.5 : ℝ) = ((1 / 2 : ℚ) : ℝ) := by norm_num
  have h_xxx : x * x * x = x ^ 3 := by ring
  have h_one : (1 : ℝ) = ((1 : ℚ) : ℝ) := by norm_num
  -- Step 1: x³ ∈ pow I 3
  have h_x3 : x ^ 3 ∈ IntervalRat.pow I 3 := IntervalRat.mem_pow hx 3
  -- Step 2: c2 * x³ ∈ scale c2 (pow I 3)
  have h_c2_x3 : (44715 / 1000000 : ℚ) * x ^ 3 ∈ IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3) :=
    IntervalRat.mem_scale (44715/1000000) h_x3
  -- Step 3: x + c2*x³ ∈ add I (scale c2 (pow I 3))
  have h_inner : x + (44715 / 1000000 : ℚ) * x ^ 3 ∈
      IntervalRat.add I (IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3)) :=
    IntervalRat.mem_add hx h_c2_x3
  -- Step 4: √(2/π) ∈ c1_interval
  have h_c1_mem : Real.sqrt (2 / Real.pi) ∈
      (⟨797884 / 1000000, 797884 / 1000000 + 1/1000000, by norm_num⟩ : IntervalRat) :=
    sqrt_two_div_pi_mem_interval
  -- Step 5: √(2/π) * inner ∈ mul c1_interval inner
  have h_arg : Real.sqrt (2 / Real.pi) * (x + (44715 / 1000000 : ℚ) * x ^ 3) ∈
      IntervalRat.mul ⟨797884/1000000, 797884/1000000 + 1/1000000, by norm_num⟩
        (IntervalRat.add I (IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3))) :=
    IntervalRat.mem_mul h_c1_mem h_inner
  -- Step 6: tanh(arg) ∈ tanhInterval arg
  have h_tanh : Real.tanh (Real.sqrt (2 / Real.pi) * (x + (44715 / 1000000 : ℚ) * x ^ 3)) ∈
      tanhInterval (IntervalRat.mul ⟨797884/1000000, 797884/1000000 + 1/1000000, by norm_num⟩
        (IntervalRat.add I (IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3)))) :=
    mem_tanhInterval h_arg
  -- Step 7: 1 + tanh ∈ add (singleton 1) tanh_interval
  have h_one_mem : (1 : ℝ) ∈ IntervalRat.singleton 1 := by
    rw [h_one]; exact IntervalRat.mem_singleton 1
  have h_one_plus_tanh : (1 : ℝ) + Real.tanh (Real.sqrt (2 / Real.pi) * (x + (44715 / 1000000 : ℚ) * x ^ 3)) ∈
      IntervalRat.add (IntervalRat.singleton 1)
        (tanhInterval (IntervalRat.mul ⟨797884/1000000, 797884/1000000 + 1/1000000, by norm_num⟩
          (IntervalRat.add I (IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3))))) :=
    IntervalRat.mem_add h_one_mem h_tanh
  -- Step 8: 0.5*x ∈ scale (1/2) I
  have h_half_x : (1 / 2 : ℚ) * x ∈ IntervalRat.scale (1/2) I :=
    IntervalRat.mem_scale (1/2) hx
  -- Step 9: Final: 0.5*x*(1+tanh) ∈ mul half_x one_plus_tanh
  have h_final : (1 / 2 : ℚ) * x *
      ((1 : ℝ) + Real.tanh (Real.sqrt (2 / Real.pi) * (x + (44715 / 1000000 : ℚ) * x ^ 3))) ∈
      IntervalRat.mul (IntervalRat.scale (1/2) I)
        (IntervalRat.add (IntervalRat.singleton 1)
          (tanhInterval (IntervalRat.mul ⟨797884/1000000, 797884/1000000 + 1/1000000, by norm_num⟩
            (IntervalRat.add I (IntervalRat.scale (44715/1000000) (IntervalRat.pow I 3)))))) :=
    IntervalRat.mem_mul h_half_x h_one_plus_tanh
  -- Now convert to the goal using equalities
  -- Goal has: 0.5 * x * (1 + tanh(√(2/π) * (x + 0.044715 * x * x * x)))
  -- h_final has: (1/2) * x * (1 + tanh(√(2/π) * (x + (44715/1000000) * x^3)))
  -- Need to show they're equal
  have h_xxx_assoc : ((44715 / 1000000 : ℚ) : ℝ) * x * x * x = ((44715 / 1000000 : ℚ) : ℝ) * x ^ 3 := by ring
  have h_goal_eq : (0.5 : ℝ) * x * (1 + Real.tanh (Real.sqrt (2 / Real.pi) * (x + 0.044715 * x * x * x)))
      = (1 / 2 : ℚ) * x * ((1 : ℝ) + Real.tanh (Real.sqrt (2 / Real.pi) * (x + (44715 / 1000000 : ℚ) * x ^ 3))) := by
    rw [h_half_eq, hc2_eq, h_xxx_assoc]
  rw [h_goal_eq]
  exact h_final

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa8ab3d81c90b359f6a21a834b5c2b55a29e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
