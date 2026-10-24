# Smooth.of_smooth_tensorProduct_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d946a6effb254726ada5b504008f46dd78fc6bf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:615c21cd-e4c5-d986-80aa-993872627e54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:260ecde3-6439-0f27-99ef-434ddd6a62d6",
  "kind": "lemma",
  "lexical_name": "Smooth.of_smooth_tensorProduct_of_faithfullyFlat",
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
  "slug": "smooth-of-smooth-tensorproduct-of-faithfullyflat--cb46fe1534bcd24f16139c7c",
  "source": {
    "blob": "d946a6effb254726ada5b504008f46dd78fc6bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb46fe1534bcd24f16139c7c904a40fe81e0241a53526e8a624aefa92e3f43ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:260ecde3-6439-0f27-99ef-434ddd6a62d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth.of_smooth_tensorProduct_of_faithfullyFlat [Smooth T (T ⊗[R] S)] :
    Smooth R S := by
  have : Algebra.FinitePresentation R S := .of_finitePresentation_tensorProduct_of_faithfullyFlat T
  refine ⟨?_, .of_finitePresentation_tensorProduct_of_faithfullyFlat T⟩
  rw [formallySmooth_iff]
  constructor
  · let _ : Algebra T (S ⊗[R] T) := TensorProduct.rightAlgebra
    let e : S ⊗[R] T ≃ₐ[T] T ⊗[R] S :=
      .ofRingEquiv (f := TensorProduct.comm R S T) <| by simp [RingHom.algebraMap_toAlgebra]
    have : FormallySmooth T (S ⊗[R] T) := .of_equiv e.symm
    let e' : (S ⊗[R] T) ⊗[S] Ω[S⁄R] ≃ₗ[S ⊗[R] T] Ω[S ⊗[R] T⁄T] :=
      KaehlerDifferential.tensorKaehlerEquiv R T S (S ⊗[R] T)
    have : Module.Flat (S ⊗[R] T) ((S ⊗[R] T) ⊗[S] Ω[S⁄R]) := .of_linearEquiv e'
    have : Module.Flat S Ω[S⁄R] := Module.Flat.of_flat_tensorProduct _ _ (S ⊗[R] T)
    exact Module.Flat.projective_of_finitePresentation
  · have : Subsingleton (T ⊗[R] H1Cotangent R S) := (tensorH1CotangentOfFlat R S T).subsingleton
    exact Module.FaithfullyFlat.lTensor_reflects_triviality R T (H1Cotangent R S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Descent/Variant8804b0f95fd141816d06ee9461cad4b2a53f7848d4294ce9f5bc2acb3294822b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d946a6effb254726ada5b504008f46dd78fc6bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
