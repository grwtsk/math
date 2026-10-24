# mapIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7720b8e34508530dbd787b0c783af6bd0e93adcfd62c33ca1d2415010b488fc",
  "kind": "def",
  "lexical_name": "mapIsColimit",
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
  "slug": "mapiscolimit--ba73fbbfa52be16075164412",
  "source": {
    "blob": "5eec25cee6d3c5a6ad77bc146736aef9fe79fd17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba73fbbfa52be1607516441240b154637a285cc4639b65d72f3b17694c373101",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7720b8e34508530dbd787b0c783af6bd0e93adcfd62c33ca1d2415010b488fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIsColimit  (hc : IsColimit c) (G : C ⥤ D)
    [Functor.PreservesZeroMorphisms G] [PreservesColimit (parallelPair f 0) G] :
    IsColimit (c.map G) :=
  c.isColimitMapCoconeEquiv G (isColimitOfPreserves G hc)

end CokernelCofork

section Cokernels

variable (G : C ⥤ D) [Functor.PreservesZeroMorphisms G]
  {X Y Z : C} {f : X ⟶ Y} {h : Y ⟶ Z} (w : f ≫ h = 0)

/-- The map of a cokernel cofork is a colimit iff
the cokernel cofork consisting of the mapped morphisms is a colimit.
This essentially lets us commute `CokernelCofork.ofπ` with `Functor.mapCocone`.

This is a variant of `isColimitMapCoconeCoforkEquiv` for equalizers,
which we can't use directly between `G.map 0 = 0` does not hold definitionally.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eec25cee6d3c5a6ad77bc146736aef9fe79fd17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
