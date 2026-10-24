# HasShift.localized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e066dfe57e44630abbe1a219e521d838c078f6ba6cbe715be5a11d9165ca0f98",
  "kind": "def",
  "lexical_name": "HasShift.localized",
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
  "slug": "hasshift-localized--e34c92190608028f51bb16c9",
  "source": {
    "blob": "2e078a3576905119958f0614f89f837d2f1e1d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e34c92190608028f51bb16c9f38e8e342508be24cb2eae38b60e46246fba9501",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e066dfe57e44630abbe1a219e521d838c078f6ba6cbe715be5a11d9165ca0f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HasShift.localized : HasShift D A :=
  have := Localization.full_whiskeringLeft L W D
  have := Localization.faithful_whiskeringLeft L W D
  HasShift.induced L A
    (fun a => Localization.lift (shiftFunctor C a ⋙ L)
      (MorphismProperty.IsCompatibleWithShift.shiftFunctor_comp_inverts L W a) L)
    (fun _ => Localization.fac _ _ _)

/-- The localization functor `L : C ⥤ D` is compatible with the shift. -/
@[nolint unusedHavesSuffices, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e078a3576905119958f0614f89f837d2f1e1d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
