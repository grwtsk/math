# a2_bound_43

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7193ec12e254dffb2ccb9fc970b2fbc5615b31e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49662b20-d969-2266-3a0e-edb2cf9d9d00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fb30619-8794-763e-e5bc-cd91be085d5a",
  "kind": "theorem",
  "lexical_name": "a2_bound_43",
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
  "slug": "a2-bound-43--3c1a59fa680c152d08efcc3d",
  "source": {
    "blob": "f7193ec12e254dffb2ccb9fc970b2fbc5615b31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 256,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c1a59fa680c152d08efcc3dafc358c23ee899079ce12bd11b2f244629763bdb",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb30619-8794-763e-e5bc-cd91be085d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a2_bound_43 :
    (1.03252 : ℝ) ≤ (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-43/12) + exp (-86/15) + exp (-43/6) + exp (-172/21) + exp (-215/24) + exp (-86/9) + exp (-301/30) + exp (-344/33) + exp (-43/4) + exp (-430/39) + exp (-473/42) + exp (-172/15) + exp (-559/48) + exp (-602/51) + exp (-215/18) + exp (-688/57) + exp (-731/60) + exp (-86/7) + exp (-817/66) + exp (-860/69) + exp (-301/24) + exp (-946/75) + exp (-989/78) + exp (-344/27) + exp (-1075/84) + exp (-1118/87) + exp (-129/10) + exp (-1204/93) + exp (-1247/96) + exp (-430/33) + exp (-1333/102) + exp (-1376/105) + exp (-473/36) + exp (-1462/111) + exp (-1505/114) + exp (-172/13) + exp (-1591/120) + exp (-1634/123) + exp (-559/42) + exp (-40/3) + exp (-1763/132) + exp (-602/45) + exp (-1849/138) + exp (-1892/141) + exp (-215/16) + exp (-1978/147) + exp (-2021/150) + exp (-688/51) + exp (-2107/156) + exp (-2150/159) + exp (-731/54) + exp (-2236/165) + exp (-2279/168) + exp (-258/19) + exp (-2365/174) + exp (-2408/177) + exp (-817/60) + exp (-2494/183) + exp (-2537/186)) ∧
    (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-43/12) + exp (-86/15) + exp (-43/6) + exp (-172/21) + exp (-215/24) + exp (-86/9) + exp (-301/30) + exp (-344/33) + exp (-43/4) + exp (-430/39) + exp (-473/42) + exp (-172/15) + exp (-559/48) + exp (-602/51) + exp (-215/18) + exp (-688/57) + exp (-731/60) + exp (-86/7) + exp (-817/66) + exp (-860/69) + exp (-301/24) + exp (-946/75) + exp (-989/78) + exp (-344/27) + exp (-1075/84) + exp (-1118/87) + exp (-129/10) + exp (-1204/93) + exp (-1247/96) + exp (-430/33) + exp (-1333/102) + exp (-1376/105) + exp (-473/36) + exp (-1462/111) + exp (-1505/114) + exp (-172/13) + exp (-1591/120) + exp (-1634/123) + exp (-559/42) + exp (-40/3) + exp (-1763/132) + exp (-602/45) + exp (-1849/138) + exp (-1892/141) + exp (-215/16) + exp (-1978/147) + exp (-2021/150) + exp (-688/51) + exp (-2107/156) + exp (-2150/159) + exp (-731/54) + exp (-2236/165) + exp (-2279/168) + exp (-258/19) + exp (-2365/174) + exp (-2408/177) + exp (-817/60) + exp (-2494/183) + exp (-2537/186)) ≤ (1.03252 : ℝ) + (1:ℝ) / 10^5 := by
  constructor
  · have h1 := a2_lower_43_part1
    have h2 := a2_lower_43_part2
    have h3 := a2_lower_43_part3
    have h4 := a2_lower_43_part4
    have h5 := a2_lower_43_part5
    linarith
  · have h1 := a2_upper_43_part1
    have h2 := a2_upper_43_part2
    have h3 := a2_upper_43_part3
    have h4 := a2_upper_43_part4
    have h5 := a2_upper_43_part5
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7193ec12e254dffb2ccb9fc970b2fbc5615b31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
