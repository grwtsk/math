# biprod.uniqueUpToIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a369dda20fe90444bf3555c5c855eac8c0833cd2f2f5ca65fbb965cdce50dbfa",
  "kind": "def",
  "lexical_name": "biprod.uniqueUpToIso",
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
  "slug": "biprod-uniqueuptoiso--132acd5f14a63d1dfc7cf7de",
  "source": {
    "blob": "1ff216a06b1657299522dda1f7d92b28b2fa4ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1695,
    "line": 1680,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:132acd5f14a63d1dfc7cf7de2af28f42bbc995bef218c00cda26ee5c7ecd8363",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a369dda20fe90444bf3555c5c855eac8c0833cd2f2f5ca65fbb965cdce50dbfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1680–1695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biprod.uniqueUpToIso (X Y : C) [HasBinaryBiproduct X Y] {b : BinaryBicone X Y}
    (hb : b.IsBilimit) : b.pt ≅ X ⊞ Y where
  hom := biprod.lift b.fst b.snd
  inv := biprod.desc b.inl b.inr
  hom_inv_id := by
    rw [← biprod.conePointUniqueUpToIso_hom X Y hb, ←
      biprod.conePointUniqueUpToIso_inv X Y hb, Iso.hom_inv_id]
  inv_hom_id := by
    rw [← biprod.conePointUniqueUpToIso_hom X Y hb, ←
      biprod.conePointUniqueUpToIso_inv X Y hb, Iso.inv_hom_id]
#align category_theory.limits.biprod.unique_up_to_iso CategoryTheory.Limits.biprod.uniqueUpToIso

-- There are three further variations,
-- about `IsIso biprod.inr`, `IsIso biprod.fst` and `IsIso biprod.snd`,
-- but any one suffices to prove `indecomposable_of_simple`
-- and they are likely not separately useful.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant30efd7e2744ec8446cdf7fbca8694e5ad40d70f4827255aaf8293ce371038d9e.lean#L1680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff216a06b1657299522dda1f7d92b28b2fa4ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
