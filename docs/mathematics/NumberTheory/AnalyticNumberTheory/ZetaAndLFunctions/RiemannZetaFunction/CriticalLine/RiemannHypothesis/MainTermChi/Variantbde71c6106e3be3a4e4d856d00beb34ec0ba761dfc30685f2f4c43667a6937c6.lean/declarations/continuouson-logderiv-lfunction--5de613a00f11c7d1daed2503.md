# continuousOn_logDeriv_LFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8f3eb3c-0f7b-1367-1081-91e68cc743f5",
  "kind": "lemma",
  "lexical_name": "continuousOn_logDeriv_LFunction",
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
  "slug": "continuouson-logderiv-lfunction--5de613a00f11c7d1daed2503",
  "source": {
    "blob": "6140043765504284b68ec21dfd2c5dd00c05a4ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de613a00f11c7d1daed25039e5f9b179ba08be246df5cd358d20e4e3847ff56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f3eb3c-0f7b-1367-1081-91e68cc743f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_logDeriv_LFunction (hχ1 : χ ≠ 1) {S : Set ℂ}
    (hS : ∀ s ∈ S, χ.LFunction s ≠ 0) : ContinuousOn (logDeriv χ.LFunction) S := by
  intro s hs
  apply ContinuousAt.continuousWithinAt
  have hd : DifferentiableAt ℂ χ.LFunction s := differentiable_LFunction hχ1 s
  have hderiv : ContinuousAt (deriv χ.LFunction) s := by
    have : AnalyticAt ℂ χ.LFunction s := (differentiable_LFunction hχ1).analyticAt s
    exact (this.deriv).continuousAt
  exact (hderiv.div (hd.continuousAt) (hS s hs))

set_option maxHeartbeats 800000 in
/-- the half-contour split: logDeriv Λ_sym = logDeriv L + logDeriv arch along L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6140043765504284b68ec21dfd2c5dd00c05a4ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
