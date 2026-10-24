# IsoCat.toEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f9695d645b680598ac64ae315bc8fbeeec22cb420dbee49becc9d5dcf3a87a5",
  "kind": "def",
  "lexical_name": "IsoCat.toEquivalence",
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
  "slug": "isocat-toequivalence--1f5bd592232d3f0079686855",
  "source": {
    "blob": "06791dc66eca8e95e8609e34ef955954caa56dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variante36ce89d1d9e6543218b9da97f005a8d2a3b81a009390d7801244fe46c822315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f5bd592232d3f00796868555a9c276dce4cb04a4b0b605c37d35cb4350b44d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variante36ce89d1d9e6543218b9da97f005a8d2a3b81a009390d7801244fe46c822315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f9695d645b680598ac64ae315bc8fbeeec22cb420dbee49becc9d5dcf3a87a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsoCat.toEquivalence (e : IsoCat C D) : C ≌ D where
  functor := e.functor
  inverse := e.inverse
  unitIso := eqToIso e.unit_eq
  counitIso := eqToIso e.counit_eq
  functor_unitIso_comp X := by simp [eqToHom_map]

/-- Promotes an equivalence of categories `e : C ≌ D` whose unit and counit isomorphisms are
given by equalities of objects into an `IsoCat C D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variante36ce89d1d9e6543218b9da97f005a8d2a3b81a009390d7801244fe46c822315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variante36ce89d1d9e6543218b9da97f005a8d2a3b81a009390d7801244fe46c822315.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06791dc66eca8e95e8609e34ef955954caa56dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
