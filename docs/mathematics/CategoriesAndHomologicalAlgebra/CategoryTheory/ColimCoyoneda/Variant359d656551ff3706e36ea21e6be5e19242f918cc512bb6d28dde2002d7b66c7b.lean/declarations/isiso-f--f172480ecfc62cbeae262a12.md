# isIso_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0725b123-d0e6-55a5-f14a-ef6c9861cd11",
  "kind": "lemma",
  "lexical_name": "isIso_f",
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
  "slug": "isiso-f--f172480ecfc62cbeae262a12",
  "source": {
    "blob": "e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f172480ecfc62cbeae262a12a4d0cddacfd3819fd12aa3292e913090f6059261",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0725b123-d0e6-55a5-f14a-ef6c9861cd11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_f [IsFiltered J] : IsIso (f z) := by
  refine ((MorphismProperty.isomorphisms C).arrow_mk_iso_iff ?_).1
    (MorphismProperty.of_isPullback
      ((IsPullback.of_hasPullback c.ι ((Functor.const _).map z)).map colim) ?_)
  · refine Arrow.isoMk (Iso.refl _)
      (IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) (isColimitConstCocone J X)) ?_
    dsimp
    ext j
    rw [Category.id_comp, ι_colimMap_assoc, colimit.comp_coconePointUniqueUpToIso_hom,
      constCocone_ι, NatTrans.id_app, Category.comp_id]
    apply hf
  · refine ((MorphismProperty.isomorphisms C).arrow_mk_iso_iff ?_).2
      (inferInstanceAs (IsIso (𝟙 c.pt)))
    exact Arrow.isoMk (IsColimit.coconePointUniqueUpToIso (colimit.isColimit Y) hc)
      (IsColimit.coconePointUniqueUpToIso (colimit.isColimit _)
        (isColimitConstCocone J c.pt))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
