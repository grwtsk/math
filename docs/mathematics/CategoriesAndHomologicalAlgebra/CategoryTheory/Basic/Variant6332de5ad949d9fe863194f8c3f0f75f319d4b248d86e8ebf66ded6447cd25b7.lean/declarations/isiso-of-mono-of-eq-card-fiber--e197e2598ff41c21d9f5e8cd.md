# isIso_of_mono_of_eq_card_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e99f55cf-64e3-ad86-1fe4-eafd4d97c1e2",
  "kind": "lemma",
  "lexical_name": "isIso_of_mono_of_eq_card_fiber",
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
  "slug": "isiso-of-mono-of-eq-card-fiber--e197e2598ff41c21d9f5e8cd",
  "source": {
    "blob": "7d16013b86fdcff78db9ad98331974958f929f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 360,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e197e2598ff41c21d9f5e8cd9b77035c838e535869fb506959eb546a1f136ad6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e99f55cf-64e3-ad86-1fe4-eafd4d97c1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_of_mono_of_eq_card_fiber {X Y : C} (f : X ⟶ Y) [Mono f]
    (h : Nat.card (F.obj X) = Nat.card (F.obj Y)) : IsIso f := by
  have : IsIso (F.map f) := by
    apply (ConcreteCategory.isIso_iff_bijective (F.map f)).mpr
    apply (Fintype.bijective_iff_injective_and_card (F.map f)).mpr
    refine ⟨injective_of_mono_of_preservesPullback (F.map f), ?_⟩
    simp only [← Nat.card_eq_fintype_card, h]
  exact isIso_of_reflects_iso f F

/-- Along a mono that is not an iso, the cardinality of the fiber strictly increases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6332de5ad949d9fe863194f8c3f0f75f319d4b248d86e8ebf66ded6447cd25b7.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d16013b86fdcff78db9ad98331974958f929f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
