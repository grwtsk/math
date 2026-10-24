# EffectivePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:092e331cc738307e0b35ea3050a0774e42ca402479b108d68a147e844032686e",
  "kind": "structure",
  "lexical_name": "EffectivePresentation",
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
  "slug": "effectivepresentation--dd6063a97d975a6b2e72918d",
  "source": {
    "blob": "f5c90ca497492ebb38601ee99bb5960ba50d817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd6063a97d975a6b2e72918d98f14d9a80785affecb1ace278b089e16f7948dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:092e331cc738307e0b35ea3050a0774e42ca402479b108d68a147e844032686e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectivePresentation (X : D) where
  /-- The object of `C` giving the source of the effective epi -/
  p : C
  /-- The morphism `F.obj p ⟶ X` -/
  f : F.obj p ⟶ X
  /-- `f` is an effective epi -/
  effectiveEpi : EffectiveEpi f

/--
`D` has *effectively enough objects with respect to the functor `F` if every object has an
effective presentation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c90ca497492ebb38601ee99bb5960ba50d817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
