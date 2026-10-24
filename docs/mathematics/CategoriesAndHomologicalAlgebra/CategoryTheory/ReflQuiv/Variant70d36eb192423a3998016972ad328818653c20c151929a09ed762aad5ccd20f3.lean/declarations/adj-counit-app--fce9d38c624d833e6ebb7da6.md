# adj.counit.app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c60d3cac91fda353c380c8519d1c7c961a3d01105b2187999807b2120c4e1301",
  "kind": "def",
  "lexical_name": "adj.counit.app",
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
  "slug": "adj-counit-app--fce9d38c624d833e6ebb7da6",
  "source": {
    "blob": "c827a84dc4378601884f7f166d9231812d7035e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fce9d38c624d833e6ebb7da61d7216fc0dcd33155c13c00065c7be9d88c18658",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c60d3cac91fda353c380c8519d1c7c961a3d01105b2187999807b2120c4e1301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adj.counit.app (C : Type u) [Category.{max u v} C] :
    Cat.freeRefl.obj (ReflQuiv.of C) ⥤ C :=
  Quotient.lift Cat.FreeReflRel (pathComposition C) (by
    intro x y f g rel
    cases rel
    unfold pathComposition
    simp only [Adjunction.mkOfHomEquiv_counit_app, Equiv.coe_fn_symm_mk,
      Quiv.lift_map, Prefunctor.mapPath_toPath, composePath_toPath]
    rfl)

/-- The counit of `ReflQuiv.adj` is closely related to the counit of `Quiv.adj`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c827a84dc4378601884f7f166d9231812d7035e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
