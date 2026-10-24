# sourceColumnTimeDeriv_sub_eq_neg_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b37d92d7-691f-eb36-93bd-115b3300984f",
  "kind": "theorem",
  "lexical_name": "sourceColumnTimeDeriv_sub_eq_neg_cell",
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
  "slug": "sourcecolumntimederiv-sub-eq-neg-cell--aa13051544fdf984d8791492",
  "source": {
    "blob": "7de443f0c6a393064d6ace4f6cc949e86af27d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa13051544fdf984d8791492a7549d336b8ababfa0b31071d57c9d688a57f133",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37d92d7-691f-eb36-93bd-115b3300984f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceColumnTimeDeriv_sub_eq_neg_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1) =
      -(∫ u in k..(k + 1), mixedDensity A t u) := by
  have hab : k ≤ k + 1 := le_add_of_nonneg_right (by norm_num)
  have hc : ContinuousOn (sourceColumnTimeDeriv A t) (Icc k (k + 1)) := by
    intro u hu
    exact
      ((sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans_le hu.1) t).continuousAt).continuousWithinAt
  have hi : IntervalIntegrable (mixedDensity A t) (volume : Measure ℝ) k (k + 1) :=
    (mixedDensity_continuousOn_cell hA hk t).intervalIntegrable_of_Icc hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hc
    (fun u hu => sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans hu.1) t) hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de443f0c6a393064d6ace4f6cc949e86af27d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
