# ResourceCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ebd94141d849745edc411d564f255c0ca21fa090ca8395e168d05eca11ba5d8",
  "kind": "structure",
  "lexical_name": "ResourceCategory",
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
  "slug": "resourcecategory--c1a5c9c063c7645dda6c8f62",
  "source": {
    "blob": "643d60890edb063e4283ba9bb28d9233a642c36d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ResourceEnrichedCoupling/Variant75b8840e33444fd86bde53b2a1fb1a48c8d0a6ca2bfd08634535c8e3d45dc06c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1a5c9c063c7645dda6c8f625273165778ea8d4cd7ba3243ffb3ccdb7e0be7e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ResourceEnrichedCoupling/Variant75b8840e33444fd86bde53b2a1fb1a48c8d0a6ca2bfd08634535c8e3d45dc06c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ebd94141d849745edc411d564f255c0ca21fa090ca8395e168d05eca11ba5d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResourceCategory where
  Object : Type u
  Hom : Object → Object → Type v
  identity : ∀ object, Hom object object
  comp :
    ∀ {source middle target},
      Hom source middle → Hom middle target → Hom source target
  comp_identity_left :
    ∀ {source target} (arrow : Hom source target),
      comp (identity source) arrow = arrow
  comp_identity_right :
    ∀ {source target} (arrow : Hom source target),
      comp arrow (identity target) = arrow
  comp_assoc :
    ∀ {a b c d}
      (first : Hom a b) (second : Hom b c) (third : Hom c d),
      comp (comp first second) third =
        comp first (comp second third)
  cost : ∀ {source target}, Hom source target → ResourceCost
  advantageLoss : ∀ {source target}, Hom source target → ℝ≥0
  identityCost :
    ∀ object, (cost (identity object)).Le .zero
  compositionCost :
    ∀ {source middle target}
      (first : Hom source middle) (second : Hom middle target),
      (cost (comp first second)).Le
        ((cost first).sequential (cost second))
  identityAdvantageLoss :
    ∀ object, advantageLoss (identity object) = 0
  compositionAdvantageLoss :
    ∀ {source middle target}
      (first : Hom source middle) (second : Hom middle target),
      advantageLoss (comp first second) ≤
        advantageLoss first + advantageLoss second

/--
A lax resource-enriched coupling between effective arithmetic sources and
security-game reductions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ResourceEnrichedCoupling/Variant75b8840e33444fd86bde53b2a1fb1a48c8d0a6ca2bfd08634535c8e3d45dc06c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ResourceEnrichedCoupling/Variant75b8840e33444fd86bde53b2a1fb1a48c8d0a6ca2bfd08634535c8e3d45dc06c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643d60890edb063e4283ba9bb28d9233a642c36d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
