# actual_second_atom_uniform_negative_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:312f9891-696e-a529-11f9-c3a9df51da10",
  "kind": "theorem",
  "lexical_name": "actual_second_atom_uniform_negative_margin",
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
  "slug": "actual-second-atom-uniform-negative-margin--a31fa7d27b6f41bc17d7dd41",
  "source": {
    "blob": "76083cf523bad17925661fa7d2d66591ae3855ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a31fa7d27b6f41bc17d7dd41258a8761f5c85d3126a7ae1ddffbcf4748b6c29b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:312f9891-696e-a529-11f9-c3a9df51da10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_atom_uniform_negative_margin {A : ℝ} (hA : 8 ≤ A) :
    actualAtom A 2 < -31 / 576 := by
  have hl : Real.log (2 : ℝ) < 3 / 4 := by linarith [Real.log_two_lt_d9]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hc := actual_correlation_positive_on_two_log_width hA
    (t := Real.log 2) (by rw [abs_of_nonneg hl0]; linarith)
  have hprod := mul_le_mul_of_nonpos_left hc (by linarith : Real.log (2 : ℝ) - 1 ≤ 0)
  have hs : Real.sqrt (2 : ℝ) < 3 / 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2), Real.sqrt_nonneg (2 : ℝ)]
  unfold actualAtom
  rw [centeredMangoldt_apply (by norm_num : 2 ≤ 2),
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  norm_num only [Nat.cast_ofNat]
  apply (div_lt_iff₀ (by positivity : 0 < Real.sqrt (2 : ℝ))).mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeIncidenceResidualBudget/Variant052a09ef7bf91fa71378c42f86517a96e641f928b9cb7ac11f360816b5b217da.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76083cf523bad17925661fa7d2d66591ae3855ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
