# squarePrimitiveReadout_at_log_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2baf6461-0776-7855-e2ca-e116a028da5c",
  "kind": "theorem",
  "lexical_name": "squarePrimitiveReadout_at_log_seven",
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
  "slug": "squareprimitivereadout-at-log-seven--f2f2cd9a9ed1b80e997b1afc",
  "source": {
    "blob": "704733744fbdbb44bf635b538dede04b592216db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06SourceSquarePrimitiveBalance/Variant44e5b72c85b0a6016f0dae1a705457eac12e93e84f0dfba1160cea21692285e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f2cd9a9ed1b80e997b1afc8f51828dd6de622bef2d95274adafad55dd8582b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06SourceSquarePrimitiveBalance/Variant44e5b72c85b0a6016f0dae1a705457eac12e93e84f0dfba1160cea21692285e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2baf6461-0776-7855-e2ca-e116a028da5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrimitiveReadout_at_log_seven :
    squarePrimitiveReadout (Real.log 7) =
      Real.log 2 - 2 * Real.log 2 / Real.sqrt 7 := by
  have he : Real.exp (Real.log (7 : ℝ) / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  have hf : ⌊Real.sqrt (7 : ℝ)⌋₊ = 2 := by
    apply (Nat.floor_eq_iff (Real.sqrt_nonneg _)).mpr
    norm_num only [Nat.cast_ofNat]
    constructor <;> nlinarith [Real.sqrt_nonneg (7 : ℝ)]
  have hp : primeLogPrefix (Real.log 7 / 2) = Real.log 2 / 2 := by
    norm_num [primeLogPrefix, weightedPrime, primeCoefficient, he, hf,
      Finset.sum_Ioc_succ_top, Nat.prime_two]
  have hI : (Finset.Ioc 0 2).filter Nat.Prime = {2} := by decide
  have htheta : Chebyshev.theta (Real.exp (Real.log 7 / 2)) = Real.log 2 := by
    norm_num [Chebyshev.theta, he, hf, hI]
  unfold squarePrimitiveReadout
  rw [hp, htheta, show -Real.log (7 : ℝ) / 2 = -(Real.log 7 / 2) by ring,
    Real.exp_neg, he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06SourceSquarePrimitiveBalance/Variant44e5b72c85b0a6016f0dae1a705457eac12e93e84f0dfba1160cea21692285e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06SourceSquarePrimitiveBalance/Variant44e5b72c85b0a6016f0dae1a705457eac12e93e84f0dfba1160cea21692285e8.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704733744fbdbb44bf635b538dede04b592216db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
