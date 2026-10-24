# sourceColumnTimeDeriv_hasDerivAt_u

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e687c07dc5e027bbd55315daf00c5817fff5567",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:023865a2-8f97-2873-bfcf-edc8eabd4a16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62136583-ff12-1817-9e38-4f5505b145ac",
  "kind": "theorem",
  "lexical_name": "sourceColumnTimeDeriv_hasDerivAt_u",
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
  "slug": "sourcecolumntimederiv-hasderivat-u--9f391595d63e17b6c319b03d",
  "source": {
    "blob": "8e687c07dc5e027bbd55315daf00c5817fff5567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f391595d63e17b6c319b03db8f96bd603a642428b0e2c86fe44e57f1de8a630",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62136583-ff12-1817-9e38-4f5505b145ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceColumnTimeDeriv_hasDerivAt_u
    {A u : ℝ} (hA : 0 < A) (hu : 0 < u) (t : ℝ) :
    HasDerivAt (sourceColumnTimeDeriv A t) (mixedDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1 <;> try rfl
  simpa only [mixedDensity, zero_mul, zero_sub, one_div, Function.comp_apply,
    Pi.mul_apply, Pi.div_apply, Pi.add_apply] using
      (column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7792b41645476af5636eSourceActualMixedWorkEnvelope/Variant7792b41645476af5636e39b6eb90d74fd439585509f853eb8a97b09719ca6775.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e687c07dc5e027bbd55315daf00c5817fff5567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
