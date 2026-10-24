# instNonUnitalSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846f018926a9358f3a4c183988c13441115be12d0332698861f9bc6cac186d3e",
  "kind": "instance",
  "lexical_name": "instNonUnitalSemiring",
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
  "slug": "instnonunitalsemiring--2997e8c1032c637d6a6a12b0",
  "source": {
    "blob": "9b55d5c2885e741ccbc2b4511f6fcee91acaf549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2997e8c1032c637d6a6a12b0fa443f90c94d62e0092035da9272b0ed27e4ea90",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846f018926a9358f3a4c183988c13441115be12d0332698861f9bc6cac186d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalSemiring : NonUnitalSemiring (⨂[R] i, A i) where
  __ := instNonUnitalNonAssocSemiring
  mul_assoc := PiTensorProduct.mul_assoc

end NonUnitalSemiring

noncomputable section Semiring

variable [CommSemiring R'] [CommSemiring R] [∀ i, Semiring (A i)]
variable [Algebra R' R] [∀ i, Algebra R (A i)] [∀ i, Algebra R' (A i)]
variable [∀ i, IsScalarTower R' R (A i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b55d5c2885e741ccbc2b4511f6fcee91acaf549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
