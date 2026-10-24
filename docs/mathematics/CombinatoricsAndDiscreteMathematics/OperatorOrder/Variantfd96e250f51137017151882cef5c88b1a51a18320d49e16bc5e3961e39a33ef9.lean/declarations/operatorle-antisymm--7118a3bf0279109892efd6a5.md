# operatorLE_antisymm

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
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c8527aa-c280-b6b3-67e6-8b0b2cbd7a21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a7cf3ae-503e-7817-62be-874e9253bb00",
  "kind": "theorem",
  "lexical_name": "operatorLE_antisymm",
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
  "slug": "operatorle-antisymm--7118a3bf0279109892efd6a5",
  "source": {
    "blob": "e48c8e3439a2b08426b0be4c2e33d9613ff5f876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7118a3bf0279109892efd6a5d4124eea8b892dd882dbbdc9609445fe323aadc0",
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

Occurrence: `result:3a7cf3ae-503e-7817-62be-874e9253bb00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operatorLE_antisymm
    (model : OperatorModel)
    {left right : model.Operator}
    (leftRight : OperatorLE model left right)
    (rightLeft : OperatorLE model right left) :
    left = right := by
  have negPositive :
      model.Nonnegative (-(right - left)) := by
    simpa [OperatorLE] using rightLeft
  have differenceZero :
      right - left = 0 :=
    model.pointed leftRight negPositive
  exact (sub_eq_zero.mp differenceZero).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e48c8e3439a2b08426b0be4c2e33d9613ff5f876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
