# thetaTail_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb640a6949c9973fac4c121febfe0fc3fd72d834",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e911b8e6-e94a-50cf-6753-450adaac02af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:322a4a03-9177-faaf-4949-7b717d488b42",
  "kind": "theorem",
  "lexical_name": "thetaTail_measurable",
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
  "slug": "thetatail-measurable--6d3f51391a8d74b9b03305fe",
  "source": {
    "blob": "cb640a6949c9973fac4c121febfe0fc3fd72d834",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3f51391a8d74b9b03305fed0d8559f6c8257553ef9ce927ded9b77b29c636b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322a4a03-9177-faaf-4949-7b717d488b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_measurable : Measurable thetaTail := by
  have hm : Measurable (fun p : ℝ × ℝ => if p.1 < p.2 then thetaLogError p.2 else 0) :=
    Measurable.ite (measurableSet_lt measurable_fst measurable_snd)
      (thetaLogError_measurable.comp measurable_snd) measurable_const
  have hi := hm.stronglyMeasurable.integral_prod_right' (ν := (volume : Measure ℝ))
  have he (u : ℝ) : (∫ v : ℝ, if u < v then thetaLogError v else 0) = thetaTail u := by
    change (∫ v : ℝ, (Ioi u).indicator thetaLogError v) = _
    exact integral_indicator measurableSet_Ioi
  convert hi.measurable using 1
  funext u
  exact (he u).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant43398942648f157fc6d40040a489c7dc5fd56b099016fe46c679f93327be5a44.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb640a6949c9973fac4c121febfe0fc3fd72d834` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
