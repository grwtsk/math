# increasing_min_at_left_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b90eb9080a8009f35dc347d504f36f46b6c4cdfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92afd37e-ab7d-d638-8bb1-fc4631de976e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:603a3b59-0388-088a-9dc9-3f9f91959048",
  "kind": "theorem",
  "lexical_name": "increasing_min_at_left_core",
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
  "slug": "increasing-min-at-left-core--49647e9317163703414c64dd",
  "source": {
    "blob": "b90eb9080a8009f35dc347d504f36f46b6c4cdfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49647e9317163703414c64dd2d99f4b65b7402fdc486714631394cde76021810",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:603a3b59-0388-088a-9dc9-3f9f91959048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem increasing_min_at_left_core (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig) (hpos : 0 < (derivIntervalCore e I cfg).lo) :
    ∀ x ∈ I, Expr.eval (fun _ => I.lo) e ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  -- Use the MVT: f(x) - f(lo) = f'(ξ) * (x - lo) for some ξ ∈ (lo, x)
  -- Since f' > 0 and x ≥ lo, we have f(x) ≥ f(lo)
  have hdiff := evalFunc1_differentiable e hsupp
  by_cases heq : (I.lo : ℝ) = x
  · rw [heq]
  · -- x > lo since x ∈ I and x ≠ lo
    have hlo_le_x : (I.lo : ℝ) ≤ x := by
      simp only [IntervalRat.mem_def] at hx; exact hx.1
    have hlo_lt_x : (I.lo : ℝ) < x := lt_of_le_of_ne hlo_le_x heq
    -- Apply MVT
    have hmvt := exists_deriv_eq_slope (evalFunc1 e) hlo_lt_x
      (hdiff.continuous.continuousOn) (fun t _ => (hdiff t).differentiableWithinAt)
    obtain ⟨ξ, hξ_mem, hξ_eq⟩ := hmvt
    -- ξ ∈ (lo, x) ⊆ I, so deriv f ξ ∈ derivIntervalCore
    have hξ_in_I : ξ ∈ I := by
      simp only [Set.mem_Ioo] at hξ_mem
      simp only [IntervalRat.mem_def] at hx ⊢
      constructor
      · exact le_of_lt hξ_mem.1
      · exact le_trans (le_of_lt hξ_mem.2) hx.2
    have hderiv := derivIntervalCore_correct e hsupp I ξ hξ_in_I cfg
    -- deriv f ξ > 0
    have hderiv_pos : deriv (evalFunc1 e) ξ > 0 := by
      simp only [IntervalRat.mem_def] at hderiv
      calc deriv (evalFunc1 e) ξ ≥ (derivIntervalCore e I cfg).lo := hderiv.1
        _ > 0 := by exact_mod_cast hpos
    -- slope = deriv f ξ > 0, so f(x) > f(lo)
    have hslope_pos : (evalFunc1 e x - evalFunc1 e I.lo) / (x - I.lo) > 0 := by
      rw [← hξ_eq]; exact hderiv_pos
    have hdiff_pos : x - (I.lo : ℝ) > 0 := sub_pos.mpr hlo_lt_x
    have hnum_pos : evalFunc1 e x - evalFunc1 e I.lo > 0 := by
      have := div_pos_iff.mp hslope_pos
      cases this with
      | inl h => exact h.1
      | inr h => exact absurd hdiff_pos (not_lt.mpr (le_of_lt h.2))
    simp only [evalFunc1] at hnum_pos ⊢
    linarith

/-- Helper: For decreasing functions, the minimum is at the right endpoint -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90eb9080a8009f35dc347d504f36f46b6c4cdfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
