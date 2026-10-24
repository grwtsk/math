# exists_le_iSup_basicOpen_and_smul_eq_smul_and_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09406d97-e70a-5cdc-2d9a-b99eff8044bc",
  "kind": "theorem",
  "lexical_name": "exists_le_iSup_basicOpen_and_smul_eq_smul_and_eq_const",
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
  "slug": "exists-le-isup-basicopen-and-smul-eq-smul-and-eq-const--67b4cf871e56a5c3af83f81d",
  "source": {
    "blob": "08b659a0a3f3a16341f764ca121c95b64ce83209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 452,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b4cf871e56a5c3af83f81dbf910f0ff44ce9cc35e80cc406786778d8c3507f",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09406d97-e70a-5cdc-2d9a-b99eff8044bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_iSup_basicOpen_and_smul_eq_smul_and_eq_const
    (U : Opens (PrimeSpectrum.Top R)) (hU : IsCompact (U : Set (PrimeSpectrum.Top R)))
    (s : Γ(M, U)) :
    ∃ (ι : Type u) (_ : Fintype ι) (a : ι → M) (b : ι → R) (ibU : ∀ i, basicOpen (b i) ≤ U),
      (U ≤ ⨆ i, basicOpen (b i)) ∧ (∀ i j, b j • a i = b i • a j) ∧
          ∀ i, (structureSheafInType R M).presheaf.map (ibU i).hom.op s =
              const (a i) (b i) _ le_rfl := by
  choose g hxg igU f H using fun x : U ↦ exists_const U s x.1 x.2
  have (i j : _) : LocalizedModule.mk (g i • f j) ⟨g i * g j, Submonoid.mem_powers _⟩ =
      LocalizedModule.mk (g j • f i) ⟨g i * g j, Submonoid.mem_powers _⟩ := by
    refine toBasicOpenₗ_injective (g i * g j) ?_
    simp only [toBasicOpenₗ_mk]
    have := H i
    trans (structureSheafInType R M).obj.map (homOfLE ?_).op s
    · refine .trans (Subtype.ext <| funext fun a ↦ ?_) congr((structureSheafInType R M).obj.map
        (homOfLE ((PrimeSpectrum.basicOpen_mul (g i) (g j)).trans_le inf_le_right)).op $(H j))
      exact LocalizedModule.mk_eq.mpr ⟨1, by simp [Submonoid.smul_def, ← smul_assoc]; ring_nf⟩
    · refine congr((structureSheafInType R M).obj.map (homOfLE ((PrimeSpectrum.basicOpen_mul (g i)
        (g j)).trans_le inf_le_left)).op $(H i)).symm.trans (Subtype.ext <| funext fun a ↦ ?_)
      exact LocalizedModule.mk_eq.mpr ⟨1, by simp [Submonoid.smul_def, ← smul_assoc]⟩
    · exact ((PrimeSpectrum.basicOpen_mul (g i) (g j)).trans_le inf_le_right).trans (igU _)
  simp only [LocalizedModule.mk_eq, Submonoid.smul_def, Subtype.exists, Submonoid.mem_powers_iff,
    exists_prop, exists_exists_eq_and, ← mul_smul, ← pow_succ, ← mul_assoc _ (_ * _)] at this
  choose n hn using this
  obtain ⟨t, ht⟩ := hU.elim_finite_subcover (fun i ↦ (basicOpen (g i) : Set (PrimeSpectrum R)))
    (fun _ ↦ (basicOpen _).2) (fun x hx ↦ Set.mem_iUnion_of_mem ⟨x, hx⟩ (hxg _))
  let N := (t ×ˢ t).sup fun x ↦ n x.1 x.2 + 1
  refine ⟨t, inferInstance, fun i ↦ g i ^ N • f i, fun i ↦ (g i) ^ (N + 1),
    fun x ↦ by simpa using igU x.1, fun x hx ↦ by simpa using ht hx, fun i j ↦ ?_, fun i ↦ ?_⟩
  · dsimp
    convert_to (g i * g ↑j) ^ N • g j • f i = (g i * g ↑j) ^ N • g i • f j
    · module
    · module
    have : n i j + 1 ≤ N := (t ×ˢ t).le_sup (f := fun x ↦ n x.1 x.2 + 1) (b := ⟨_, _⟩) (by simp)
    rw [← Nat.sub_add_cancel this, pow_add, mul_smul, mul_smul]
    congr 1
    have h := (hn i j).symm
    module_nf at h ⊢
    exact h
  · convert! congr((structureSheafInType R M).presheaf.map (homOfLE ?_).op $((H i).symm)) using 1
    · refine Subtype.ext <| funext fun x ↦ LocalizedModule.mk_eq.mpr ⟨1, ?_⟩
      simp [Submonoid.smul_def, pow_succ', mul_smul]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant13e7f424ee59bd4be8cd1166a150be4634c183cb213ceaf69bba19d1aec9105e.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b659a0a3f3a16341f764ca121c95b64ce83209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
