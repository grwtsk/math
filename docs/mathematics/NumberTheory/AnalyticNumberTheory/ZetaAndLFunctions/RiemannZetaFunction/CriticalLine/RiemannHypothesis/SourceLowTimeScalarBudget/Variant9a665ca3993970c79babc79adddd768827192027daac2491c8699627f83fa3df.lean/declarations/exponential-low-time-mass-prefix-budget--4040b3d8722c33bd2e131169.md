# exponential_low_time_mass_prefix_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7b81709a5b8cd874abba756b77686b56f7c95ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a665ca3993970c79babc79adddd768827192027daac2491c8699627f83fa3df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1113a5f2-4066-01d1-79b9-2caa37c46cda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:817c5d41-5fee-b4ae-dc1b-02baf998c39f",
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
  "slug": "exponential-low-time-mass-prefix-budget--4040b3d8722c33bd2e131169",
  "source": {
    "blob": "e7b81709a5b8cd874abba756b77686b56f7c95ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variant9a665ca3993970c79babc79adddd768827192027daac2491c8699627f83fa3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4040b3d8722c33bd2e1311693d818bb0e29dcbba731141bec6392fbf71da3600",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variant9a665ca3993970c79babc79adddd768827192027daac2491c8699627f83fa3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:817c5d41-5fee-b4ae-dc1b-02baf998c39f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–94.

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
  change 2 * (s - r) * (2 * u / s) ≤ 2
  rw [show 2 * (s - r) * (2 * u / s) = (4 * u * (s - r)) / s by ring]
  apply (div_le_iff₀ hs0).mpr
  exact hnum

/-- The inherited curvature coefficient is used, not recomputed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variant9a665ca3993970c79babc79adddd768827192027daac2491c8699627f83fa3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variant9a665ca3993970c79babc79adddd768827192027daac2491c8699627f83fa3df.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b81709a5b8cd874abba756b77686b56f7c95ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
