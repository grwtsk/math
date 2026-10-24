# involution_on_minus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7367678643a8fbc0fbc0f7608a4173506a8ca46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07437e40-6a53-a8b2-6773-cc6eeb2cce5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6139dd7-d2d0-060f-fa59-25678a1dddc0",
  "kind": "theorem",
  "lexical_name": "involution_on_minus",
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
  "slug": "involution-on-minus--5afab3729cf29ae656290c8b",
  "source": {
    "blob": "d7367678643a8fbc0fbc0f7608a4173506a8ca46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5afab3729cf29ae656290c8bdd3d453d9ae2e88a9eb698b93ae3d1b5141c726d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6139dd7-d2d0-060f-fa59-25678a1dddc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem involution_on_minus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    J (involutionMinus J x) = -involutionMinus J x := by
  simp only [involutionMinus_apply, map_smul, map_sub, hJ]
  module

/-- Two commuting linear involutions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7367678643a8fbc0fbc0f7608a4173506a8ca46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
