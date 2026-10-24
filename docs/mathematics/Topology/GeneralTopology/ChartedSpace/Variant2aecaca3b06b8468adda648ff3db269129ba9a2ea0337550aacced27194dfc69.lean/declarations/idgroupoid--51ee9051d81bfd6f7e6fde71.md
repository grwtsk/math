# idGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de9037b244cc8457cbb1dc547bf5e6051b379cb7267a4059e12f05ccc07d1d08",
  "kind": "def",
  "lexical_name": "idGroupoid",
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
  "slug": "idgroupoid--51ee9051d81bfd6f7e6fde71",
  "source": {
    "blob": "91624ebdd0ed1f3a60f24e3887b77235ae23ecb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51ee9051d81bfd6f7e6fde7195493eca6bd1334c50d1ebb755ced6edb681e32d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de9037b244cc8457cbb1dc547bf5e6051b379cb7267a4059e12f05ccc07d1d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idGroupoid (H : Type u) [TopologicalSpace H] : StructureGroupoid H where
  members := {LocalHomeomorph.refl H} ∪ { e : LocalHomeomorph H H | e.source = ∅ }
  trans' e e' he he' := by
    cases' he with he he
    · simpa only [mem_singleton_iff.1 he, refl_trans]
    · have : (e ≫ₕ e').source ⊆ e.source := sep_subset _ _
      rw [he] at this
      have : e ≫ₕ e' ∈ { e : LocalHomeomorph H H | e.source = ∅ } := eq_bot_iff.2 this
      exact (mem_union _ _ _).2 (Or.inr this)
  symm' e he := by
    cases' (mem_union _ _ _).1 he with E E
    · simp [mem_singleton_iff.mp E]
    · right
      simpa only [e.toLocalEquiv.image_source_eq_target.symm, mfld_simps] using E
  id_mem' := mem_union_left _ rfl
  locality' e he := by
    cases' e.source.eq_empty_or_nonempty with h h
    · right
      exact h
    · left
      rcases h with ⟨x, hx⟩
      rcases he x hx with ⟨s, open_s, xs, hs⟩
      have x's : x ∈ (e.restr s).source := by
        rw [restr_source, open_s.interior_eq]
        exact ⟨hx, xs⟩
      cases' hs with hs hs
      · replace hs : LocalHomeomorph.restr e s = LocalHomeomorph.refl H
        · simpa only using hs
        have : (e.restr s).source = univ := by
          rw [hs]
          simp
        have : e.toLocalEquiv.source ∩ interior s = univ := this
        have : univ ⊆ interior s := by
          rw [← this]
          exact inter_subset_right _ _
        have : s = univ := by rwa [open_s.interior_eq, univ_subset_iff] at this
        simpa only [this, restr_univ] using hs
      · exfalso
        rw [mem_setOf_eq] at hs
        rwa [hs] at x's
  eq_on_source' e e' he he'e := by
    cases' he with he he
    · left
      have : e = e' := by
        refine' eq_of_eq_on_source_univ (Setoid.symm he'e) _ _ <;>
          rw [Set.mem_singleton_iff.1 he] <;> rfl
      rwa [← this]
    · right
      have he : e.toLocalEquiv.source = ∅ := he
      rwa [Set.mem_setOf_eq, EqOnSource.source_eq he'e]
#align id_groupoid idGroupoid

/-- Every structure groupoid contains the identity groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91624ebdd0ed1f3a60f24e3887b77235ae23ecb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
