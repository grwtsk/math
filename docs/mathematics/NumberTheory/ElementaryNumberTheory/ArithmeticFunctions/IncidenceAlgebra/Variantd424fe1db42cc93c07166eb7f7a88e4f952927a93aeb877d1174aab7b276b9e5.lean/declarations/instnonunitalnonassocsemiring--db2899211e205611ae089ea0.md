# instNonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4df72066a52d0e02b6f7a7837a2f9b8f2e3614d2a0445011f1c3d05b084c13bc",
  "kind": "instance",
  "lexical_name": "instNonUnitalNonAssocSemiring",
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
  "slug": "instnonunitalnonassocsemiring--db2899211e205611ae089ea0",
  "source": {
    "blob": "18829c3e77c70d45911215890a2ec673cafd78f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db2899211e205611ae089ea037404ea8a69fa85175a7b4cdd1665f3eac96f01d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4df72066a52d0e02b6f7a7837a2f9b8f2e3614d2a0445011f1c3d05b084c13bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalNonAssocSemiring [Preorder α] [LocallyFiniteOrder α]
    [NonUnitalNonAssocSemiring 𝕜] : NonUnitalNonAssocSemiring (IncidenceAlgebra 𝕜 α) where
  __ := instAddCommMonoid
  zero_mul := fun f ↦ by ext; exact sum_eq_zero fun x _ ↦ zero_mul _
  mul_zero := fun f ↦ by ext; exact sum_eq_zero fun x _ ↦ mul_zero _
  left_distrib := fun f g h ↦ by
    ext; exact Eq.trans (sum_congr rfl fun x _ ↦ left_distrib _ _ _) sum_add_distrib
  right_distrib := fun f g h ↦ by
    ext; exact Eq.trans (sum_congr rfl fun x _ ↦ right_distrib _ _ _) sum_add_distrib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd424fe1db42cc93c07166eb7f7a88e4f952927a93aeb877d1174aab7b276b9e5.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18829c3e77c70d45911215890a2ec673cafd78f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
