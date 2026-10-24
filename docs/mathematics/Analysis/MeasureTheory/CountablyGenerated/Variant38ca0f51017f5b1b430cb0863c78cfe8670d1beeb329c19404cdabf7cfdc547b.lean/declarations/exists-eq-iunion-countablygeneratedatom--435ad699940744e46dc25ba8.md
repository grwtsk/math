# exists_eq_iUnion_countablyGeneratedAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d24ce63-4cb9-271d-e06a-2e05bd1bcc0c",
  "kind": "lemma",
  "lexical_name": "exists_eq_iUnion_countablyGeneratedAtom",
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
  "slug": "exists-eq-iunion-countablygeneratedatom--435ad699940744e46dc25ba8",
  "source": {
    "blob": "ac0bd980ce8cc705b8545067c50c1179c151a466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 200,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:435ad699940744e46dc25ba85e363266d6fbd0b8824bfa5d444d984bdb176534",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d24ce63-4cb9-271d-e06a-2e05bd1bcc0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eq_iUnion_countablyGeneratedAtom {s : Set α} (hs : MeasurableSet s) :
    ∃ (q : (ℕ → Prop) → Prop), s = ⋃ p, if q p then countablyGeneratedAtom α p else ∅ := by
  rw [← generateFrom_natGeneratingSequence α] at hs
  refine generateFrom_induction (range (natGeneratingSequence α)) _ ?_ ?_ ?_ ?_ s hs
  · simp only [mem_range, forall_exists_index, forall_apply_eq_imp_iff]
    refine fun n _ ↦ ⟨fun p ↦ p n, ?_⟩
    ext x
    simp only [mem_iUnion, mem_ite_empty_right]
    refine ⟨fun hx ↦ ?_, ?_⟩
    · exact ⟨(x ∈ natGeneratingSequence α ·), by simp [countablyGeneratedAtom]; grind⟩
    · rintro ⟨p, hpn, hpx⟩
      simp only [countablyGeneratedAtom, mem_iInter] at hpx
      specialize hpx n
      simpa [hpn] using hpx
  · exact ⟨fun _ ↦ False, by simp⟩
  · simp only [forall_exists_index]
    intro t ht q htq
    refine ⟨fun p ↦ ¬ q p, ?_⟩
    ext x
    simp only [htq, compl_iUnion, mem_iInter, mem_compl_iff, mem_ite_empty_right, not_and,
      mem_iUnion]
    refine ⟨fun h ↦ ?_, ?_⟩
    · refine ⟨fun n ↦ x ∈ natGeneratingSequence α n, ?_,
        mem_countablyGeneratedAtom_natGeneratingSequence x⟩
      contrapose! h
      refine ⟨fun n ↦ x ∈ natGeneratingSequence α n, h,
        mem_countablyGeneratedAtom_natGeneratingSequence x⟩
    · rintro ⟨p, hpq, hpx⟩ p' hqp' hx_mem
      have hpp' : p ≠ p' := by grind
      have h_disj : Disjoint (countablyGeneratedAtom α p) (countablyGeneratedAtom α p') :=
        disjoint_countablyGeneratedAtom hpp'
      grind
  · intro t ht h
    choose q hq using h
    refine ⟨fun p ↦ ⨆ n, q n p, ?_⟩
    ext
    simp [hq]
    grind

/-- The measurable atom of a point in a countably generated measurable space is given by
a `countablyGeneratedAtom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant38ca0f51017f5b1b430cb0863c78cfe8670d1beeb329c19404cdabf7cfdc547b.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0bd980ce8cc705b8545067c50c1179c151a466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
