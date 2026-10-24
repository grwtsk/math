# integral_exp_neg_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64c94ce-d363-07bf-fd6c-35ba479a6431",
  "kind": "theorem",
  "lexical_name": "integral_exp_neg_mul",
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
  "slug": "integral-exp-neg-mul--2fab92e9fc196809cb8fa9ef",
  "source": {
    "blob": "1c897fb5cce4c4c0f77fdc2e7464b99bd71911b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 20,
    "path": "GRWTSK/Analysis/Integration/ExponentialInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fab92e9fc196809cb8fa9ef586d574add14ea2179590bd3bd0b274c69b72081",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64c94ce-d363-07bf-fd6c-35ba479a6431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_neg_mul {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (-a * u)) =
      (Real.exp (-a * b) - Real.exp (-a * c)) / a := by
  have hd (u : ℝ) : HasDerivAt
      (fun x : ℝ => -(Real.exp ((-a) * x)) / a)
      (Real.exp ((-a) * u)) u := by
    have hg : HasDerivAt (fun x : ℝ => (-a) * x) (-a) u :=
      by simpa only [id_eq, mul_one] using (hasDerivAt_id u).const_mul (-a)
    have hder : -(Real.exp ((-a) * u) * (-a)) / a =
        Real.exp ((-a) * u) := by
      field_simp [ha]
    simpa only [Pi.neg_apply, hder] using hg.exp.neg.div_const a
  have hi : IntervalIntegrable (fun u : ℝ => Real.exp (-a * u)) volume b c :=
    (Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).intervalIntegrable b c
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  field_simp [ha]
  ring

/-- The oriented finite-interval integral of a real exponential with nonzero
rate.  This sign-neutral form is convenient when the rate is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/ExponentialInterval.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c897fb5cce4c4c0f77fdc2e7464b99bd71911b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
