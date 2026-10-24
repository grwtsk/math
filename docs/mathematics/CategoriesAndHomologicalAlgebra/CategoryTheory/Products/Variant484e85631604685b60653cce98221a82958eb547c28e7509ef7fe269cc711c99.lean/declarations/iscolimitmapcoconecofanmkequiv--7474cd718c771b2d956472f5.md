# isColimitMapCoconeCofanMkEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09ff1333c2557c926a89ec83475080dbdcb997e558feea4460cb83863d2eb6a1",
  "kind": "def",
  "lexical_name": "isColimitMapCoconeCofanMkEquiv",
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
  "slug": "iscolimitmapcoconecofanmkequiv--7474cd718c771b2d956472f5",
  "source": {
    "blob": "21d4b9c830d66eab06fe3357edb63e4e50e7acf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant484e85631604685b60653cce98221a82958eb547c28e7509ef7fe269cc711c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7474cd718c771b2d956472f54bc7be7006091e355e50cd92fb3fb73b5a160cc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant484e85631604685b60653cce98221a82958eb547c28e7509ef7fe269cc711c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09ff1333c2557c926a89ec83475080dbdcb997e558feea4460cb83863d2eb6a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitMapCoconeCofanMkEquiv {P : C} (g : ∀ j, f j ⟶ P) :
    IsColimit (Functor.mapCocone G (Cofan.mk P g)) ≃
      IsColimit (Cofan.mk _ fun j => G.map (g j) : Cofan fun j => G.obj (f j)) := by
  refine (IsColimit.precomposeHomEquiv ?_ _).symm.trans (IsColimit.equivIsoColimit ?_)
  · refine Discrete.natIso fun j => Iso.refl (G.obj (f j.as))
  refine Cocone.ext (Iso.refl _) fun j => by dsimp; cases j; simp

/-- The property of preserving coproducts expressed in terms of cofans. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant484e85631604685b60653cce98221a82958eb547c28e7509ef7fe269cc711c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant484e85631604685b60653cce98221a82958eb547c28e7509ef7fe269cc711c99.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d4b9c830d66eab06fe3357edb63e4e50e7acf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
