# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3647e5c488cdd32783dc83c2521efcabae80009d96215de4514e31c73690db01",
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
  "slug": "instance--d0eaf32f30fd811dfaf9d086",
  "source": {
    "blob": "f7eecb27e8705b47215657356ef9fe0b13e12fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0eaf32f30fd811dfaf9d0863d89a3956aca98f564770a374454b3d08a84563f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3647e5c488cdd32783dc83c2521efcabae80009d96215de4514e31c73690db01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) baire_category_theorem_locally_compact [TopologicalSpace α] [T2Space α]
    [LocallyCompactSpace α] : BaireSpace α := by
  constructor
  intro f ho hd
  /- To prove that an intersection of open dense subsets is dense, prove that its intersection
    with any open neighbourhood `U` is dense. Define recursively a decreasing sequence `K` of
    compact neighbourhoods: start with some compact neighbourhood inside `U`, then at each step,
    take its interior, intersect with `f n`, then choose a compact neighbourhood inside the
    intersection. -/
  apply dense_iff_inter_open.2
  intro U U_open U_nonempty
  rcases exists_positiveCompacts_subset U_open U_nonempty with ⟨K₀, hK₀⟩
  have : ∀ (n) (K : PositiveCompacts α), ∃ K' : PositiveCompacts α, ↑K' ⊆ f n ∩ interior K := by
    refine' fun n K => exists_positiveCompacts_subset ((ho n).inter isOpen_interior) _
    rw [inter_comm]
    exact (hd n).inter_open_nonempty _ isOpen_interior K.interior_nonempty
  choose K_next hK_next using this
  let K : ℕ → PositiveCompacts α := fun n => Nat.recOn n K₀ K_next
  -- This is a decreasing sequence of positive compacts contained in suitable open sets `f n`.
  have hK_decreasing : ∀ n : ℕ, ((K (n + 1)).carrier) ⊆ (f n ∩ (K n).carrier) :=
    fun n => (hK_next n (K n)).trans <| inter_subset_inter_right _ interior_subset
  -- Prove that ̀`⋂ n : ℕ, K n` is inside `U ∩ ⋂ n : ℕ, f n`.
  have hK_subset : (⋂ n, (K n).carrier : Set α) ⊆ U ∩ ⋂ n, f n := by
    intro x hx
    simp only [mem_iInter] at hx
    simp only [mem_inter_iff, mem_inter] at hx ⊢
    refine' ⟨hK₀ <| hx 0, _⟩
    simp only [mem_iInter]
    exact fun n => (hK_decreasing n (hx (n + 1))).1
  /- Prove that `⋂ n : ℕ, K n` is not empty, as an intersection of a decreasing sequence
    of nonempty compact subsets. -/
  have hK_nonempty : (⋂ n, (K n).carrier : Set α).Nonempty :=
    IsCompact.nonempty_iInter_of_sequence_nonempty_compact_closed _
      (fun n => (hK_decreasing n).trans (inter_subset_right _ _)) (fun n => (K n).nonempty)
      (K 0).isCompact fun n => (K n).isCompact.isClosed
  exact hK_nonempty.mono hK_subset
#align baire_category_theorem_locally_compact baire_category_theorem_locally_compact

variable [TopologicalSpace α] [BaireSpace α]

/-- Definition of a Baire space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7eecb27e8705b47215657356ef9fe0b13e12fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
