# completeXiTail_eq_log_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72efd83-4858-c1d0-69c5-6b30c345761e",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_log_pairing",
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
  "slug": "completexitail-eq-log-pairing--bc9e25a42c271407e9f3fbdb",
  "source": {
    "blob": "d50027f54a57f8936ea47a3e55b7cbcdb0f544d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9e25a42c271407e9f3fbdb9652ee74caa6845b41457e2d7e135882d2fb8e98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72efd83-4858-c1d0-69c5-6b30c345761e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_log_pairing (A : ℝ) :
    completeXiTail A = ∫ t in Real.log 7..2 * A,
      actualXiTailTimeDensity t * actualXiTailSourceTest A t := by
  let g := actualTransformedXiBlockDensity A
  have hd (r : ℝ) (_hr : r ∈ Ioo (min (Real.log 7) (2 * A))
      (max (Real.log 7) (2 * A))) :
      HasDerivAt Real.exp (Real.exp r) r := Real.hasDerivAt_exp r
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    Real.continuous_exp.continuousOn hd (fun r _ => (Real.exp_pos r).le) (g := g)
  have hh : (fun r => (g ∘ Real.exp) r * Real.exp r) =
      (fun r => actualXiTailTimeDensity r * actualXiTailSourceTest A r) := by
    funext r
    dsimp only [Function.comp_apply, g, actualTransformedXiBlockDensity,
      actualXiTailTimeDensity, actualXiTailSourceTest]
    rw [Real.rpow_def_of_pos (Real.exp_pos r), Real.log_exp]
    have hx : Real.exp r / Real.exp (r * (3 / 2 : ℝ)) = Real.exp (-r / 2) := by
      rw [← Real.exp_sub]
      congr 1
      ring
    calc
      _ = shiftedActualChebyshev (Real.exp r) *
          (Real.exp r / Real.exp (r * (3 / 2 : ℝ))) *
          (deriv (sourceCorrelation explicitSecondDerivative A) r -
            sourceCorrelation explicitSecondDerivative A r / 2) := by ring
      _ = _ := by rw [hx]
  rw [hh, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.symm

/-- Genuine Abel preserves the lower anchor and upper source jets before evaluating them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d50027f54a57f8936ea47a3e55b7cbcdb0f544d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
