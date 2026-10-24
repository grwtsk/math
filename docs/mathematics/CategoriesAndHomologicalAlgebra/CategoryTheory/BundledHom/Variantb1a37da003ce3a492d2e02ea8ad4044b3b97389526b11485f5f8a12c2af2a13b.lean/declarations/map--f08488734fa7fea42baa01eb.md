# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:239bf8b3e10a6dbd2e2d10c1de6d86d331659b4dd82fd8c654b48575a3a07fc8",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--f08488734fa7fea42baa01eb",
  "source": {
    "blob": "e11132d51ad19236ce7d0c9bab04474801e231f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f08488734fa7fea42baa01ebbcc9e651e7a83239666ba4cd5743bf6e80e875a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:239bf8b3e10a6dbd2e2d10c1de6d86d331659b4dd82fd8c654b48575a3a07fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def map (F : ∀ {α}, d α → c α) : BundledHom (MapHom hom @F) where
  toFun _ _ {iα} {iβ} f := 𝒞.toFun (F iα) (F iβ) f
  id _ {iα} := 𝒞.id (F iα)
  comp := @fun _ _ _ iα iβ iγ f g => 𝒞.comp (F iα) (F iβ) (F iγ) f g
  hom_ext := @fun _ _ iα iβ _ _ h => 𝒞.hom_ext (F iα) (F iβ) h

section

/-- We use the empty `ParentProjection` class to label functions like `CommMonoid.toMonoid`,
which we would like to use to automatically construct `BundledHom` instances from.

Once we've set up `MonCat` as the category of bundled monoids,
this allows us to set up `CommMonCat` by defining an instance
```instance : ParentProjection (CommMonoid.toMonoid) := ⟨⟩```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variantb1a37da003ce3a492d2e02ea8ad4044b3b97389526b11485f5f8a12c2af2a13b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11132d51ad19236ce7d0c9bab04474801e231f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
