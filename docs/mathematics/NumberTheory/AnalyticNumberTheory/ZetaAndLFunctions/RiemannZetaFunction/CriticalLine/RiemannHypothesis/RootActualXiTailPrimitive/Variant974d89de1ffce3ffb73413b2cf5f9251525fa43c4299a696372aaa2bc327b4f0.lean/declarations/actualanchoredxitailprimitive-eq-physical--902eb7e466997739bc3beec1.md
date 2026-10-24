# actualAnchoredXiTailPrimitive_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d167c1-2b59-a29b-f912-1f032a29118d",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_eq_physical",
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
  "slug": "actualanchoredxitailprimitive-eq-physical--902eb7e466997739bc3beec1",
  "source": {
    "blob": "24f26a1fa9b3f9c6538d90e3acee2decc6eea49f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:902eb7e466997739bc3beec1a8b8bed69fe25ec12a54eff35df710864fdebd76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d167c1-2b59-a29b-f912-1f032a29118d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_eq_physical (t : ℝ) :
    actualAnchoredXiTailPrimitive t =
      ∫ y in (7 : ℝ)..Real.exp t, shiftedActualChebyshev y / y ^ (3 / 2 : ℝ) := by
  let g : ℝ → ℝ := fun y => shiftedActualChebyshev y / y ^ (3 / 2 : ℝ)
  have hd (r : ℝ) (_hr : r ∈ Ioo (min (Real.log 7) t) (max (Real.log 7) t)) :
      HasDerivAt Real.exp (Real.exp r) r := Real.hasDerivAt_exp r
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    Real.continuous_exp.continuousOn hd (fun r _ => (Real.exp_pos r).le) (g := g)
  have hh : (fun r => (g ∘ Real.exp) r * Real.exp r) = actualXiTailTimeDensity := by
    funext r
    dsimp only [Function.comp_apply, g, actualXiTailTimeDensity]
    rw [Real.rpow_def_of_pos (Real.exp_pos r), Real.log_exp]
    have hx : Real.exp r / Real.exp (r * (3 / 2 : ℝ)) = Real.exp (-r / 2) := by
      rw [← Real.exp_sub]
      congr 1
      ring
    calc
      _ = shiftedActualChebyshev (Real.exp r) *
          (Real.exp r / Real.exp (r * (3 / 2 : ℝ))) := by ring
      _ = _ := by rw [hx]
  rw [hh, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he

/-- The actual lower anchor is exactly zero, including its closed prime-seven atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f26a1fa9b3f9c6538d90e3acee2decc6eea49f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
