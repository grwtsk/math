# Prod.opensMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42fbbcccbb662d8ec5ada37bd62dafa7f5a8ce59029d5acdeedbdf4e5f6634d2",
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
  "slug": "prod-opensmeasurablespace--633af84cc4e43283d5f1c845",
  "source": {
    "blob": "ec87012329030fbd534787292e44cc35682b104e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 394,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:633af84cc4e43283d5f1c8459bde5560f0daeea872179cc7a5c869817077957f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42fbbcccbb662d8ec5ada37bd62dafa7f5a8ce59029d5acdeedbdf4e5f6634d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.opensMeasurableSpace [h : SecondCountableTopologyEither α β] :
    OpensMeasurableSpace (α × β) := by
  apply opensMeasurableSpace_iff_forall_measurableSet.2 (fun s hs ↦ ?_)
  rcases h.out with hα|hβ
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
        simp only [mem_iUnion, mem_prod, mem_setOf_eq, exists_and_left, exists_prop]
        exact ⟨a, ya, ha, v, v_open, yv, (Set.prod_mono_left au).trans huv⟩
      · rintro ⟨y1, y2⟩ hy
        simp only [mem_iUnion, mem_prod, mem_setOf_eq, exists_and_left, exists_prop] at hy
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
        simp only [mem_iUnion, mem_prod, mem_setOf_eq, exists_and_left, exists_prop]
        exact ⟨a, ⟨u, u_open, yu, (Set.prod_mono_right au).trans huv⟩, ha, ya⟩
      · rintro ⟨y1, y2⟩ hy
        simp only [mem_iUnion, mem_prod, mem_setOf_eq, exists_and_left, exists_prop] at hy
        rcases hy with ⟨a, ⟨b, -, yb, hb⟩, -, ya⟩
        exact hb (mem_prod.2 ⟨yb, ya⟩)
    rw [this]
    apply MeasurableSet.biUnion (countable_countableBasis β) (fun a ha ↦ ?_)
    exact (A a).measurableSet.prod (isOpen_of_mem_countableBasis ha).measurableSet

variable {α' : Type*} [TopologicalSpace α'] [MeasurableSpace α']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec87012329030fbd534787292e44cc35682b104e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
