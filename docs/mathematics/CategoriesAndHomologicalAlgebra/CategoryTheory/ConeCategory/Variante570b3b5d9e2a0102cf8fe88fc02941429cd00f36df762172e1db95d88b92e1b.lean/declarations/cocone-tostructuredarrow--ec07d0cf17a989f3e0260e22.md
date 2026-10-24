# Cocone.toStructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:427fbdd1ffa325bd04fe9962502484a5a9973285ba4c4f1e408b8ea28deee017",
  "kind": "def",
  "lexical_name": "Cocone.toStructuredArrow",
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
  "slug": "cocone-tostructuredarrow--ec07d0cf17a989f3e0260e22",
  "source": {
    "blob": "9059ea7e342be3a22f86ef54e55d24db389f0f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec07d0cf17a989f3e0260e220fc060bb7ec25086d48ad14badc20f4913c4b841",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:427fbdd1ffa325bd04fe9962502484a5a9973285ba4c4f1e408b8ea28deee017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cocone.toStructuredArrow (F : J ⥤ C) : Cocone F ⥤ StructuredArrow F (const J) where
  obj c := StructuredArrow.mk c.ι
  map f := StructuredArrow.homMk f.hom

/-- Construct a cocone on `F` from an object of the category `(F ↓ Δ)`. This is part of an
    equivalence, see `Cocone.equivStructuredArrow`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante570b3b5d9e2a0102cf8fe88fc02941429cd00f36df762172e1db95d88b92e1b.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9059ea7e342be3a22f86ef54e55d24db389f0f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
