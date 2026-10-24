# integral_smul_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de612fc0-de6f-e833-152d-42ddbc4750c9",
  "kind": "theorem",
  "lexical_name": "integral_smul_measure",
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
  "slug": "integral-smul-measure--57a212ad096ac99234e1f4aa",
  "source": {
    "blob": "c106e503fa9c417660c266949e0ac67b7dc6f042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1582,
    "line": 1567,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a212ad096ac99234e1f4aab7f02178bc3ed86007c33a2b812dd1b75fb3c810",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de612fc0-de6f-e833-152d-42ddbc4750c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1567–1582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_smul_measure (f : α → G) (c : ℝ≥0∞) :
    ∫ x, f x ∂c • μ = c.toReal • ∫ x, f x ∂μ := by
  by_cases hG : CompleteSpace G; swap
  · simp [integral, hG]
  -- First we consider the “degenerate” case `c = ∞`
  rcases eq_or_ne c ∞ with (rfl | hc)
  · rw [ENNReal.top_toReal, zero_smul, integral_eq_setToFun, setToFun_top_smul_measure]
  -- Main case: `c ≠ ∞`
  simp_rw [integral_eq_setToFun, ← setToFun_smul_left]
  have hdfma : DominatedFinMeasAdditive μ (weightedSMul (c • μ) : Set α → G →L[ℝ] G) c.toReal :=
    mul_one c.toReal ▸ (dominatedFinMeasAdditive_weightedSMul (c • μ)).of_smul_measure c hc
  have hdfma_smul := dominatedFinMeasAdditive_weightedSMul (F := G) (c • μ)
  rw [← setToFun_congr_smul_measure c hc hdfma hdfma_smul f]
  exact setToFun_congr_left' _ _ (fun s _ _ => weightedSMul_smul_measure μ c) f
#align measure_theory.integral_smul_measure MeasureTheory.integral_smul_measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean#L1567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c106e503fa9c417660c266949e0ac67b7dc6f042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
