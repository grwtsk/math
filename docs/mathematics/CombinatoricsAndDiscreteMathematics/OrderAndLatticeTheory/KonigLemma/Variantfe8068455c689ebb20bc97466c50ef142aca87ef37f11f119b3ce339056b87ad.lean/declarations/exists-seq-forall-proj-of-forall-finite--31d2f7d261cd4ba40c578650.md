# exists_seq_forall_proj_of_forall_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b3e06ca-3bfd-19d7-df53-d12ebbc8b55c",
  "kind": "theorem",
  "lexical_name": "exists_seq_forall_proj_of_forall_finite",
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
  "slug": "exists-seq-forall-proj-of-forall-finite--31d2f7d261cd4ba40c578650",
  "source": {
    "blob": "9ffa021b1d0fbea1799fbff6de49f57fcb9567cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d2f7d261cd4ba40c5786505633b0cc2781a4c8230c31d1f8c5807b639dbe0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b3e06ca-3bfd-19d7-df53-d12ebbc8b55c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_forall_proj_of_forall_finite {α : ℕ → Type*} [Finite (α 0)] [∀ i, Nonempty (α i)]
    (π : {i j : ℕ} → (hij : i ≤ j) → α j → α i)
    (π_refl : ∀ ⦃i⦄ (a : α i), π rfl.le a = a)
    (π_trans : ∀ ⦃i j k⦄ (hij : i ≤ j) (hjk : j ≤ k) a, π hij (π hjk a) = π (hij.trans hjk) a)
    (hfin : ∀ i a, {b : α (i+1) | π (Nat.le_add_right i 1) b = a}.Finite) :
    ∃ f : (i : ℕ) → α i, ∀ ⦃i j⦄ (hij : i ≤ j), π hij (f j) = f i := by

  set αs := (i : ℕ) × α i

  let _ : PartialOrder αs := {
    le := fun a b ↦ ∃ h, π h b.2 = a.2
    le_refl := fun a ↦ ⟨rfl.le, π_refl _⟩
    le_trans := fun _ _ c h h' ↦ ⟨h.1.trans h'.1, by rw [← π_trans h.1 h'.1 c.2, h'.2, h.2]⟩
    le_antisymm := by
      rintro ⟨i, a⟩ ⟨j, b⟩ ⟨hij : i ≤ j, hab : π hij b = a⟩ ⟨hji : j ≤ i, hba : π hji a = b⟩
      obtain rfl := hij.antisymm hji
      rw [show a = b by rwa [π_refl] at hba] }

  have hcovby : ∀ {a b : αs}, a ⋖ b ↔ a ≤ b ∧ a.1 + 1 = b.1 := by
    simp only [αs, covBy_iff_lt_and_eq_or_eq, lt_iff_le_and_ne, ne_eq, Sigma.forall, and_assoc,
      and_congr_right_iff, or_iff_not_imp_left]
    rintro i a j b ⟨h : i ≤ j, rfl : π h b = a⟩
    refine ⟨fun ⟨hne, h'⟩ ↦ ?_, ?_⟩
    · have hle' : i + 1 ≤ j := h.lt_of_ne <| by rintro rfl; simp [π_refl] at hne
      exact congr_arg Sigma.fst <| h' (i+1) (π hle' b) ⟨by simp, by rw [π_trans]⟩ ⟨hle', by simp⟩
        (fun h ↦ by apply_fun Sigma.fst at h; simp at h)
    rintro rfl
    refine ⟨fun h ↦ by apply_fun Sigma.fst at h; simp at h, ?_⟩
    rintro j c ⟨hij : i ≤ j, hcb : π _ c = π _ b⟩ ⟨hji : j ≤ i + 1, rfl : π hji b = c⟩ hne
    replace hne := show i ≠ j by rintro rfl; contradiction
    obtain rfl := hji.antisymm (hij.lt_of_ne hne)
    rw [π_refl]

  have : IsStronglyAtomic αs := by
    simp_rw [isStronglyAtomic_iff, lt_iff_le_and_ne, hcovby]
    rintro ⟨i, a⟩ ⟨j, b⟩ ⟨⟨hij : i ≤ j, h2 : π hij b = a⟩, hne⟩
    have hle : i + 1 ≤ j := hij.lt_of_ne (by rintro rfl; simp [← h2, π_refl] at hne)
    exact ⟨⟨_, π hle b⟩, ⟨⟨by simp, by rw [π_trans, ← h2]⟩, by simp⟩, ⟨hle, by simp⟩⟩

  obtain ⟨a₀, ha₀, ha₀inf⟩ : ∃ a₀ : αs, a₀.1 = 0 ∧ (Ici a₀).Infinite := by
    obtain ⟨a₀, ha₀⟩ := Finite.exists_infinite_fiber (fun (a : αs) ↦ π (zero_le a.1) a.2)
    refine ⟨⟨0, a₀⟩, rfl, (infinite_coe_iff.1 ha₀).mono ?_⟩
    simp only [αs, subset_def, mem_preimage, mem_singleton_iff, mem_Ici, Sigma.forall]
    exact fun i x h ↦ ⟨zero_le i, h⟩

  have hfin : ∀ (a : αs), {x | a ⋖ x}.Finite := by
    refine fun ⟨i,a⟩ ↦ ((hfin i a).image (fun b ↦ ⟨_,b⟩)).subset ?_
    simp only [αs, hcovby, subset_def, mem_setOf_eq, mem_image, and_imp, Sigma.forall]
    exact fun j b ⟨_, _⟩ hj ↦ ⟨π hj.le b, by rwa [π_trans], by cases hj; rw [π_refl]⟩

  obtain ⟨f, hf0, hf⟩ := exists_orderEmbedding_covby_of_forall_covby_finite hfin ha₀inf

  have hr : ∀ i, (f i).1 = i :=
    Nat.rec (by rw [hf0, ha₀]) (fun i ih ↦ by rw [← (hcovby.1 (hf i)).2, ih])

  refine ⟨fun i ↦ by rw [← hr i]; exact (f i).2, fun i j hij ↦ ?_⟩
  convert (f.monotone hij).2 <;>
  simp [hr]

end Graded
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ffa021b1d0fbea1799fbff6de49f57fcb9567cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
