# exists_fun_isClopen_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21ef24a75a090fef63c3765c810cde46f3257256",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b31c72f-3076-a57c-248b-948af671e00b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e617cd0a-bc02-23b8-7982-3496b56c4427",
  "kind": "lemma",
  "lexical_name": "exists_fun_isClopen_of_infinite",
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
  "slug": "exists-fun-isclopen-of-infinite--183d9d71ceb1191cf92afe51",
  "source": {
    "blob": "21ef24a75a090fef63c3765c810cde46f3257256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 629,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183d9d71ceb1191cf92afe5112450b5f760c9e2c8992f34d76f00dc135fcbd6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e617cd0a-bc02-23b8-7982-3496b56c4427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_fun_isClopen_of_infinite [Infinite (ConnectedComponents α)] (n : ℕ) (hn : 0 < n) :
    ∃ (U : Fin n → Set α), (∀ i, IsClopen (U i)) ∧ (∀ i, (U i).Nonempty) ∧
      Pairwise (Function.onFun Disjoint U) ∧ ⋃ i, U i = Set.univ := by
  cases isEmpty_or_nonempty α
  · exact (not_finite (ConnectedComponents α)).elim
  obtain (_ | n) := n
  · simp at hn
  clear hn
  induction n with
  | zero => exact ⟨![.univ], by simp [isClopen_univ, Set.iUnion_fin_add_one_eq_iUnion_succ]⟩
  | succ n IH =>
    obtain ⟨U, h₁, h₂, h₃, h₄⟩ := IH
    obtain ⟨i, hi⟩ : ∃ i, ¬ IsConnected (U i) := by
      simp_rw [isConnected_iff_connectedSpace, ← not_forall]
      exact fun _ ↦ not_finite_iff_infinite.mpr ‹_› (.of_equiv _ (equivOfIsClopen h₁ h₃ h₄).symm)
    obtain ⟨U, rfl⟩ := (Equiv.piCongrLeft (fun _ ↦ Set α) (Equiv.swap 0 i)).symm.surjective U
    cases U using Fin.consCases with | cons s U =>
    simp only [Equiv.piCongrLeft_symm_apply, Equiv.swap_apply_right, Fin.cons_zero] at *
    obtain ⟨a, b, ha, hb, ha', hb', hab, rfl⟩ := (show IsClopen s by simpa using h₁ i)
      |>.not_isPreconnected_iff.mp (mt (⟨by simpa using h₂ i, ·⟩) hi)
    refine ⟨Fin.cons a (Fin.cons b U), ?_, ?_, ?_, ?_⟩
    · simpa [Fin.forall_iff_succ, *] using fun x ↦ h₁ (Equiv.swap 0 i (.succ x))
    · simpa [Fin.forall_iff_succ, *] using fun x ↦ h₂ (Equiv.swap 0 i (.succ x))
    · have h₃' (j : _) : Disjoint (U j) a ∧ Disjoint (U j) b := by
        simpa [onFun] using h₃ ((Equiv.swap 0 i).injective.ne (Fin.succ_ne_zero j))
      simpa [Pairwise, Fin.forall_iff_succ, onFun, hab, disjoint_comm (a := a),
        disjoint_comm (a := b), h₃'] using
        h₃.comp_of_injective ((Equiv.swap 0 i).injective.comp (Fin.succ_injective _))
    · simpa [← union_assoc, (Equiv.surjective _).iUnion_comp] using h₄

end ConnectedComponents

/-- The preimage of a singleton in `connectedComponents` is the connected component
of an element in the equivalence class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ef24a75a090fef63c3765c810cde46f3257256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
