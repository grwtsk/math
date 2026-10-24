# LSeriesSummable_of_bounded_of_one_lt_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5834af01-e5d6-0b41-8b4b-e5b626f60343",
  "kind": "theorem",
  "lexical_name": "LSeriesSummable_of_bounded_of_one_lt_real",
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
  "slug": "lseriessummable-of-bounded-of-one-lt-real--f4b0bfb89722d6ca416a91b8",
  "source": {
    "blob": "60e79a400ae5d0ecf33ce34b57005118e6c6df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b0bfb89722d6ca416a91b867fc0c8e52574a89fb96f246e9fb7f67d3b5402b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5834af01-e5d6-0b41-8b4b-e5b626f60343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeriesSummable_of_bounded_of_one_lt_real {f : ArithmeticFunction ℂ} {m : ℝ}
    (h : ∀ n : ℕ, Complex.abs (f n) ≤ m) {z : ℝ} (hz : 1 < z) : f.LSeriesSummable z := by
  by_cases h0 : m = 0
  · subst h0
    have hf : f = 0 := ArithmeticFunction.ext fun n =>
      Complex.abs.eq_zero.1 (le_antisymm (h n) (Complex.abs.nonneg _))
    simp [hf]
  refine' summable_of_norm_bounded (fun n : ℕ => m / n ^ z) _ _
  · simp_rw [div_eq_mul_inv]
    exact (summable_mul_left_iff h0).2 (Real.summable_nat_rpow_inv.2 hz)
  · intro n
    have hm : 0 ≤ m := le_trans (Complex.abs.nonneg _) (h 0)
    cases' n with n
    · simp [hm, Real.zero_rpow (_root_.ne_of_gt (lt_trans Real.zero_lt_one hz))]
    simp only [map_div₀, Complex.norm_eq_abs]
    apply div_le_div hm (h _) (Real.rpow_pos_of_pos (Nat.cast_pos.2 n.succ_pos) _) (le_of_eq _)
    rw [Complex.abs_cpow_real, Complex.abs_cast_nat]
#align nat.arithmetic_function.l_series_summable_of_bounded_of_one_lt_real Nat.ArithmeticFunction.LSeriesSummable_of_bounded_of_one_lt_real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e79a400ae5d0ecf33ce34b57005118e6c6df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
