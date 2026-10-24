# IsOrthoᵢ.separatingRight_iff_not_isOrtho_basis_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 800,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3145925-621c-bade-74fb-405e38280acc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea0d277-f032-063a-8e2f-848ca02d72b9",
  "kind": "lemma",
  "lexical_name": "IsOrthoᵢ.separatingRight_iff_not_isOrtho_basis_self",
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
  "slug": "isortho-separatingright-iff-not-isortho-basis-self--2ad3dbe442f01df8e7736600",
  "source": {
    "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 808,
    "line": 800,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ad3dbe442f01df8e7736600a8f8aacfc284bf533efdeed056321cd0f1537838",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea0d277-f032-063a-8e2f-848ca02d72b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–808.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOrthoᵢ.separatingRight_iff_not_isOrtho_basis_self {B : M →ₗ[R] M →ₗ[R] M₁} (v : Basis n R M)
    (hO : B.IsOrthoᵢ v) (h : ∀ i, B (v i) (v i) ≠ 0) : B.SeparatingRight := by
  rw [isOrthoᵢ_flip] at hO
  rw [← flip_separatingLeft]
  refine IsOrthoᵢ.separatingLeft_of_not_isOrtho_basis_self v hO fun i ↦ ?_
  exact h i

/-- Given an orthogonal basis with respect to a bilinear map, the bilinear map is nondegenerate
if the basis has no elements which are self-orthogonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b936a4c813ee9e5ce378488e6a7c539c4641b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
