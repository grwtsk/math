# toStructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1803d1d32d32a1fa15f85a36c435a059066028dc4f95ae38918bba8c526ff393",
  "kind": "def",
  "lexical_name": "toStructuredArrow",
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
  "slug": "tostructuredarrow--c79568e7ffec7a88edc560f6",
  "source": {
    "blob": "3100e0a04494229f827d4147aa80388c6ce27f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c79568e7ffec7a88edc560f6927533e8c2226230c115fed998d524d4e318fd5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1803d1d32d32a1fa15f85a36c435a059066028dc4f95ae38918bba8c526ff393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStructuredArrow
    {X : C} (p : P.LimitOfShape J X) :
    J ⥤ StructuredArrow X P.ι where
  obj j := StructuredArrow.mk (Y := ⟨_, p.prop_diag_obj j⟩) (by exact p.π.app j)
  map f := StructuredArrow.homMk (ObjectProperty.homMk (by exact p.diag.map f))
    (by simpa using (p.π.naturality f).symm)

end LimitOfShape

/-- The property of objects that are the point of a limit cone for a
functor `F : J ⥤ C` where all objects `F.obj j` satisfy `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant61f40f3bc987a5fa801be650d6e756d6abbe618c58da9d855c934cf1a456fe2d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3100e0a04494229f827d4147aa80388c6ce27f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
