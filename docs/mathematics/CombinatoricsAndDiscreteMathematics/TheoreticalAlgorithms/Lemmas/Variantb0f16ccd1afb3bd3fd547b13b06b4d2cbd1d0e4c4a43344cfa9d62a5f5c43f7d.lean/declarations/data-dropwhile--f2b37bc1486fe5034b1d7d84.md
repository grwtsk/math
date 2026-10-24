# data_dropWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a39bd366d43fefa9e64d7e2f756a012f7705a125",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0f16ccd1afb3bd3fd547b13b06b4d2cbd1d0e4c4a43344cfa9d62a5f5c43f7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:269edb38-54d7-04ba-1d13-751c65eb2a76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7e88fc6-7a41-686f-68c0-582d1ee4ddb2",
  "kind": "theorem",
  "lexical_name": "data_dropWhile",
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
  "slug": "data-dropwhile--f2b37bc1486fe5034b1d7d84",
  "source": {
    "blob": "a39bd366d43fefa9e64d7e2f756a012f7705a125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1239,
    "line": 1229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb0f16ccd1afb3bd3fd547b13b06b4d2cbd1d0e4c4a43344cfa9d62a5f5c43f7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b37bc1486fe5034b1d7d84ea30f079e2d429f5b1e887d55182ad0a9353e3e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb0f16ccd1afb3bd3fd547b13b06b4d2cbd1d0e4c4a43344cfa9d62a5f5c43f7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7e88fc6-7a41-686f-68c0-582d1ee4ddb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1229–1239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem data_dropWhile (p) : ∀ {s}, Valid s →
    (s.dropWhile p).toString.toList = s.toString.toList.dropWhile p
  | _, h => let ⟨_, _, _, h⟩ := h.validFor; by simp [(h.dropWhile _).toString, h.toString]

-- TODO: takeRightWhile

end Valid
end Substring.Raw

namespace String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb0f16ccd1afb3bd3fd547b13b06b4d2cbd1d0e4c4a43344cfa9d62a5f5c43f7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb0f16ccd1afb3bd3fd547b13b06b4d2cbd1d0e4c4a43344cfa9d62a5f5c43f7d.lean#L1229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39bd366d43fefa9e64d7e2f756a012f7705a125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
