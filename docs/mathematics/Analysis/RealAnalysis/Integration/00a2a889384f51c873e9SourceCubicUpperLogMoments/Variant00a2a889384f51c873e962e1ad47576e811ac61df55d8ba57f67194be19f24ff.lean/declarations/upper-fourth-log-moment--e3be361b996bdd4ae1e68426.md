# upper_fourth_log_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce2d52f630ec274745be9552a44092446177056f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0f85533-ddec-8fa4-3418-d9447cfd0c13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0900390c-63a9-14c3-d2aa-75a48fa67ca2",
  "kind": "theorem",
  "lexical_name": "upper_fourth_log_moment",
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
  "slug": "upper-fourth-log-moment--e3be361b996bdd4ae1e68426",
  "source": {
    "blob": "ce2d52f630ec274745be9552a44092446177056f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3be361b996bdd4ae1e68426eb20d686824436f9d8c510fa58e2bfb816a478e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0900390c-63a9-14c3-d2aa-75a48fa67ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_fourth_log_moment :
    (∫ u in Ioi (1 : ℝ), u ^ (-(3 : ℝ) / 2) * (Real.log u) ^ 4) = 768 := by
  change (∫ u in Ioi (1 : ℝ), upperLogWeight 4 u) = _
  rw [upperLogWeight_integral]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce2d52f630ec274745be9552a44092446177056f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
