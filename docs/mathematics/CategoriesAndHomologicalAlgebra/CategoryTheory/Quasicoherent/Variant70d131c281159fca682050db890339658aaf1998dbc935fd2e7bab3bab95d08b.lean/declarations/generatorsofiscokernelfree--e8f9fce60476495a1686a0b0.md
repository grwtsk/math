# generatorsOfIsCokernelFree_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b897d7c-4a79-7d10-1abb-35298b381aa6",
  "kind": "theorem",
  "lexical_name": "generatorsOfIsCokernelFree_π",
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
  "slug": "generatorsofiscokernelfree--e8f9fce60476495a1686a0b0",
  "source": {
    "blob": "31970a43c74f2305849a8e268639116d24d6d885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f9fce60476495a1686a0b0f5b749c23937b2807d70e4ef47ac039228e5a95c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b897d7c-4a79-7d10-1abb-35298b381aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generatorsOfIsCokernelFree_π {M : SheafOfModules.{u} R}
    (f : free ι ⟶ free σ) (g : free σ ⟶ M) (H : f ≫ g = 0)
    (H' : IsColimit (CokernelCofork.ofπ g H)) :
    (generatorsOfIsCokernelFree f g H H').π = g := M.freeHomEquiv.symm_apply_apply g

set_option backward.isDefEq.respectTransparency false in
/-- Given two morphisms of sheaves of `R`-modules `f : free ι ⟶ free σ` and `g : free σ ⟶ M`
satisfying `H : f ≫ g = 0` and `IsColimit (CokernelCofork.ofπ g H)`, we obtain
relations of `Presentation M`. -/
@[simps! I s]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31970a43c74f2305849a8e268639116d24d6d885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
