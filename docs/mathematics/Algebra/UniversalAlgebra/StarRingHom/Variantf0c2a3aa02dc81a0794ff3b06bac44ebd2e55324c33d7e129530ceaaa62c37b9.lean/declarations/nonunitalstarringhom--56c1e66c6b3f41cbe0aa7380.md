# NonUnitalStarRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dacfb5effc33c3966458d96248d4b0b71a58bddef8382c5e95d7ed85e49ddea1",
  "kind": "structure",
  "lexical_name": "NonUnitalStarRingHom",
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
  "slug": "nonunitalstarringhom--56c1e66c6b3f41cbe0aa7380",
  "source": {
    "blob": "43d32659c6a61e5a106d9b0672ad539f024e7c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variantf0c2a3aa02dc81a0794ff3b06bac44ebd2e55324c33d7e129530ceaaa62c37b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56c1e66c6b3f41cbe0aa7380c93cb166789985cb1c29528accd1d170425857eb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarRingHom/Variantf0c2a3aa02dc81a0794ff3b06bac44ebd2e55324c33d7e129530ceaaa62c37b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dacfb5effc33c3966458d96248d4b0b71a58bddef8382c5e95d7ed85e49ddea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonUnitalStarRingHom (A B : Type*) [NonUnitalNonAssocSemiring A]
    [Star A] [NonUnitalNonAssocSemiring B] [Star B] extends A →ₙ+* B where
  /-- By definition, a non-unital ⋆-ring homomorphism preserves the `star` operation. -/
  map_star' : ∀ a : A, toFun (star a) = star (toFun a)

/-- `α →⋆ₙ+* β` denotes the type of non-unital ring homomorphisms from `α` to `β`. -/
infixr:25 " →⋆ₙ+* " => NonUnitalStarRingHom

/-- Reinterpret a non-unital star ring homomorphism as a non-unital ring homomorphism
by forgetting the interaction with the star operation.

Users should not make use of this, but instead utilize the coercion obtained through
the `NonUnitalRingHomClass` instance. -/
add_decl_doc NonUnitalStarRingHom.toNonUnitalRingHom

/-- `NonUnitalStarRingHomClass F A B` states that `F` is a type of non-unital ⋆-ring homomorphisms.
You should also extend this typeclass when you extend `NonUnitalStarRingHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarRingHom/Variantf0c2a3aa02dc81a0794ff3b06bac44ebd2e55324c33d7e129530ceaaa62c37b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variantf0c2a3aa02dc81a0794ff3b06bac44ebd2e55324c33d7e129530ceaaa62c37b9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d32659c6a61e5a106d9b0672ad539f024e7c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
