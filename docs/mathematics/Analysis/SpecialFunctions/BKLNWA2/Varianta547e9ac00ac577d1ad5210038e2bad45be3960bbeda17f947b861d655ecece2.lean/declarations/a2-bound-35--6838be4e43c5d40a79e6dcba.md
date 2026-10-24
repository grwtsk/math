# a2_bound_35

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
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a76f784c-35ec-ff9b-a2e4-6c1e990c0de1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b123e206-2a8f-7966-e1d0-08a8e4ecec95",
  "kind": "theorem",
  "lexical_name": "a2_bound_35",
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
  "slug": "a2-bound-35--6838be4e43c5d40a79e6dcba",
  "source": {
    "blob": "f7193ec12e254dffb2ccb9fc970b2fbc5615b31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6838be4e43c5d40a79e6dcba7d5d761d778606e38860121fb4dc39dae28c5831",
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

Occurrence: `result:b123e206-2a8f-7966-e1d0-08a8e4ecec95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a2_bound_35 :
    (1.07086 : ℝ) ≤ (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-35/12) + exp (-14/3) + exp (-35/6) + exp (-20/3) + exp (-175/24) + exp (-70/9) + exp (-49/6) + exp (-280/33) + exp (-35/4) + exp (-350/39) + exp (-55/6) + exp (-28/3) + exp (-455/48) + exp (-490/51) + exp (-175/18) + exp (-560/57) + exp (-119/12) + exp (-10) + exp (-665/66) + exp (-700/69) + exp (-245/24) + exp (-154/15) + exp (-805/78) + exp (-280/27) + exp (-125/12) + exp (-910/87) + exp (-21/2) + exp (-980/93) + exp (-1015/96) + exp (-350/33) + exp (-1085/102) + exp (-32/3) + exp (-385/36) + exp (-1190/111) + exp (-1225/114) + exp (-140/13) + exp (-259/24) + exp (-1330/123) + exp (-65/6) + exp (-1400/129) + exp (-1435/132) + exp (-98/9) + exp (-1505/138) + exp (-1540/141) + exp (-175/16) + exp (-230/21) + exp (-329/30)) ∧
    (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-35/12) + exp (-14/3) + exp (-35/6) + exp (-20/3) + exp (-175/24) + exp (-70/9) + exp (-49/6) + exp (-280/33) + exp (-35/4) + exp (-350/39) + exp (-55/6) + exp (-28/3) + exp (-455/48) + exp (-490/51) + exp (-175/18) + exp (-560/57) + exp (-119/12) + exp (-10) + exp (-665/66) + exp (-700/69) + exp (-245/24) + exp (-154/15) + exp (-805/78) + exp (-280/27) + exp (-125/12) + exp (-910/87) + exp (-21/2) + exp (-980/93) + exp (-1015/96) + exp (-350/33) + exp (-1085/102) + exp (-32/3) + exp (-385/36) + exp (-1190/111) + exp (-1225/114) + exp (-140/13) + exp (-259/24) + exp (-1330/123) + exp (-65/6) + exp (-1400/129) + exp (-1435/132) + exp (-98/9) + exp (-1505/138) + exp (-1540/141) + exp (-175/16) + exp (-230/21) + exp (-329/30)) ≤ (1.07086 : ℝ) + (1:ℝ) / 10^5 := by
  constructor
  · have h1 := a2_lower_35_part1
    have h2 := a2_lower_35_part2
    have h3 := a2_lower_35_part3
    have h4 := a2_lower_35_part4
    linarith
  · have h1 := a2_upper_35_part1
    have h2 := a2_upper_35_part2
    have h3 := a2_upper_35_part3
    have h4 := a2_upper_35_part4
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7193ec12e254dffb2ccb9fc970b2fbc5615b31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
