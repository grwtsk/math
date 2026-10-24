# Prod.opensMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f7ded4c8b6b247496c11bfaa04cbe2b7ed4f942f3f2ae5a6985e786f01bc4ee",
  "kind": "instance",
  "lexical_name": "Prod.opensMeasurableSpace",
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
  "slug": "prod-opensmeasurablespace--ca26198477d0dda8a0d520ba",
  "source": {
    "blob": "2e84b41471f757f1a130e0cb9887c77901ab936c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 413,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca26198477d0dda8a0d520bae7dc036da6c02ff4d5c5f3ce89c5f60a538ed888",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f7ded4c8b6b247496c11bfaa04cbe2b7ed4f942f3f2ae5a6985e786f01bc4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.opensMeasurableSpace [h : SecondCountableTopologyEither α β] :
    OpensMeasurableSpace (α × β) := by
  apply opensMeasurableSpace_iff_forall_measurableSet.2 (fun s hs ↦ ?_)
  rcases h.out with hα | hβ
  · let F : Set α → Set β := fun a ↦ {y | ∃ b, IsOpen b ∧ y ∈ b ∧ a ×ˢ b ⊆ s}
    have A : ∀ a, IsOpen (F a) := by
      intro a
      apply isOpen_iff_forall_mem_open.2
      rintro y ⟨b, b_open, yb, hb⟩
      exact ⟨b, fun z zb ↦ ⟨b, b_open, zb, hb⟩, b_open, yb⟩
    have : s = ⋃ a ∈ countableBasis α, a ×ˢ F a := by
      apply Subset.antisymm
      · rintro ⟨y1, y2⟩ hy
        rcases isOpen_prod_iff.1 hs y1 y2 hy with ⟨u, v, u_open, v_open, yu, yv, huv⟩
        obtain ⟨a, ha, ya, au⟩ : ∃ a ∈ countableBasis α, y1 ∈ a ∧ a ⊆ u :=
          IsTopologicalBasis.exists_subset_of_mem_open (isBasis_countableBasis α) yu u_open
        simp only [mem_iUnion, mem_prod, exists_and_left, exists_prop]
        exact ⟨a, ya, ha, v, v_open, yv, (Set.prod_mono_left au).trans huv⟩
      · rintro ⟨y1, y2⟩ hy
        simp only [mem_iUnion, mem_prod, exists_and_left, exists_prop] at hy
        rcases hy with ⟨a, ya, -, b, -, yb, hb⟩
        exact hb (mem_prod.2 ⟨ya, yb⟩)
    rw [this]
    apply MeasurableSet.biUnion (countable_countableBasis α) (fun a ha ↦ ?_)
    exact (isOpen_of_mem_countableBasis ha).measurableSet.prod (A a).measurableSet
  · let F : Set β → Set α := fun a ↦ {y | ∃ b, IsOpen b ∧ y ∈ b ∧ b ×ˢ a ⊆ s}
    have A : ∀ a, IsOpen (F a) := by
      intro a
      apply isOpen_iff_forall_mem_open.2
      rintro y ⟨b, b_open, yb, hb⟩
      exact ⟨b, fun z zb ↦ ⟨b, b_open, zb, hb⟩, b_open, yb⟩
    have : s = ⋃ a ∈ countableBasis β, F a ×ˢ a := by
      apply Subset.antisymm
      · rintro ⟨y1, y2⟩ hy
        rcases isOpen_prod_iff.1 hs y1 y2 hy with ⟨u, v, u_open, v_open, yu, yv, huv⟩
        obtain ⟨a, ha, ya, au⟩ : ∃ a ∈ countableBasis β, y2 ∈ a ∧ a ⊆ v :=
          IsTopologicalBasis.exists_subset_of_mem_open (isBasis_countableBasis β) yv v_open
        simp only [mem_iUnion, mem_prod, exists_and_left, exists_prop]
        exact ⟨a, ⟨u, u_open, yu, (Set.prod_mono_right au).trans huv⟩, ha, ya⟩
      · rintro ⟨y1, y2⟩ hy
        simp only [mem_iUnion, mem_prod, exists_and_left, exists_prop] at hy
        rcases hy with ⟨a, ⟨b, -, yb, hb⟩, -, ya⟩
        exact hb (mem_prod.2 ⟨yb, ya⟩)
    rw [this]
    apply MeasurableSet.biUnion (countable_countableBasis β) (fun a ha ↦ ?_)
    exact (A a).measurableSet.prod (isOpen_of_mem_countableBasis ha).measurableSet

variable {α' : Type*} [TopologicalSpace α'] [MeasurableSpace α']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e84b41471f757f1a130e0cb9887c77901ab936c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
