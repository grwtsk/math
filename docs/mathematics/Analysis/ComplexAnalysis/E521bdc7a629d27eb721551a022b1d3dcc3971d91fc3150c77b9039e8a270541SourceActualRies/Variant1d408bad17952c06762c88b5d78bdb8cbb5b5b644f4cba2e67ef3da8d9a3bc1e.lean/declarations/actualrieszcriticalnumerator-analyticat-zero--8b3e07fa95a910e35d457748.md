# actualRieszCriticalNumerator_analyticAt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e3c240-09c0-4e2e-a9f0-5c86b7a5829f",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalNumerator_analyticAt_zero",
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
  "slug": "actualrieszcriticalnumerator-analyticat-zero--8b3e07fa95a910e35d457748",
  "source": {
    "blob": "69489b0347a55e99f66ff7ae6a54237fe422e298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant1d408bad17952c06762c88b5d78bdb8cbb5b5b644f4cba2e67ef3da8d9a3bc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b3e07fa95a910e35d457748d39c3287c38ce42539324998d42257cd83909679",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant1d408bad17952c06762c88b5d78bdb8cbb5b5b644f4cba2e67ef3da8d9a3bc1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e3c240-09c0-4e2e-a9f0-5c86b7a5829f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalNumerator_analyticAt_zero :
    AnalyticAt ℂ actualRieszCriticalNumerator 0 := by
  have hz : AnalyticAt ℂ riemannZeta (1 / 2 : ℂ) :=
    Zeta23.WeilEF.analyticAt_riemannZeta (by norm_num)
  have hl : AnalyticAt ℂ (logDeriv riemannZeta) (1 / 2 : ℂ) := by
    have heq : logDeriv riemannZeta =
        fun z : ℂ => deriv riemannZeta z / riemannZeta z := by
      funext z
      rw [logDeriv_apply]
    rw [heq]
    exact hz.deriv.div hz actual_zeta_half_ne_zero
  have hs : AnalyticAt ℂ (fun z : ℂ => 1 / 2 + z) 0 :=
    analyticAt_const.add analyticAt_id
  have hcomp : AnalyticAt ℂ (fun z : ℂ => logDeriv riemannZeta (1 / 2 + z)) 0 := by
    have hl' : AnalyticAt ℂ (logDeriv riemannZeta) ((fun z : ℂ => 1 / 2 + z) 0) := by
      simpa only [add_zero] using hl
    exact hl'.comp hs
  have hi : AnalyticAt ℂ (fun z : ℂ => 1 / (z - 1 / 2)) 0 :=
    analyticAt_const.div (analyticAt_id.sub analyticAt_const) (by norm_num)
  exact hcomp.neg.sub hi

/-- Both local numerator poles are removed by a genuine analytic extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant1d408bad17952c06762c88b5d78bdb8cbb5b5b644f4cba2e67ef3da8d9a3bc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant1d408bad17952c06762c88b5d78bdb8cbb5b5b644f4cba2e67ef3da8d9a3bc1e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69489b0347a55e99f66ff7ae6a54237fe422e298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
