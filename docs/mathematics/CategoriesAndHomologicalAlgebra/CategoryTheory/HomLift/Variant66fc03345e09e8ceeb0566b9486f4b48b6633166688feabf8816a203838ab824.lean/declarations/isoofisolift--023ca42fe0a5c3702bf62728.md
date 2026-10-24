# isoOfIsoLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be414ed0e20bfb00fa3c079ba06e7d445d2514ce8ecdd991655eb0df259cbdd4",
  "kind": "def",
  "lexical_name": "isoOfIsoLift",
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
  "slug": "isoofisolift--023ca42fe0a5c3702bf62728",
  "source": {
    "blob": "5e89f8280f5716ad796037a65bacc0c4a3eeeb61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:023ca42fe0a5c3702bf627284e24dc344b968478511e62375afe9ffdc40995d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be414ed0e20bfb00fa3c079ba06e7d445d2514ce8ecdd991655eb0df259cbdd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfIsoLift (f : R ⟶ S) (φ : a ≅ b) [p.IsHomLift f φ.hom] :
    R ≅ S where
  hom := f
  inv := eqToHom (codomain_eq p f φ.hom).symm ≫ (p.mapIso φ).inv ≫ eqToHom (domain_eq p f φ.hom)
  hom_inv_id := by subst_hom_lift p f φ.hom; simp [← p.map_comp]
  inv_hom_id := by subst_hom_lift p f φ.hom; simp [← p.map_comp]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant66fc03345e09e8ceeb0566b9486f4b48b6633166688feabf8816a203838ab824.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e89f8280f5716ad796037a65bacc0c4a3eeeb61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
