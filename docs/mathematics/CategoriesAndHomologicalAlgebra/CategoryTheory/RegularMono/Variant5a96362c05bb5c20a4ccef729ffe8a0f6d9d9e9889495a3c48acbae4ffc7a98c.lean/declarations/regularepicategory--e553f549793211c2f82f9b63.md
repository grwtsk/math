# RegularEpiCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10ebae1f0fe5e8f600d1e8dba8cf415e59dac83f70a7dee6f0fa8dd66eaf9e03",
  "kind": "class",
  "lexical_name": "RegularEpiCategory",
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
  "slug": "regularepicategory--e553f549793211c2f82f9b63",
  "source": {
    "blob": "b9b2f2adffe0b032141ce6c09aeeaaee17971415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e553f549793211c2f82f9b63e511d6c20ce0072bffbdf89fc51b1f0a43fddbad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10ebae1f0fe5e8f600d1e8dba8cf415e59dac83f70a7dee6f0fa8dd66eaf9e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class RegularEpiCategory where
  /-- Everyone epimorphism is a regular epimorphism -/
  regularEpiOfEpi : ∀ {X Y : C} (f : X ⟶ Y) [Epi f], RegularEpi f
#align category_theory.regular_epi_category CategoryTheory.RegularEpiCategory

end

/-- In a category in which every epimorphism is regular, we can express every epimorphism as
    a coequalizer. This is not an instance because it would create an instance loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9b2f2adffe0b032141ce6c09aeeaaee17971415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
