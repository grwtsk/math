# mapAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5b740636840a596fa5444b590d99d23d3737e0d8a339b93af02745cf40abc96",
  "kind": "def",
  "lexical_name": "mapAdjunction",
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
  "slug": "mapadjunction--d212af4a596d5f019e0aaca9",
  "source": {
    "blob": "303eaa3a58f23e6c48fd911c47b25de3ea38ae10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 386,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d212af4a596d5f019e0aaca9597bc16bfbb3c085bed454554c54bb10d4f050fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5b740636840a596fa5444b590d99d23d3737e0d8a339b93af02745cf40abc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAdjunction : F.map f ⊣ F.map g where
  unit := (F.mapId a).inv ≫ F.map₂ adj.unit ≫ (F.mapComp f g).hom
  counit := (F.mapComp g f).inv ≫ F.map₂ adj.counit ≫ (F.mapId b).hom
  left_triangle := by simp [leftZigzag_map, bicategoricalComp, F.map₂_iso_inv]
  right_triangle := by simp [rightZigzag_map, bicategoricalComp, F.map₂_iso_inv]

end Pseudofunctor

namespace StrictPseudofunctor

variable (F : StrictPseudofunctor B C) (adj : f ⊣ g)

/-- A strict pseudofunctor carries an adjunction `f ⊣ g` to an adjunction
`F.map f ⊣ F.map g`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303eaa3a58f23e6c48fd911c47b25de3ea38ae10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
