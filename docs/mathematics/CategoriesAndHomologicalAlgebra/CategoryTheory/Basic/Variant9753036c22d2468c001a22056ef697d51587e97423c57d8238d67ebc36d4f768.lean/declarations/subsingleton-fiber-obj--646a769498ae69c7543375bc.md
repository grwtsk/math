# subsingleton_fiber_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfd6e9db-a955-00b4-aecd-5ecf7337b5b5",
  "kind": "lemma",
  "lexical_name": "subsingleton_fiber_obj",
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
  "slug": "subsingleton-fiber-obj--646a769498ae69c7543375bc",
  "source": {
    "blob": "8779ecc425a08aafddbb26e9b9c238de2476061c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:646a769498ae69c7543375bc7968dbebdc339cc2f4188fafe0c31f6857e64e1f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfd6e9db-a955-00b4-aecd-5ecf7337b5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_fiber_obj {U T : C} (f : U ⟶ T) [Mono f] (hT : IsTerminal T) :
    Subsingleton (Φ.fiber.obj U) where
  allEq _ _ := Φ.fiber_map_injective_of_mono f (by
    have := Φ.uniqueFiberObj T hT
    subsingleton)

end

variable (F : A ⥤ B) [LocallySmall.{w} C] [PreservesFilteredColimitsOfSize.{w, w} F]

/-- If `Φ` is a point of a site and `F : A ⥤ B` is a functor which preserves
filtered colimits, then taking fibers of presheaves at `Φ` commutes with `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8779ecc425a08aafddbb26e9b9c238de2476061c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
