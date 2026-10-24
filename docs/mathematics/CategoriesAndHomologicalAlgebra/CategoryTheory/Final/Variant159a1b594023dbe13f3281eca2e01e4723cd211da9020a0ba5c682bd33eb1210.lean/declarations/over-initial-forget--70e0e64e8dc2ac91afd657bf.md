# Over.initial_forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4c8a144960ecb97e0adcb44454d43cee6ce6f1a4a553df53bc0d6067d67a0f",
  "kind": "instance",
  "lexical_name": "Over.initial_forget",
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
  "slug": "over-initial-forget--70e0e64e8dc2ac91afd657bf",
  "source": {
    "blob": "3d4252f7c42e003d21e3a296f36a9ebba69691b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70e0e64e8dc2ac91afd657bf16adf1b9afe7443595299b4cf83df9acde6ac21f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee4c8a144960ecb97e0adcb44454d43cee6ce6f1a4a553df53bc0d6067d67a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Over.initial_forget [IsCofilteredOrEmpty C] (c : C) : Initial (Over.forget c) :=
  initial_of_exists_of_isCofiltered _
    (fun c' => ⟨mk (IsCofiltered.minToLeft c c'), ⟨IsCofiltered.minToRight c c'⟩⟩)
    (fun {_} {x} s s' => by
      use mk (IsCofiltered.eqHom s s' ≫ x.hom)
      use homMk (IsCofiltered.eqHom s s') (by simp)
      simp only [forget_obj, mk_left, forget_map, homMk_left]
      rw [IsCofiltered.eq_condition])

section LocallySmall

variable {C : Type v₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₁} D] (F : C ⥤ D)

/-- Implementation; use `Functor.Final.exists_coeq instead`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4252f7c42e003d21e3a296f36a9ebba69691b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
