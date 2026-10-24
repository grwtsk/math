# idGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0bad2292e37d5db1369d129793a9d8c191f78f57f8848176d1afab1efa71336",
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
  "slug": "idgroupoid--93c8a9e9f8d9766295429dbe",
  "source": {
    "blob": "b585e5d057f3ae5cd756a2438c2011a9488bab64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93c8a9e9f8d9766295429dbe146fb8590ba78d842a282e4068b8ad1b144e92a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0bad2292e37d5db1369d129793a9d8c191f78f57f8848176d1afab1efa71336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idGroupoid (H : Type*) [TopologicalSpace H] : StructureGroupoid H where
  members := {OpenPartialHomeomorph.refl H} ∪ { e : OpenPartialHomeomorph H H | e.source = ∅ }
  trans' e e' he he' := by
    rcases he with he | he
    · simpa only [mem_singleton_iff.1 he, refl_trans]
    · have : (e ≫ₕ e').source ⊆ e.source := sep_subset _ _
      rw [he] at this
      have : e ≫ₕ e' ∈ { e : OpenPartialHomeomorph H H | e.source = ∅ } := eq_bot_iff.2 this
      exact (mem_union _ _ _).2 (Or.inr this)
  symm' e he := by
    rcases (mem_union _ _ _).1 he with E | E
    · simp [mem_singleton_iff.mp E]
    · right
      simpa only [e.toPartialEquiv.image_source_eq_target.symm, mfld_simps] using! E
  id_mem' := mem_union_left _ rfl
  locality' e he := by
    rcases e.source.eq_empty_or_nonempty with h | h
    · right
      exact h
    · left
      rcases h with ⟨x, hx⟩
      rcases he x hx with ⟨s, open_s, xs, hs⟩
      have x's : x ∈ (e.restr s).source := by
        rw [restr_source, open_s.interior_eq]
        exact ⟨hx, xs⟩
      rcases hs with hs | hs
      · replace hs : OpenPartialHomeomorph.restr e s = OpenPartialHomeomorph.refl H := by
          simpa only using! hs
        have : (e.restr s).source = univ := by
          rw [hs]
          simp
        have : e.toPartialEquiv.source ∩ interior s = univ := this
        have : univ ⊆ interior s := by
          rw [← this]
          exact inter_subset_right
        have : s = univ := by rwa [open_s.interior_eq, univ_subset_iff] at this
        simpa only [this, restr_univ] using! hs
      · exfalso
        rw [mem_ofPred_eq] at hs
        rwa [hs] at x's
  mem_of_eqOnSource' e e' he he'e := by
    rcases he with he | he
    · left
      have : e = e' := by
        refine eq_of_eqOnSource_univ (Setoid.symm he'e) ?_ ?_ <;>
          rw [Set.mem_singleton_iff.1 he] <;> rfl
      rwa [← this]
    · right
      have he : e.toPartialEquiv.source = ∅ := he
      rwa [Set.mem_ofPred_eq, EqOnSource.source_eq he'e]

/-- Every structure groupoid contains the identity groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b585e5d057f3ae5cd756a2438c2011a9488bab64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
