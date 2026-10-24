# actual_covariant_ordinary_work_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f211e1e-f248-42ab-231c-22499fae7fc5",
  "kind": "theorem",
  "lexical_name": "actual_covariant_ordinary_work_kernel",
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
  "slug": "actual-covariant-ordinary-work-kernel--3668d42019cbca32274620e2",
  "source": {
    "blob": "ac4256d82b88cafefd09a0fc1796c99500edaffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant5f5398671e066ef11e7939a75c7e49a13abf7852d4ee81eb082986ba9479e714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3668d42019cbca32274620e2cc911a719e66da766b9284604324829f1abca0fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant5f5398671e066ef11e7939a75c7e49a13abf7852d4ee81eb082986ba9479e714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f211e1e-f248-42ab-231c-22499fae7fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_covariant_ordinary_work_kernel (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogMixedDensity A) t s =
      Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
  have h1 := (jet_hasDerivAt A hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (jet_hasDerivAt A hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hh := he.mul (h3.sub (h1.div_const 4))
  have hd : HasDerivAt (twistedTimeWork A t)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
            iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 +
              iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 8)) s := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, id_eq, Pi.sub_apply, Pi.neg_apply]
    ring
  have hf : (fun y => deriv (fun x => actualLogMixedDensity A x y) t -
      actualLogMixedDensity A t y / 2) = twistedTimeWork A t :=
    funext fun y => time_work_twisted A hA t y
  unfold covariantMixedDerivative
  rw [hf, time_work_twisted A hA t s, hd.deriv]
  unfold twistedTimeWork
  ring

/-- Its exact unconditional curvature budget retains the real exponential prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant5f5398671e066ef11e7939a75c7e49a13abf7852d4ee81eb082986ba9479e714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant5f5398671e066ef11e7939a75c7e49a13abf7852d4ee81eb082986ba9479e714.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4256d82b88cafefd09a0fc1796c99500edaffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
