# MonotoneOn.csInf_eq_of_subset_of_forall_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78219f87-fb8b-71f2-fdcd-2f4eca9a06cd",
  "kind": "lemma",
  "lexical_name": "MonotoneOn.csInf_eq_of_subset_of_forall_exists_le",
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
  "slug": "monotoneon-csinf-eq-of-subset-of-forall-exists-le--a3bf817bbf3beec29865656a",
  "source": {
    "blob": "5a5c107b2de7a74cce403dbaa08551ee6a860495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 799,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3bf817bbf3beec29865656acb62ae9932e55296ed9e4e3c62475aacf71b76f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78219f87-fb8b-71f2-fdcd-2f4eca9a06cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonotoneOn.csInf_eq_of_subset_of_forall_exists_le
    [Preorder α] [ConditionallyCompleteLattice β] {f : α → β}
    {s t : Set α} (ht : BddBelow (f '' t)) (hf : MonotoneOn f t)
    (hst : s ⊆ t) (h : ∀ y ∈ t, ∃ x ∈ s, x ≤ y) :
    sInf (f '' s) = sInf (f '' t) := by
  obtain rfl | hs := Set.eq_empty_or_nonempty s
  · obtain rfl : t = ∅ := by simpa [Set.eq_empty_iff_forall_notMem] using h
    rfl
  apply le_antisymm _ (csInf_le_csInf ht (hs.image _) (image_subset _ hst))
  refine le_csInf ((hs.mono hst).image f) ?_
  simp only [mem_image, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
  intro a ha
  obtain ⟨x, hxs, hxa⟩ := h a ha
  exact csInf_le_of_le (ht.mono (image_subset _ hst)) ⟨x, hxs, rfl⟩ (hf (hst hxs) ha hxa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5c107b2de7a74cce403dbaa08551ee6a860495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
