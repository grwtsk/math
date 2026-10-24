# sourceColumnTimeDeriv_sub_eq_neg_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9781e22-5380-739a-7d66-ef3df5a9ffd8",
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
  "slug": "sourcecolumntimederiv-sub-eq-neg-cell--070cea8dd433565d3d64f70b",
  "source": {
    "blob": "b39912992012e079f02aeda53f5536a676c14c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt02/Variante80fbf1317b35a71acd00c965f6cbfffcf312e6acc2b7d0927afe53992b242df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070cea8dd433565d3d64f70b4a9d8558db7969f38176889c298703af18dde246",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt02/Variante80fbf1317b35a71acd00c965f6cbfffcf312e6acc2b7d0927afe53992b242df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9781e22-5380-739a-7d66-ef3df5a9ffd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceColumnTimeDeriv_sub_eq_neg_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1) =
      -(∫ u in k..(k + 1), mixedDensity A t u) := by
  have hab : k ≤ k + 1 := le_add_of_nonneg_right (by norm_num)
  have hc : ContinuousOn (sourceColumnTimeDeriv A t) (Icc k (k + 1)) := by
    intro u hu
    exact ((sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans_le hu.1) t).continuousAt).continuousWithinAt
  have hi := (mixedDensity_continuousOn_cell hA hk t).intervalIntegrable_of_Icc hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hc
    (fun u hu => sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans hu.1) t) hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt02/Variante80fbf1317b35a71acd00c965f6cbfffcf312e6acc2b7d0927afe53992b242df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt02/Variante80fbf1317b35a71acd00c965f6cbfffcf312e6acc2b7d0927afe53992b242df.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39912992012e079f02aeda53f5536a676c14c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
