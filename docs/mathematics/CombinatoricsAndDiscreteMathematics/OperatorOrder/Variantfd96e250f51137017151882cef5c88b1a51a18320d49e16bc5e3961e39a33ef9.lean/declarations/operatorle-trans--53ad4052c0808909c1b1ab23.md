# operatorLE_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e48c8e3439a2b08426b0be4c2e33d9613ff5f876",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0dc077c-4d64-8225-38ab-d6c2b0214a80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d76bf4ad-4593-1b63-44a2-82fc1d428aff",
  "kind": "theorem",
  "lexical_name": "operatorLE_trans",
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
  "slug": "operatorle-trans--53ad4052c0808909c1b1ab23",
  "source": {
    "blob": "e48c8e3439a2b08426b0be4c2e33d9613ff5f876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ad4052c0808909c1b1ab23faffd9b4fadded2e70b30a54d4a81b7cf68bfe57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d76bf4ad-4593-1b63-44a2-82fc1d428aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operatorLE_trans
    (model : OperatorModel)
    {first second third : model.Operator}
    (firstSecond :
      OperatorLE model first second)
    (secondThird :
      OperatorLE model second third) :
    OperatorLE model first third := by
  have sumPositive :=
    model.add_nonnegative
      firstSecond secondThird
  simpa [OperatorLE] using sumPositive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e48c8e3439a2b08426b0be4c2e33d9613ff5f876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
