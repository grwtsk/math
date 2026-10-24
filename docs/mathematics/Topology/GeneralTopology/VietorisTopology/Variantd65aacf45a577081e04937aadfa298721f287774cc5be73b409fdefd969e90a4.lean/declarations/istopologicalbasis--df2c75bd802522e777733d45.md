# isTopologicalBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2690f4417e777e7749ded9313d6da9bab371ad0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:895d6bab-c7b8-5846-d175-cd8d4cdfe9bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40413db6-8ef5-2202-fccb-f6430a8f31c8",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis",
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
  "slug": "istopologicalbasis--df2c75bd802522e777733d45",
  "source": {
    "blob": "2690f4417e777e7749ded9313d6da9bab371ad0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df2c75bd802522e777733d451052ca44e250af500918ee14a6a5d1f08792ebda",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40413db6-8ef5-2202-fccb-f6430a8f31c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalBasis :
    IsTopologicalBasis <|
      (fun u => {s ⊆ ⋃₀ u | ∀ U ∈ u, (s ∩ U).Nonempty}) ''
      {u : Set (Set α) | u.Finite ∧ (∀ U ∈ u, IsOpen U)} := by
  refine isTopologicalBasis_of_subbasis rfl |>.isTopologicalBasis_of_exists_subset ?_ ?_ <;>
    rw [forall_mem_image]
  · intro u ⟨hu₁, hu₂⟩
    simp_rw [ofPred_and, ofPred_forall]
    exact (isOpen_sUnion hu₂).powerset_vietoris.inter <|
      hu₁.isOpen_biInter fun U hU => isOpen_inter_nonempty_of_isOpen (hu₂ U hU)
  · intro t ⟨ht₁, ht₂⟩ s hs
    rw [exists_mem_image]
    rcases eq_empty_or_nonempty s with rfl | _
    · exists ∅; simpa
    obtain ⟨u, v, hu, hv, rfl⟩ : ∃ u v, u ⊆ powerset '' {U | IsOpen U} ∧
        v ⊆ (fun V => {s | (s ∩ V).Nonempty}) '' {U | IsOpen U} ∧ u ∪ v = t := by
      rw [← inter_eq_left, inter_union_distrib_left] at ht₂
      exact ⟨_, _, inter_subset_right, inter_subset_right, ht₂⟩
    rw [finite_union] at ht₁
    obtain ⟨u, hu₁, hu₂, rfl⟩ := exists_subset_image_finite_and.mp ⟨u, hu, ht₁.1, rfl⟩
    obtain ⟨v, hv₁, hv₂, rfl⟩ := exists_subset_image_finite_and.mp ⟨v, hv, ht₁.2, rfl⟩
    let U := ⋂₀ u
    have hU : IsOpen U := hu₂.isOpen_sInter hu₁
    simp_rw [sInter_union, show ⋂₀ (powerset '' u) = U.powerset by ext; simp [U], sInter_image]
      at hs ⊢
    rw [mem_inter_iff, mem_powerset_iff, mem_iInter₂] at hs
    exists insert U ((U ∩ ·) '' v)
    simp_rw [show ⋃₀ (insert U ((U ∩ ·) '' v)) = U by simp, mem_ofPred, finite_insert,
      forall_mem_insert, forall_mem_image, ← inter_assoc, inter_eq_left.mpr hs.1]
    refine ⟨⟨hv₂.image _, hU, fun V hV => hU.inter (hv₁ hV)⟩, by grind,
      fun t ⟨htU, _, ht⟩ => ⟨htU, mem_iInter₂_of_mem ?_⟩⟩
    simpa only [inter_eq_left.mpr htU] using! ht

/-- Given a basis `B` on the underlying topological space, the Vietoris topology has a basis
consisting of sets of the form `{s | s ⊆ V, s ∩ U₁ ≠ ∅, …, s ∩ Uₙ ≠ ∅}`, where `U₁, …, Uₙ ∈ B` are
subsets of some open set `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2690f4417e777e7749ded9313d6da9bab371ad0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
