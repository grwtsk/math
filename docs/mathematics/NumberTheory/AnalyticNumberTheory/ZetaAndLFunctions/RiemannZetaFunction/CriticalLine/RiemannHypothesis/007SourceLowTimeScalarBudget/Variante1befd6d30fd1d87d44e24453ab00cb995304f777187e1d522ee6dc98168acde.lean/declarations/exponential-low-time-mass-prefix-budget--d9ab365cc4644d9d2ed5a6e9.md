# exponential_low_time_mass_prefix_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf69e4f6-216f-9064-5d9a-a91c156d7e34",
  "kind": "theorem",
  "lexical_name": "exponential_low_time_mass_prefix_budget",
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
  "slug": "exponential-low-time-mass-prefix-budget--d9ab365cc4644d9d2ed5a6e9",
  "source": {
    "blob": "9cdb589499d1280237a86c9a259930ba91cdf4e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ab365cc4644d9d2ed5a6e91230b8094a574b2fa9f3e287b70750cbc6577fa7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf69e4f6-216f-9064-5d9a-a91c156d7e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_low_time_mass_prefix_budget (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
      (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) ≤ 2 := by
  rw [exponential_low_time_mass U hU]
  let u : ℝ := U
  let r := Real.sqrt u
  let s := Real.sqrt (u + 1)
  have hu : 1 ≤ u := by dsimp only [u]; exact_mod_cast hU
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hs0 : 0 < s := Real.sqrt_pos.mpr (by linarith)
  have hrs : r ≤ s := Real.sqrt_le_sqrt (by linarith)
  have hr2 : r ^ 2 = u := Real.sq_sqrt (by linarith)
  have hs2 : s ^ 2 = u + 1 := Real.sq_sqrt (by linarith)
  have hsr : (s - r) * (s + r) = 1 := by nlinarith
  have hprod : u ≤ s * r := by nlinarith [mul_le_mul_of_nonneg_right hrs hr0]
  have hden : 2 * u ≤ s * (s + r) := by nlinarith
  have hsum : 0 < s + r := by linarith
  have hnum : 4 * u * (s - r) ≤ 2 * s := by
    apply le_of_mul_le_mul_right (a := s + r) _ hsum
    calc
      (4 * u * (s - r)) * (s + r) = 4 * u := by rw [mul_assoc, hsr]; ring
      _ ≤ (2 * s) * (s + r) := by nlinarith
  simp only [Nat.cast_add, Nat.cast_one]
  change 2 * (s - r) * (2 * u / s) ≤ 2
  rw [show 2 * (s - r) * (2 * u / s) = (4 * u * (s - r)) / s by ring]
  apply (div_le_iff₀ hs0).mpr
  exact hnum

/-- The inherited curvature coefficient is used, not recomputed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cdb589499d1280237a86c9a259930ba91cdf4e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
