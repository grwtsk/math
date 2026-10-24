# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1a7ebd7fe92f8df79da008e3727ed6f0d221491293440916acf6e0be194e1c7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b154a9b8d1eacb5896bbbb5e",
  "source": {
    "blob": "b22783391f6497c23885f75ab00c582d6ca0d898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b154a9b8d1eacb5896bbbb5ed077d1de188c36f457db6dcf9cd117561d81620d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1a7ebd7fe92f8df79da008e3727ed6f0d221491293440916acf6e0be194e1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ReflectsMonomorphisms F := ReflectsMonomorphisms.mk <| by
  intro X Y f _
  haveI : IsIso (pullback.fst (F.map f) (F.map f)) :=
    isIso_fst_of_mono (F.map f)
  haveI : IsIso (F.map (pullback.fst f f)) := by
    rw [← PreservesPullback.iso_hom_fst]
    exact IsIso.comp_isIso
  haveI : IsIso (pullback.fst f f) := isIso_of_reflects_iso (pullback.fst _ _) F
  exact (pullback.diagonal_isKernelPair f).mono_of_isIso_fst

/-- Fiber functors are faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22783391f6497c23885f75ab00c582d6ca0d898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
