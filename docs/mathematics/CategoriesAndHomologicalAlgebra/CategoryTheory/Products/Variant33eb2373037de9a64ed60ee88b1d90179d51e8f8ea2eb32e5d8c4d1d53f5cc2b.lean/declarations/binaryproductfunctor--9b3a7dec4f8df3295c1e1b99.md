# binaryProductFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6646ce842610e054cacd95256267d833c293405483216392c37d08fd480cb77e",
  "kind": "def",
  "lexical_name": "binaryProductFunctor",
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
  "slug": "binaryproductfunctor--9b3a7dec4f8df3295c1e1b99",
  "source": {
    "blob": "aac699ffb8597ba23438c3f48f7ddf97e22ff014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant33eb2373037de9a64ed60ee88b1d90179d51e8f8ea2eb32e5d8c4d1d53f5cc2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b3a7dec4f8df3295c1e1b9932909c260f912c7448c0359802f1a452b58da548",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant33eb2373037de9a64ed60ee88b1d90179d51e8f8ea2eb32e5d8c4d1d53f5cc2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6646ce842610e054cacd95256267d833c293405483216392c37d08fd480cb77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryProductFunctor : Type u ⥤ Type u ⥤ Type u where
  obj X :=
    { obj := fun Y => X × Y
      map := fun {_ Y₂} f => (binaryProductLimit X Y₂).lift
        (BinaryFan.mk (↾_root_.Prod.fst) (↾_root_.Prod.snd ≫ f)) }
  map {X₁ X₂} f :=
    { app := fun Y =>
      BinaryFan.IsLimit.lift (binaryProductLimit X₂ Y) (↾_root_.Prod.fst ≫ f) (↾_root_.Prod.snd) }

set_option backward.isDefEq.respectTransparency false in
/-- The product functor given by the instance `HasBinaryProducts (Type u)` is isomorphic to the
explicit binary product functor given by the product type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant33eb2373037de9a64ed60ee88b1d90179d51e8f8ea2eb32e5d8c4d1d53f5cc2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant33eb2373037de9a64ed60ee88b1d90179d51e8f8ea2eb32e5d8c4d1d53f5cc2b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac699ffb8597ba23438c3f48f7ddf97e22ff014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
