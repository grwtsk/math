# matrix_ofMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83e36cc75fd5495178c77fe2a591b5a4619a351f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3242f79d-3e1a-7103-9bf9-44505af993ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6d24a8-914d-946d-4b68-80a042103f2e",
  "kind": "theorem",
  "lexical_name": "matrix_ofMatrix",
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
  "slug": "matrix-ofmatrix--fd5a65cbcb1645a68b1332e1",
  "source": {
    "blob": "83e36cc75fd5495178c77fe2a591b5a4619a351f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd5a65cbcb1645a68b1332e13141e8a1df6134dfc7718878b519e24c204f39f1",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6d24a8-914d-946d-4b68-80a042103f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_ofMatrix [DecidableEq n] (c : RingCon (Matrix n n R)) :
    matrix n (ofMatrix c) = c := by
  ext x y
  classical
  constructor
  · intro h
    rw [matrix_eq_sum_single x, matrix_eq_sum_single y]
    refine c.finset_sum _ fun i _ ↦ c.finset_sum _ fun j _ ↦ h i j i j
  · intro h i' j' i j
    simpa using c.mul (c.mul (c.refl <| single i i' 1) h) (c.refl <| single j' j 1)

/-- A version of `ofMatrix_rel` for a single matrix index, rather than all indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e36cc75fd5495178c77fe2a591b5a4619a351f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
