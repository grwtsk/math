# minKeyD_insertIfNew!_le_minKeyD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7908,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6052b7ad-abb8-b844-18d6-7f1ebca80808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e775767-b3c3-9425-cf98-3d237ccbda8c",
  "kind": "theorem",
  "lexical_name": "minKeyD_insertIfNew!_le_minKeyD",
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
  "slug": "minkeyd-insertifnew-le-minkeyd--fcedd6439a0dd8305b08c9e3",
  "source": {
    "blob": "8a21803e62d3ee266c84ee30f20e7924eb0ccf23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7912,
    "line": 7908,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcedd6439a0dd8305b08c9e3f638b5bfc43fff7afaba3b2b5c80d37af3be9410",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e775767-b3c3-9425-cf98-3d237ccbda8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7908–7912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minKeyD_insertIfNew!_le_minKeyD [TransOrd α] (h : t.WF) :
    (he : t.isEmpty = false) → ∀ {k v fallback},
    compare (t.insertIfNew! k v |>.minKeyD fallback) (t.minKeyD fallback) |>.isLE := by
  simpa only [insertIfNew_eq_insertIfNew!] using minKeyD_insertIfNew_le_minKeyD h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd72513f42efb6f9f1963cc8905d9eaae26ad13b458c4e1bca2e90145ce0f4439.lean#L7908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a21803e62d3ee266c84ee30f20e7924eb0ccf23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
