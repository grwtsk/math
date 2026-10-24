# discr_not_zero_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4132674c-636b-3a91-e7de-361c4097079a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b333029-8f18-4592-9460-f9c6a0678076",
  "kind": "theorem",
  "lexical_name": "discr_not_zero_of_basis",
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
  "slug": "discr-not-zero-of-basis--61e36e5172af0b8e07637792",
  "source": {
    "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e36e5172af0b8e07637792b39973c4c3a79265643ed9e2a88e442944f22c84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b333029-8f18-4592-9460-f9c6a0678076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_not_zero_of_basis [IsSeparable K L] (b : Basis ι K L) :
    discr K b ≠ 0 := by
  cases isEmpty_or_nonempty ι
-- Porting note: the following proof was `simp [discr]`. Variations like `exact this` do not work.
  · have : det (traceMatrix K ↑b) ≠ 0 := by simp
    unfold discr
    convert this
  · have :=
      span_eq_top_of_linearIndependent_of_card_eq_finrank b.linearIndependent
        (finrank_eq_card_basis b).symm
    classical
    rw [discr_def, traceMatrix]
    simp_rw [← Basis.mk_apply b.linearIndependent this.ge]
    rw [← traceMatrix, traceMatrix_of_basis, ← BilinForm.nondegenerate_iff_det_ne_zero]
    exact traceForm_nondegenerate _ _
#align algebra.discr_not_zero_of_basis Algebra.discr_not_zero_of_basis

/-- Over a field, if `b` is a basis, then `Algebra.discr K b` is a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4a8c40634ac4c32a63c6f8aea15d92877b2208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
