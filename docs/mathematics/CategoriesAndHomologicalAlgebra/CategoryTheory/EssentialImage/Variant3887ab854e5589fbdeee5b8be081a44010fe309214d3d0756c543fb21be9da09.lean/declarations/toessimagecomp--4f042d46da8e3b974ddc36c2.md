# toEssImageCompι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:215c533bfff4eeacc473746c1be58bab9da522319a4b8ac17fa2b7a5dd0fb5fc",
  "kind": "def",
  "lexical_name": "toEssImageCompι",
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
  "slug": "toessimagecomp--4f042d46da8e3b974ddc36c2",
  "source": {
    "blob": "54824f975d2710a1bacb8080d1a8ce3b8abd487c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f042d46da8e3b974ddc36c2dbe20a40659af0fc7626cbbf92acc756508ebcbe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:215c533bfff4eeacc473746c1be58bab9da522319a4b8ac17fa2b7a5dd0fb5fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEssImageCompι (F : C ⥤ D) : F.toEssImage ⋙ F.essImage.ι ≅ F :=
  ObjectProperty.liftCompιIso _ _ _

@[deprecated (since := "2025-03-04")] alias toEssImageCompEssentialImageInclusio :=
  toEssImageCompι

/-- A functor `F : C ⥤ D` is essentially surjective if every object of `D` is in the essential
image of `F`. In other words, for every `Y : D`, there is some `X : C` with `F.obj X ≅ Y`. -/
@[stacks 001C]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54824f975d2710a1bacb8080d1a8ce3b8abd487c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
