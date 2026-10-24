# isNoetherian_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97764dc23c253694e93e76504f16ae36b48a99884e8eb535081b703e38c4c668",
  "kind": "instance",
  "lexical_name": "isNoetherian_pi",
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
  "slug": "isnoetherian-pi--0f443ce8a6d687ca49105cce",
  "source": {
    "blob": "c8104f0b9179239996850f9821a09badf80961fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f443ce8a6d687ca49105ccef9f56802baf3e9cec0153fd3f6f635591f969118",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97764dc23c253694e93e76504f16ae36b48a99884e8eb535081b703e38c4c668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isNoetherian_pi {R ι : Type*} {M : ι → Type*}
    [Ring R] [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)] [Finite ι]
    [∀ i, IsNoetherian R (M i)] : IsNoetherian R (∀ i, M i) := by
  cases nonempty_fintype ι
  haveI := Classical.decEq ι
  suffices on_finset : ∀ s : Finset ι, IsNoetherian R (∀ i : s, M i)
  · let coe_e := Equiv.subtypeUnivEquiv <| @Finset.mem_univ ι _
    letI : IsNoetherian R (∀ i : Finset.univ, M (coe_e i)) := on_finset Finset.univ
    exact isNoetherian_of_linearEquiv (LinearEquiv.piCongrLeft R M coe_e)
  intro s
  induction' s using Finset.induction with a s has ih
  · exact ⟨fun s => by
      have : s = ⊥ := by simp only [eq_iff_true_of_subsingleton]
      rw [this]
      apply Submodule.fg_bot⟩
  refine
    @isNoetherian_of_linearEquiv R (M a × ((i : s) → M i)) _ _ _ _ _ _ ?_ <|
      @isNoetherian_prod R (M a) _ _ _ _ _ _ _ ih
  refine
  { toFun := fun f i =>
      (Finset.mem_insert.1 i.2).by_cases
        (fun h : i.1 = a => show M i.1 from Eq.recOn h.symm f.1)
        (fun h : i.1 ∈ s => show M i.1 from f.2 ⟨i.1, h⟩),
    invFun := fun f =>
      (f ⟨a, Finset.mem_insert_self _ _⟩, fun i => f ⟨i.1, Finset.mem_insert_of_mem i.2⟩),
    map_add' := ?_,
    map_smul' := ?_
    left_inv := ?_,
    right_inv := ?_ }
  · intro f g
    ext i
    unfold Or.by_cases
    cases' i with i hi
    rcases Finset.mem_insert.1 hi with (rfl | h)
    · change _ = _ + _
      simp only [dif_pos]
      rfl
    · change _ = _ + _
      have : ¬i = a := by
        rintro rfl
        exact has h
      simp only [dif_neg this, dif_pos h]
      rfl
  · intro c f
    ext i
    unfold Or.by_cases
    cases' i with i hi
    rcases Finset.mem_insert.1 hi with (rfl | h)
    · dsimp
      simp only [dif_pos]
    · dsimp
      have : ¬i = a := by
        rintro rfl
        exact has h
      simp only [dif_neg this, dif_pos h]
  · intro f
    apply Prod.ext
    · simp only [Or.by_cases, dif_pos]
    · ext ⟨i, his⟩
      have : ¬i = a := by
        rintro rfl
        exact has his
      simp only [Or.by_cases, this, not_false_iff, dif_neg]
  · intro f
    ext ⟨i, hi⟩
    rcases Finset.mem_insert.1 hi with (rfl | h)
    · simp only [Or.by_cases, dif_pos]
    · have : ¬i = a := by
        rintro rfl
        exact has h
      simp only [Or.by_cases, dif_neg this, dif_pos h]
#align is_noetherian_pi isNoetherian_pi

/-- A version of `isNoetherian_pi` for non-dependent functions. We need this instance because
sometimes Lean fails to apply the dependent version in non-dependent settings (e.g., it fails to
prove that `ι → ℝ` is finite dimensional over `ℝ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8104f0b9179239996850f9821a09badf80961fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
