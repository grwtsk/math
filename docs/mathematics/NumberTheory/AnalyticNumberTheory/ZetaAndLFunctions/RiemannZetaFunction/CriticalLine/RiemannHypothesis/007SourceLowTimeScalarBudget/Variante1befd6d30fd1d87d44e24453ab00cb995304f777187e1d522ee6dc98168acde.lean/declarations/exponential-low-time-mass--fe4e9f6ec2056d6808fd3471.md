# exponential_low_time_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a59555e-2b94-d299-8730-fe41ee6c155e",
  "kind": "theorem",
  "lexical_name": "exponential_low_time_mass",
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
  "slug": "exponential-low-time-mass--fe4e9f6ec2056d6808fd3471",
  "source": {
    "blob": "9cdb589499d1280237a86c9a259930ba91cdf4e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe4e9f6ec2056d6808fd34711dfed2f02cf547063bc9010fca5ca9f63a7bc14c",
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

Occurrence: `result:3a59555e-2b94-d299-8730-fe41ee6c155e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_low_time_mass (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) =
      2 * (Real.sqrt ((U + 1 : ℕ) : ℝ) - Real.sqrt (U : ℝ)) := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have ha0 : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  rw [intervalIntegral.integral_comp_div (f := Real.exp) (by norm_num : (2 : ℝ) ≠ 0),
    _root_.integral_exp]
  simp only [smul_eq_mul, Real.exp_half, Real.exp_log ha0, Real.exp_log hU0]

/-- The exact strip mass absorbs the actual centered-prefix and cell-mass factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cdb589499d1280237a86c9a259930ba91cdf4e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
