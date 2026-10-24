# bracketProjection_is_not_source_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0c084b71a38f0fd3bc7ab22bec58ec1642915e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afad74e0-45a0-6589-dc95-ec8fcdf30aa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8d63170-c86d-9ee2-f406-a782a8db2788",
  "kind": "theorem",
  "lexical_name": "bracketProjection_is_not_source_complete",
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
  "slug": "bracketprojection-is-not-source-complete--e574bcad8248e60e3065362d",
  "source": {
    "blob": "f0c084b71a38f0fd3bc7ab22bec58ec1642915e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e574bcad8248e60e3065362d13824b467ec81addb293234eedbd94a733dba99c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8d63170-c86d-9ee2-f406-a782a8db2788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bracketProjection_is_not_source_complete :
    ∃ left right : SourceAnnotatedShape,
      left ≠ right ∧ left.binaryProjection = right.binaryProjection := by
  let forest : List OrderedSyntaxTree := [.node 0 []]
  let left : SourceAnnotatedShape := ⟨"x", forest⟩
  let right : SourceAnnotatedShape := ⟨"y", forest⟩
  refine ⟨left, right, ?_, rfl⟩
  intro equal
  have sourceEqual := congrArg SourceAnnotatedShape.source equal
  simp [left, right] at sourceEqual

end Surface.Refactor.Syntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c084b71a38f0fd3bc7ab22bec58ec1642915e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
