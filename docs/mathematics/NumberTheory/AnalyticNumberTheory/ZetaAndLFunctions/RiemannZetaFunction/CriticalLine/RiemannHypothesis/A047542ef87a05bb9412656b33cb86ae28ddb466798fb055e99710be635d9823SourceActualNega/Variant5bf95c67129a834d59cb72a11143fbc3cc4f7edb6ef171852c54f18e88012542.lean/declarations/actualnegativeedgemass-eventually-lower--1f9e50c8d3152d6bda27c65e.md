# actualNegativeEdgeMass_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0356c2dc-1a0a-3100-57e5-a399820e7254",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeMass_eventually_lower",
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
  "slug": "actualnegativeedgemass-eventually-lower--1f9e50c8d3152d6bda27c65e",
  "source": {
    "blob": "4c6df9679d31312703fcc3cf3e07320ab78a9b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9e50c8d3152d6bda27c65e49a210e41b418a7f1dca63c2d7c9328de248a330",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0356c2dc-1a0a-3100-57e5-a399820e7254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeMass_eventually_lower :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeConstant * Real.exp (2 * A) ≤
        ∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ) := by
  have ht (d : ℝ) : Tendsto (fun A : ℝ => 2 * A - d) atTop atTop := by
    apply tendsto_atTop.2
    intro b
    filter_upwards [eventually_ge_atTop ((b + d) / 2)] with A hA
    linarith
  have h12 := actualRelativePsiTimeError_tendsto_zero.comp (ht 12)
  have h13 := actualRelativePsiTimeError_tendsto_zero.comp (ht 13)
  have heq (A d : ℝ) :
      Chebyshev.psi (Real.exp (2 * A - d)) * Real.exp (-(2 * A)) =
        (actualRelativePsiTimeError (2 * A - d) + 1) * Real.exp (-d) := by
    unfold actualRelativePsiTimeError
    have hh : Real.exp (-(2 * A - d)) * Real.exp (-d) = Real.exp (-(2 * A)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    have hh' : Real.exp (2 * A - d) * Real.exp (-(2 * A)) = Real.exp (-d) := by
      rw [← Real.exp_add]
      congr 1
      ring
    simp only [add_mul, sub_mul, mul_assoc, hh, hh', one_mul]
    ring
  have he : (fun A : ℝ =>
      (Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13))) *
        Real.exp (-(2 * A))) = fun A : ℝ =>
      (actualRelativePsiTimeError (2 * A - 12) + 1) * Real.exp (-12) -
      (actualRelativePsiTimeError (2 * A - 13) + 1) * Real.exp (-13) := by
    funext A
    rw [sub_mul, heq A 12, heq A 13]
  have hl : Tendsto (fun A : ℝ =>
      (Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13))) *
        Real.exp (-(2 * A))) atTop (𝓝 (2 * actualNegativeEdgeConstant)) := by
    rw [he]
    convert ((h12.add_const 1).mul_const (Real.exp (-12))).sub
      ((h13.add_const 1).mul_const (Real.exp (-13))) using 1 <;>
      first | rfl | (unfold actualNegativeEdgeConstant; ring)
  have hev := hl.eventually (Ioi_mem_nhds
    (by linarith [actualNegativeEdgeConstant_pos] : actualNegativeEdgeConstant <
      2 * actualNegativeEdgeConstant))
  obtain ⟨R, hR⟩ := eventually_atTop.1 hev
  refine ⟨max 20000000000000 R, le_max_left _ _, ?_⟩
  intro A hA
  have hh := (hR A ((le_max_right _ _).trans hA)).le
  rw [Real.exp_neg, ← div_eq_mul_inv] at hh
  rw [actualNegativeEdgeMass_eq_psi]
  exact (le_div_iff₀ (Real.exp_pos _)).1 hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6df9679d31312703fcc3cf3e07320ab78a9b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
