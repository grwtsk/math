# LeftHomologyMapData.op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ebfe49e4ac3f0a57781fe8a37cda4792b678a7f46c1082b02359759007811a3",
  "kind": "def",
  "lexical_name": "LeftHomologyMapData.op",
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
  "slug": "lefthomologymapdata-op--dc717a3a0d59ac1b43a35bd8",
  "source": {
    "blob": "db7db3eb3f9bc867e623dbeaff836577df828c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 951,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc717a3a0d59ac1b43a35bd8cd0beb956441503f86280c1a7ae41075ca9eb48a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ebfe49e4ac3f0a57781fe8a37cda4792b678a7f46c1082b02359759007811a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 951–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftHomologyMapData.op {S₁ S₂ : ShortComplex C} {φ : S₁ ⟶ S₂}
    {h₁ : S₁.LeftHomologyData} {h₂ : S₂.LeftHomologyData}
    (ψ : LeftHomologyMapData φ h₁ h₂) : RightHomologyMapData (opMap φ) h₂.op h₁.op where
  φQ := ψ.φK.op
  φH := ψ.φH.op
  commp := Quiver.Hom.unop_inj (by simp)
  commg' := Quiver.Hom.unop_inj (by simp)
  commι := Quiver.Hom.unop_inj (by simp)

set_option backward.defeqAttrib.useBackward true in
/-- A left homology map data for a morphism of short complexes in the opposite category
induces a right homology map data in the original category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean#L951).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7db3eb3f9bc867e623dbeaff836577df828c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
