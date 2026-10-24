# a2_bound_30

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
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bb7dbc7-bbcc-45b0-5f37-65b3fea8823a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65b615e8-33bf-5966-5e97-7a7019b09692",
  "kind": "theorem",
  "lexical_name": "a2_bound_30",
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
  "slug": "a2-bound-30--e8fbe2a30d8f2a7ab2f8a706",
  "source": {
    "blob": "f7193ec12e254dffb2ccb9fc970b2fbc5615b31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8fbe2a30d8f2a7ab2f8a70683069d72a3ea5a565f3a3ca6e59cd61421793162",
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

Occurrence: `result:65b615e8-33bf-5966-5e97-7a7019b09692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a2_bound_30 :
    (1.1210 : ℝ) ≤ (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-5/2) + exp (-4) + exp (-5) + exp (-40/7) + exp (-25/4) + exp (-20/3) + exp (-7) + exp (-80/11) + exp (-15/2) + exp (-100/13) + exp (-55/7) + exp (-8) + exp (-65/8) + exp (-140/17) + exp (-25/3) + exp (-160/19) + exp (-17/2) + exp (-60/7) + exp (-95/11) + exp (-200/23) + exp (-35/4) + exp (-44/5) + exp (-115/13) + exp (-80/9) + exp (-125/14) + exp (-260/29) + exp (-9) + exp (-280/31) + exp (-145/16) + exp (-100/11) + exp (-155/17) + exp (-64/7) + exp (-55/6) + exp (-340/37) + exp (-175/19) + exp (-120/13) + exp (-37/4) + exp (-380/41) + exp (-65/7) + exp (-400/43)) ∧
    (1 + 193571378 / (10:ℝ)^16) * (1 + exp (-5/2) + exp (-4) + exp (-5) + exp (-40/7) + exp (-25/4) + exp (-20/3) + exp (-7) + exp (-80/11) + exp (-15/2) + exp (-100/13) + exp (-55/7) + exp (-8) + exp (-65/8) + exp (-140/17) + exp (-25/3) + exp (-160/19) + exp (-17/2) + exp (-60/7) + exp (-95/11) + exp (-200/23) + exp (-35/4) + exp (-44/5) + exp (-115/13) + exp (-80/9) + exp (-125/14) + exp (-260/29) + exp (-9) + exp (-280/31) + exp (-145/16) + exp (-100/11) + exp (-155/17) + exp (-64/7) + exp (-55/6) + exp (-340/37) + exp (-175/19) + exp (-120/13) + exp (-37/4) + exp (-380/41) + exp (-65/7) + exp (-400/43)) ≤ (1.1210 : ℝ) + (1:ℝ) / 10^4 := by
  constructor
  · have h1 := a2_lower_30_part1
    have h2 := a2_lower_30_part2
    have h3 := a2_lower_30_part3
    have h4 := a2_lower_30_part4
    linarith
  · have h1 := a2_upper_30_part1
    have h2 := a2_upper_30_part2
    have h3 := a2_upper_30_part3
    have h4 := a2_upper_30_part4
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2/Varianta547e9ac00ac577d1ad5210038e2bad45be3960bbeda17f947b861d655ecece2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7193ec12e254dffb2ccb9fc970b2fbc5615b31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
