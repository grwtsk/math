# interPairsFilter_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f12256ef01fbad9debed40766873111b3db25e54e847eae9e42f3e40603a545b",
  "kind": "instance",
  "lexical_name": "interPairsFilter_neBot",
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
  "slug": "interpairsfilter-nebot--61763a35b111b4680eaf4dd4",
  "source": {
    "blob": "7d8a0b6365da0797eb4f88e25b9f31a8252572ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61763a35b111b4680eaf4dd46f6d015c33464755f30eb4db386b3420268bcd14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f12256ef01fbad9debed40766873111b3db25e54e847eae9e42f3e40603a545b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance interPairsFilter_neBot (s : Set (Set α)) : (interPairsFilter s).NeBot := by
  classical
  unfold interPairsFilter
  rw [← iInf_range, ← generate_eq_biInf, generate_neBot_iff]
  set f := fun t => if t ∈ s then interPair t else (interPair t)ᶜ
  suffices h : ∀ t, t.Finite → (⋂₀ (f '' t)).Nonempty by
    intro t hts ht
    choose c hc using hts
    refine Set.Nonempty.mono (sInter_mono ?_) <|
      h (⋃ (x) (hx : x ∈ t), {c hx}) (ht.biUnion' fun _ _ => finite_singleton _)
    intro x hx
    simp_rw [mem_image, mem_iUnion₂, mem_singleton_iff]
    exact ⟨_, ⟨x, hx, rfl⟩, hc hx⟩
  intro t ht
  rw [sInter_image, nonempty_def]
  have hne : Disjoint s sᶜ := disjoint_compl_right
  simp_rw [disjoint_iff_forall_ne, ← symmDiff_nonempty,
    nonempty_def, mem_symmDiff, ← xor_def] at hne
  choose c hc using hne
  let F := ⋃ (i) (hi : i ∈ t) (j) (hj : j ∈ t) (his : i ∈ s) (hjs : j ∉ s), {c his hjs}
  have hF : F.Finite := ht.biUnion' fun i hi => ht.biUnion' fun j hj =>
    finite_iUnion fun his => finite_iUnion fun hjs => finite_singleton (c his hjs)
  refine ⟨(hF.toFinset, (ht.toFinset.filter (· ∈ s)).image (fun i => hF.toFinset.filter (· ∈ i))),
    mem_biInter fun x hx => ?_⟩
  unfold f interPair
  split_ifs with hxs
  · refine Finset.mem_image_of_mem (fun i => hF.toFinset.filter (· ∈ i)) ?_
    simp [hx, hxs]
  · simp_rw [mem_compl_iff, Set.mem_ofPred, Finset.mem_image, Finset.mem_filter,
      not_exists, not_and, and_imp, ← SetLike.coe_injective.eq_iff, Finset.coe_filter,
      Set.Finite.mem_toFinset, ← symmDiff_nonempty, nonempty_def, mem_symmDiff, ← xor_def]
    intro y hy hys
    refine ⟨c hys hxs, ?_⟩
    have hxy : c hys hxs ∈ F := by
      simp_rw [F, mem_iUnion, mem_singleton_iff]
      exact ⟨y, hy, x, hx, hys, hxs, rfl⟩
    simpa [hxy] using hc hys hxs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8a0b6365da0797eb4f88e25b9f31a8252572ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
