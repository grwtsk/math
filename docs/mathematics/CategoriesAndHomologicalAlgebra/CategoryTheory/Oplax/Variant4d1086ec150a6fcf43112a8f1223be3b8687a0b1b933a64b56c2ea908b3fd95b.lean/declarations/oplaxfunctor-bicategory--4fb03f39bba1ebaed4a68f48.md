# OplaxFunctor.bicategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62f58ac8b4143d8f998178d6a778da85a88fbe4e5b99e741128fda90d8f384b7",
  "kind": "instance",
  "lexical_name": "OplaxFunctor.bicategory",
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
  "slug": "oplaxfunctor-bicategory--4fb03f39bba1ebaed4a68f48",
  "source": {
    "blob": "e088aa4bb2c7fa930a2de533949622df4b2416e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fb03f39bba1ebaed4a68f486f7533dc52d86d04127e8e5c32de0c5d16581f01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62f58ac8b4143d8f998178d6a778da85a88fbe4e5b99e741128fda90d8f384b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance OplaxFunctor.bicategory : Bicategory (OplaxFunctor B C) where
  whiskerLeft {_ _ _} η _ _ Γ := whiskerLeft η Γ
  whiskerRight {_ _ _} _ _ Γ η := whiskerRight Γ η
  associator {_ _ _} _ := associator
  leftUnitor {_ _} := leftUnitor
  rightUnitor {_ _} := rightUnitor
  whisker_exchange {a b c f g h i} η θ := by
    ext
    exact whisker_exchange _ _

end OplaxTrans

end CategoryTheory.Oplax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant4d1086ec150a6fcf43112a8f1223be3b8687a0b1b933a64b56c2ea908b3fd95b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e088aa4bb2c7fa930a2de533949622df4b2416e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
