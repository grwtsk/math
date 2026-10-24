# circleIntegral_div_sub_of_differentiable_on_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeddcf82-cf89-df3e-c9b4-f1160fcce91f",
  "kind": "theorem",
  "lexical_name": "circleIntegral_div_sub_of_differentiable_on_off_countable",
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
  "slug": "circleintegral-div-sub-of-differentiable-on-off-countable--e9811c45f820b13e4bfa3be8",
  "source": {
    "blob": "3fc29ec60293100cf20b491a6a6d36c593189173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9811c45f820b13e4bfa3be8066dd41c49c3a056c5be35e60d83e8ff2372031e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeddcf82-cf89-df3e-c9b4-f1160fcce91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_div_sub_of_differentiable_on_off_countable {R : ℝ} {c w : ℂ} {s : Set ℂ}
    (hs : s.Countable) (hw : w ∈ ball c R) {f : ℂ → ℂ} (hc : ContinuousOn f (closedBall c R))
    (hd : ∀ z ∈ ball c R \ s, DifferentiableAt ℂ f z) :
    (∮ z in C(c, R), f z / (z - w)) = 2 * π * I * f w := by
  simpa only [smul_eq_mul, div_eq_inv_mul] using
    circleIntegral_sub_inv_smul_of_differentiable_on_off_countable hs hw hc hd

/-- If `f : ℂ → E` is continuous on a closed ball of positive radius and is differentiable at all
but countably many points of the corresponding open ball, then it is analytic on the open ball with
coefficients of the power series given by Cauchy integral formulas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variantb7a318ed585ba2393636fd3beef1c3233ab0b7f884605bee623d75ea53326034.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc29ec60293100cf20b491a6a6d36c593189173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
