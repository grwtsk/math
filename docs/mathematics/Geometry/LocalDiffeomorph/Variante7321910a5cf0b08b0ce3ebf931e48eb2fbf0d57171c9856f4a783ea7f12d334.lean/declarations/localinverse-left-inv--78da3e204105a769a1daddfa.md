# localInverse_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4daf2b2d7d66395d2e11a7f218590bbc496cb95f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7321910a5cf0b08b0ce3ebf931e48eb2fbf0d57171c9856f4a783ea7f12d334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5046e6b-b8e9-8ddf-2d42-e7ea7118df5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b99e2c1-0bee-3a75-6d92-0378c2d5afb3",
  "kind": "lemma",
  "lexical_name": "localInverse_left_inv",
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
  "slug": "localinverse-left-inv--78da3e204105a769a1daddfa",
  "source": {
    "blob": "4daf2b2d7d66395d2e11a7f218590bbc496cb95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 215,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variante7321910a5cf0b08b0ce3ebf931e48eb2fbf0d57171c9856f4a783ea7f12d334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78da3e204105a769a1daddfab815467f9c323e7d036d564ce9a8ed5be1c3561b",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variante7321910a5cf0b08b0ce3ebf931e48eb2fbf0d57171c9856f4a783ea7f12d334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b99e2c1-0bee-3a75-6d92-0378c2d5afb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localInverse_left_inv (hf : IsLocalDiffeomorphAt I J n f x) {x' : M}
    (hx' : x' ∈ hf.localInverse.target) : hf.localInverse (f x') = x' := by
  rw [hf.choose_spec.2 (hf.choose.symm_target ▸ hx')]
  exact hf.choose.left_inv hx'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variante7321910a5cf0b08b0ce3ebf931e48eb2fbf0d57171c9856f4a783ea7f12d334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variante7321910a5cf0b08b0ce3ebf931e48eb2fbf0d57171c9856f4a783ea7f12d334.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4daf2b2d7d66395d2e11a7f218590bbc496cb95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
