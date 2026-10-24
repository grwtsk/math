# fixture_support_cards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52da08a6-4a2b-e623-54a2-c20edc3ab67c",
  "kind": "theorem",
  "lexical_name": "fixture_support_cards",
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
  "slug": "fixture-support-cards--4403a5c9bcf0db330cccac14",
  "source": {
    "blob": "6c4e53cd992f4ab524a36388cf1b59279ea9dc62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant87841baacecc721e1132f72cfbba49bc3bf4784337309ca9aea6f2721446b0e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4403a5c9bcf0db330cccac1469a49e75943342fa03ced9619c0289efa0811450",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant87841baacecc721e1132f72cfbba49bc3bf4784337309ca9aea6f2721446b0e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52da08a6-4a2b-e623-54a2-c20edc3ab67c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_support_cards : fixtureInventory.card = 3 ∧
    ∀ i, (fixtureBlocks i).card = 2 := by
  have h12 : scaleOne ≠ scaleTwo := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleOne, scaleTwo] at this
  have h14 : scaleOne ≠ scaleFour := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleOne, scaleFour] at this
  have h24 : scaleTwo ≠ scaleFour := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleTwo, scaleFour] at this
  constructor
  · simp [fixtureInventory, h12, h14, h24]
  · intro i
    fin_cases i <;> simp [fixtureBlocks, h12, h24]

/-- Both actual chart blocks retain two support slots, including the overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant87841baacecc721e1132f72cfbba49bc3bf4784337309ca9aea6f2721446b0e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variant87841baacecc721e1132f72cfbba49bc3bf4784337309ca9aea6f2721446b0e9.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c4e53cd992f4ab524a36388cf1b59279ea9dc62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
