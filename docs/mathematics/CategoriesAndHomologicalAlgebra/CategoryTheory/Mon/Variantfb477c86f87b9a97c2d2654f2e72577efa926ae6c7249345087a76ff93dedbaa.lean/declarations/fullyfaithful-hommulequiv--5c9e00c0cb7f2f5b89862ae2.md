# FullyFaithful.homMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c8b7d8c70b5b2b75611f049bf919b9df898985e5b3c31869bed60c09b390103",
  "kind": "def",
  "lexical_name": "FullyFaithful.homMulEquiv",
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
  "slug": "fullyfaithful-hommulequiv--5c9e00c0cb7f2f5b89862ae2",
  "source": {
    "blob": "82c56728fadcc73a982db44d43a145c06eb90f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9e00c0cb7f2f5b89862ae2c2619c610abb0a08e36e576865719adac7d2790b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c8b7d8c70b5b2b75611f049bf919b9df898985e5b3c31869bed60c09b390103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FullyFaithful.homMulEquiv (hF : F.FullyFaithful) : (X ⟶ M) ≃* (F.obj X ⟶ F.obj M) where
  __ := hF.homEquiv
  __ := F.homMonoidHom

end Functor

section BraidedCategory
variable [BraidedCategory C]

/-- If `M` is a commutative monoid object, then `Hom(X, M)` has a commutative monoid structure. -/
@[to_additive
/-- If `M` is a commutative additive monoid object, then `Hom(X, M)` has a commutative additive
monoid structure. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantfb477c86f87b9a97c2d2654f2e72577efa926ae6c7249345087a76ff93dedbaa.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c56728fadcc73a982db44d43a145c06eb90f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
