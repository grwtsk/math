# integral_D1trunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3237f9e8-b424-ace9-ad62-3e425454fad7",
  "kind": "theorem",
  "lexical_name": "integral_D1trunc",
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
  "slug": "integral-d1trunc--bc2e0e8e62aa6727ef4c06e4",
  "source": {
    "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 309,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2e0e8e62aa6727ef4c06e456b5635e5e008ead53c3dd0628bfdb83fbe98228",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3237f9e8-b424-ace9-ad62-3e425454fad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_D1trunc (K : ℕ) (s : ℝ) :
    ∫ u in (0:ℝ)..s, D1trunc K u
      = s ^ 2 / 2 - 4 * s ^ 3 / 3 + ∑ k ∈ Finset.range K, D1coeff k * s ^ (2 * k + 4) / (2 * k + 4) := by
  have hint : ∀ k, IntervalIntegrable (fun u => D1term k u) MeasureTheory.volume 0 s := fun k => by
    unfold D1term; exact (continuous_const.mul (continuous_pow _)).intervalIntegrable _ _
  simp only [D1trunc_eq]
  rw [intervalIntegral.integral_add, intervalIntegral.integral_sub, intervalIntegral.integral_finset_sum]
  · simp only [integral_D1term, integral_id, intervalIntegral.integral_const_mul, integral_pow]
    norm_num
    ring
  · intro k _; exact hint k
  · exact continuous_id.intervalIntegrable _ _
  · exact (continuous_const.mul (continuous_pow 2)).intervalIntegrable _ _
  · exact (continuous_id.intervalIntegrable _ _).sub
      ((continuous_const.mul (continuous_pow 2)).intervalIntegrable _ _)
  · exact (continuous_finset_sum _ fun k _ =>
      (continuous_const.mul (continuous_pow _))).intervalIntegrable _ _

/-- **uniform diagonal-law main term:** for s ∈ [0,1],
|∫₀ˢ D₁ − ∫₀ˢ D1trunc K| ≤ Σ_{k≥K} D1coeff k  (→ 0), with ∫₀ˢ D1trunc K explicit above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
