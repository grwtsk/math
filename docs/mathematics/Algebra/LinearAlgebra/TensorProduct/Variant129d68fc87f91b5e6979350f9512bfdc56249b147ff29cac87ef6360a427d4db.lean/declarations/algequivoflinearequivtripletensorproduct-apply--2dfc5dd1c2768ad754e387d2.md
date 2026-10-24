# algEquivOfLinearEquivTripleTensorProduct_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec57b0a0b2341c84532324e3f23cdb5a18a123d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed39bd65-8f4f-a556-622b-1842bfdda29d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c4a42b3-7f7b-7e33-e0f2-2f05fd056870",
  "kind": "theorem",
  "lexical_name": "algEquivOfLinearEquivTripleTensorProduct_apply",
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
  "slug": "algequivoflinearequivtripletensorproduct-apply--2dfc5dd1c2768ad754e387d2",
  "source": {
    "blob": "ec57b0a0b2341c84532324e3f23cdb5a18a123d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 578,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dfc5dd1c2768ad754e387d21f98b326129e0a9f2e885ca7cda35ba2a9a010d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c4a42b3-7f7b-7e33-e0f2-2f05fd056870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algEquivOfLinearEquivTripleTensorProduct_apply (f w₁ w₂ x) :
    (algEquivOfLinearEquivTripleTensorProduct f w₁ w₂ : (A ⊗[R] B) ⊗[R] C ≃ₐ[R] D) x = f x :=
  rfl
#align algebra.tensor_product.alg_equiv_of_linear_equiv_triple_tensor_product_apply Algebra.TensorProduct.algEquivOfLinearEquivTripleTensorProduct_apply

end

variable {R : Type u} {S : Type uS} [CommSemiring R] [CommSemiring S] [Algebra R S]

variable {A : Type v₁} [Semiring A] [Algebra R A] [Algebra S A] [IsScalarTower R S A]

variable {B : Type v₂} [Semiring B] [Algebra R B] [Algebra S B] [IsScalarTower R S B]

variable {C : Type v₃} [Semiring C] [Algebra R C]

variable {D : Type v₄} [Semiring D] [Algebra R D]

section

variable (R A)

/-- The base ring is a left identity for the tensor product of algebra, up to algebra isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec57b0a0b2341c84532324e3f23cdb5a18a123d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
