# analyticOrderAt_invGammaℝ_one_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc77b53f-b0ba-fd41-c708-87e1ab33b0aa",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_invGammaℝ_one_sub_one",
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
  "slug": "analyticorderat-invgamma-one-sub-one--2b6c84a4ea3963405102bd3b",
  "source": {
    "blob": "cd7e7663cb813ea13eff8dc9ba4aacf777775a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 155,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b6c84a4ea3963405102bd3bddb7c5d0baa656d57dc95cc57abdce5907d8f87c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc77b53f-b0ba-fd41-c708-87e1ab33b0aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderAt_invGammaℝ_one_sub_one : analyticOrderAt (fun s => invGammaℝ (1 - s)) 1 = 1 := by
  have hg : AnalyticAt ℂ (fun z : ℂ => 1 - z) 1 := analyticAt_const.sub analyticAt_id
  have hg' : deriv (fun z : ℂ => 1 - z) 1 ≠ 0 := by rw [deriv_const_sub]; simp
  have := analyticOrderAt_comp_of_deriv_ne_zero (f := invGammaℝ) hg hg'
  simp only [Function.comp_def, sub_self] at this
  rw [this, analyticOrderAt_invGammaℝ_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7e7663cb813ea13eff8dc9ba4aacf777775a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
