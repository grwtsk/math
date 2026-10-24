# ofCoconeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:586981f1165361c456c6ad41679475f500231d14201ab8603cf071ae8087f7e9",
  "kind": "def",
  "lexical_name": "ofCoconeEquiv",
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
  "slug": "ofcoconeequiv--4592f16ab462419fcdc15e56",
  "source": {
    "blob": "53308164f8dce20b12c5fc860eefaef8a9f9c7c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 682,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4592f16ab462419fcdc15e566a8c18452e18f399586b9948b619ce24b28cb7c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:586981f1165361c456c6ad41679475f500231d14201ab8603cf071ae8087f7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCoconeEquiv {D : Type u₄} [Category.{v₄} D] {G : K ⥤ D} (h : Cocone G ≌ Cocone F)
    {c : Cocone G} : IsColimit (h.functor.obj c) ≃ IsColimit c where
  toFun P := ofIsoColimit (ofLeftAdjoint h.symm.toAdjunction P) (h.unitIso.symm.app c)
  invFun := ofLeftAdjoint h.toAdjunction
  left_inv := by aesop_cat
  right_inv := by aesop_cat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Varianta0c3a5595cef9b0c42238d18d2347dce91a2f25c345d45c4e6430b837d9da74e.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53308164f8dce20b12c5fc860eefaef8a9f9c7c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
