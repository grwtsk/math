# biproduct.uniqueUpToIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c71ca4106593ec4fd2a19e7249e5a0bf79141406cdcc9cf61a3750ec20e212f3",
  "kind": "def",
  "lexical_name": "biproduct.uniqueUpToIso",
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
  "slug": "biproduct-uniqueuptoiso--784d6fffed2503985dc7cf89",
  "source": {
    "blob": "66990e6754db8257b74b03ff902a079801fc2f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1050,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:784d6fffed2503985dc7cf895c9117d661f6d1be1649a0e6e67c4591c845aa92",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c71ca4106593ec4fd2a19e7249e5a0bf79141406cdcc9cf61a3750ec20e212f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biproduct.uniqueUpToIso (f : J → C) [HasBiproduct f] {b : Bicone f} (hb : b.IsBilimit) :
    b.pt ≅ ⨁ f where
  hom := biproduct.lift b.π
  inv := biproduct.desc b.ι
  hom_inv_id := by
    rw [← biproduct.conePointUniqueUpToIso_hom f hb, ←
      biproduct.conePointUniqueUpToIso_inv f hb, Iso.hom_inv_id]
  inv_hom_id := by
    rw [← biproduct.conePointUniqueUpToIso_hom f hb, ←
      biproduct.conePointUniqueUpToIso_inv f hb, Iso.inv_hom_id]

variable (C)

-- see Note [lower instance priority]
/-- A category with finite biproducts has a zero object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66990e6754db8257b74b03ff902a079801fc2f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
