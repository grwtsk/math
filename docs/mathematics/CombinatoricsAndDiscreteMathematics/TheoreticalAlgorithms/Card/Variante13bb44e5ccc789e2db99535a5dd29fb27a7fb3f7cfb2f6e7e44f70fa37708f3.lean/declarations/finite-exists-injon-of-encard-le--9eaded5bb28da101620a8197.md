# Finite.exists_injOn_of_encard_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:762ca0a9-4024-6d1b-9c29-6a310da56f14",
  "kind": "theorem",
  "lexical_name": "Finite.exists_injOn_of_encard_le",
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
  "slug": "finite-exists-injon-of-encard-le--9eaded5bb28da101620a8197",
  "source": {
    "blob": "16945019db9e8a5bfbfb2033b2e555b7d7b7eaf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 425,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variante13bb44e5ccc789e2db99535a5dd29fb27a7fb3f7cfb2f6e7e44f70fa37708f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eaded5bb28da101620a81973b4ea989cb44070776bbd774e49ec2fac22c88a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variante13bb44e5ccc789e2db99535a5dd29fb27a7fb3f7cfb2f6e7e44f70fa37708f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:762ca0a9-4024-6d1b-9c29-6a310da56f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.exists_injOn_of_encard_le [Nonempty β] {s : Set α} {t : Set β} (hs : s.Finite)
    (hle : s.encard ≤ t.encard) : ∃ (f : α → β), s ⊆ f ⁻¹' t ∧ InjOn f s := by
  classical
  obtain (rfl | h | ⟨a, has, -⟩) := s.eq_empty_or_encard_eq_top_or_encard_diff_singleton_lt
  · simp
  · exact (encard_ne_top_iff.mpr hs h).elim
  obtain ⟨b, hbt⟩ := encard_pos.1 ((encard_pos.2 ⟨_, has⟩).trans_le hle)
  have hle' : (s \ {a}).encard ≤ (t \ {b}).encard
  · rwa [←WithTop.add_le_add_iff_right WithTop.one_ne_top,
    encard_diff_singleton_add_one has, encard_diff_singleton_add_one hbt]

  obtain ⟨f₀, hf₀s, hinj⟩ := exists_injOn_of_encard_le (hs.diff {a}) hle'
  simp only [preimage_diff, subset_def, mem_diff, mem_singleton_iff, mem_preimage, and_imp] at hf₀s

  use Function.update f₀ a b
  rw [←insert_eq_of_mem has, ←insert_diff_singleton, injOn_insert (fun h ↦ h.2 rfl)]
  simp only [mem_diff, mem_singleton_iff, not_true, and_false, insert_diff_singleton, subset_def,
    mem_insert_iff, mem_preimage, ne_eq, Function.update_apply, forall_eq_or_imp, ite_true, and_imp,
    mem_image, ite_eq_left_iff, not_exists, not_and, not_forall, exists_prop, and_iff_right hbt]

  refine ⟨?_,?_,fun x hxs hxa ↦ ⟨hxa, (hf₀s x hxs hxa).2⟩⟩
  · rintro x hx; split_ifs with h; assumption; exact (hf₀s x hx h).1
  exact InjOn.congr hinj (fun x ⟨_, hxa⟩ ↦ by rwa [Function.update_noteq])
termination_by _ => encard s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variante13bb44e5ccc789e2db99535a5dd29fb27a7fb3f7cfb2f6e7e44f70fa37708f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variante13bb44e5ccc789e2db99535a5dd29fb27a7fb3f7cfb2f6e7e44f70fa37708f3.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16945019db9e8a5bfbfb2033b2e555b7d7b7eaf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
