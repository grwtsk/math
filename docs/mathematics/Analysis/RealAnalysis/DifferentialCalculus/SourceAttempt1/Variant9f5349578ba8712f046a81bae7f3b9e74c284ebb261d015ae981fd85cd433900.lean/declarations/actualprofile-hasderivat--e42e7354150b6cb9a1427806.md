# actualProfile_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "398355f0d447fb854e2007c292367bc7ecef7da7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e10be615-6c05-704b-3fd0-6d5e562d5c75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40e3504f-2820-ee7f-7cb5-452d52be4f3e",
  "kind": "theorem",
  "lexical_name": "actualProfile_hasDerivAt",
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
  "slug": "actualprofile-hasderivat--e42e7354150b6cb9a1427806",
  "source": {
    "blob": "398355f0d447fb854e2007c292367bc7ecef7da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42e7354150b6cb9a1427806b210def4b1ea2363ac688ff045702f3ccb0ee0b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40e3504f-2820-ee7f-7cb5-452d52be4f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_hasDerivAt {x : ℝ} (hx : -2 < x) : HasDerivAt P (firstSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  have h := hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (max |l| |u| / (2 * lowerCoefficient l))) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ pairedTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ firstTerm_bound hl hy n) hmem
    (ContinuousResearch.CompensatedGammaProfile.term_summable hx) hmem
  apply h.congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    exact (ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum hy).symm
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant9f5349578ba8712f046a81bae7f3b9e74c284ebb261d015ae981fd85cd433900.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398355f0d447fb854e2007c292367bc7ecef7da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
