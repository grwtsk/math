# exponential_first_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d053fe8e-b14e-ae52-4165-225e1ceed23a",
  "kind": "theorem",
  "lexical_name": "exponential_first_moment",
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
  "slug": "exponential-first-moment--e5a441a12f84e2f8c01925ac",
  "source": {
    "blob": "63995a0fbbc27ea0578ae6ebc9c726e9acb3f1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Varianta2f6ba1d5b854e60a63327e6143fe467e6c79e6a5256fba9e20a2d67d7dd2429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a441a12f84e2f8c01925ac38dc00510586d7cd764fe34dcb826e327b2f2628",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Varianta2f6ba1d5b854e60a63327e6143fe467e6c79e6a5256fba9e20a2d67d7dd2429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d053fe8e-b14e-ae52-4165-225e1ceed23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exponential_first_moment (lam t : ℝ) (hlam : lam ≠ 0) :
    (∫ r in 0..t, r * Real.exp (lam * (r - t))) =
      t / lam - (1 - Real.exp (-lam * t)) / lam ^ 2 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => (r / lam - 1 / lam ^ 2) * Real.exp (lam * (r - t)))
      (r * Real.exp (lam * (r - t))) r := by
    have he := (((hasDerivAt_id r).div_const lam).sub_const (1 / lam ^ 2)).mul
      (exp_hasDerivAt lam t r)
    exact he.congr_deriv (by dsimp only [id_eq]; field_simp; ring)
  have hi : IntervalIntegrable (fun r : ℝ => r * Real.exp (lam * (r - t))) volume 0 t :=
    (by fun_prop : Continuous (fun r : ℝ => r * Real.exp (lam * (r - t)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi]
  simp only [sub_self, mul_zero, Real.exp_zero, zero_sub, zero_div, mul_one, mul_neg]
  rw [show -(lam * t) = -lam * t by ring]
  ring

/-- Actual Abel transport holds at every finite real time, with no asymptotic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Varianta2f6ba1d5b854e60a63327e6143fe467e6c79e6a5256fba9e20a2d67d7dd2429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Varianta2f6ba1d5b854e60a63327e6143fe467e6c79e6a5256fba9e20a2d67d7dd2429.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63995a0fbbc27ea0578ae6ebc9c726e9acb3f1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
