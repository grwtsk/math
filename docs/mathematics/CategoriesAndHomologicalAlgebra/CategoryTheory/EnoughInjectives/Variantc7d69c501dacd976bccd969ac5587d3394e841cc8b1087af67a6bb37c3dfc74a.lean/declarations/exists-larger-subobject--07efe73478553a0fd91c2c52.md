# exists_larger_subobject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e03ced67305858cd0ae71a5a1b78ce98b5d91986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14705d51-24e1-82eb-565d-48e2191bb563",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50577700-c9ad-7e41-e2da-5e63906c7ad8",
  "kind": "lemma",
  "lexical_name": "exists_larger_subobject",
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
  "slug": "exists-larger-subobject--07efe73478553a0fd91c2c52",
  "source": {
    "blob": "e03ced67305858cd0ae71a5a1b78ce98b5d91986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07efe73478553a0fd91c2c52146e1dfb9cb419487bf91a2566f0eda238420fe0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50577700-c9ad-7e41-e2da-5e63906c7ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_larger_subobject {X : C} (A : Subobject X) (hA : A ≠ ⊤) :
    ∃ (A' : Subobject X) (h : A < A'),
      (generatingMonomorphisms G).pushouts (Subobject.ofLE A A' h.le) := by
  induction' A using Subobject.ind with Y f _
  obtain ⟨X', i, p', hi, hi', hp', fac⟩ := exists_pushouts hG f
    (by simpa only [Subobject.isIso_iff_mk_eq_top] using hA)
  refine ⟨Subobject.mk p', Subobject.mk_lt_mk_of_comm i fac hi',
    (MorphismProperty.arrow_mk_iso_iff _ ?_).2 hi⟩
  refine Arrow.isoMk (Subobject.underlyingIso f) (Subobject.underlyingIso p') ?_
  dsimp
  simp only [← cancel_mono p', assoc, fac,
    Subobject.underlyingIso_hom_comp_eq_mk, Subobject.ofLE_arrow]

variable {X : C}

open Classical in
/-- Assuming `G : C` is a generator, `X : C`, and `A : Subobject X`,
this is a subobject of `X` which is `⊤` if `A = ⊤`, and otherwise
it is a larger subobject given by the lemma `exists_larger_subobject`.
The inclusion of `A` in `largerSubobject hG A` is a pushout of
a monomorphism in the family `generatingMonomorphisms G`
(see `pushouts_ofLE_le_largerSubobject`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03ced67305858cd0ae71a5a1b78ce98b5d91986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
