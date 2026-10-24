# termTSum_hasDerivAt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0f33698-cf55-dd16-41d7-ee62d114fa37",
  "kind": "theorem",
  "lexical_name": "termTSum_hasDerivAt_one",
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
  "slug": "termtsum-hasderivat-one--1f2e1ebc0ceee7c5f14f0cf1",
  "source": {
    "blob": "34a71e0915119fdc462d0e768fa6c856dfa763e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2e1ebc0ceee7c5f14f0cf143f3a447c59a1fd50be6fee293ed382ed2085724",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f33698-cf55-dd16-41d7-ee62d114fa37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem termTSum_hasDerivAt_one :
    HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+
        ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant-1) 1 := by
  have h := termTSum_hasDerivAt (by norm_num : (1:ℝ)/2 < 1)
  simp_rw [termDerivValue_one] at h
  rw [tsum_neg,logCell_tsum] at h
  convert! h using 1
  ring

end ContinuousResearch.ActualStieltjesParameter

#print ContinuousResearch.ActualStieltjesParameter.cellKernel
#print axioms ContinuousResearch.ActualStieltjesParameter.cellKernel
#print ContinuousResearch.ActualStieltjesParameter.cellDerivative
#print axioms ContinuousResearch.ActualStieltjesParameter.cellDerivative
#print ContinuousResearch.ActualStieltjesParameter.derivativeMajorant
#print axioms ContinuousResearch.ActualStieltjesParameter.derivativeMajorant
#print ContinuousResearch.ActualStieltjesParameter.cellKernel_integrable
#print axioms ContinuousResearch.ActualStieltjesParameter.cellKernel_integrable
#print ContinuousResearch.ActualStieltjesParameter.cellDerivative_integrable
#print axioms ContinuousResearch.ActualStieltjesParameter.cellDerivative_integrable
#print ContinuousResearch.ActualStieltjesParameter.cellKernel_hasDerivAt
#print axioms ContinuousResearch.ActualStieltjesParameter.cellKernel_hasDerivAt
#print ContinuousResearch.ActualStieltjesParameter.cellDerivative_bound
#print axioms ContinuousResearch.ActualStieltjesParameter.cellDerivative_bound
#print ContinuousResearch.ActualStieltjesParameter.term_hasDerivAt
#print axioms ContinuousResearch.ActualStieltjesParameter.term_hasDerivAt
#print ContinuousResearch.ActualStieltjesParameter.term_hasDerivAt_one
#print axioms ContinuousResearch.ActualStieltjesParameter.term_hasDerivAt_one
#print ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_nonneg
#print axioms ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_nonneg
#print ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_le_pSeries
#print axioms ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_le_pSeries
#print ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_summable
#print axioms ContinuousResearch.ActualStieltjesParameter.derivativeMajorant_summable
#print ContinuousResearch.ActualStieltjesParameter.termDerivValue
#print axioms ContinuousResearch.ActualStieltjesParameter.termDerivValue
#print ContinuousResearch.ActualStieltjesParameter.termDerivValue_bound
#print axioms ContinuousResearch.ActualStieltjesParameter.termDerivValue_bound
#print ContinuousResearch.ActualStieltjesParameter.termDerivValue_one
#print axioms ContinuousResearch.ActualStieltjesParameter.termDerivValue_one
#print ContinuousResearch.ActualStieltjesParameter.termTSum_hasDerivAt
#print axioms ContinuousResearch.ActualStieltjesParameter.termTSum_hasDerivAt
#print ContinuousResearch.ActualStieltjesParameter.termTSum_hasDerivAt_one
#print axioms ContinuousResearch.ActualStieltjesParameter.termTSum_hasDerivAt_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Varianta78d3663420f2ab0894944434ed9b32bdc79a1628d609dd6b8b3e1878405ee31.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a71e0915119fdc462d0e768fa6c856dfa763e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
