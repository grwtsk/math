# ofLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20cd229a8b8b750f15ccd4416f04d70d6f900ebe8dff9f8b8029e75dff12ba9a",
  "kind": "def",
  "lexical_name": "ofLeftAdjoint",
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
  "slug": "ofleftadjoint--773dd3cb946bd453e98c7ada",
  "source": {
    "blob": "f5589fae47faa1708576e10f9d8a19867fca85e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 757,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:773dd3cb946bd453e98c7ada139bf3b2396d5ac89d5156ad0de32db6bdf25e61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20cd229a8b8b750f15ccd4416f04d70d6f900ebe8dff9f8b8029e75dff12ba9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 757–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofLeftAdjoint {D : Type u₄} [Category.{v₄} D] {G : K ⥤ D} (h : Cocone G ⥤ Cocone F)
    [IsLeftAdjoint h] {c : Cocone G} (t : IsColimit c) : IsColimit (h.obj c) :=
  mkCoconeMorphism
    (fun s => ((Adjunction.ofLeftAdjoint h).homEquiv c s).symm (t.descCoconeMorphism _)) fun _ _ =>
    (Adjunction.homEquiv_apply_eq _ _ _).1 t.uniq_cocone_morphism
#align category_theory.limits.is_colimit.of_left_adjoint CategoryTheory.Limits.IsColimit.ofLeftAdjoint

/-- Given two functors which have equivalent categories of cocones,
we can transport a colimiting cocone across the equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean#L757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5589fae47faa1708576e10f9d8a19867fca85e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
