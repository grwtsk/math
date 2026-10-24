# exists_relSeries_covBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1a63697-f138-1fc1-85cb-07fba0ade626",
  "kind": "theorem",
  "lexical_name": "exists_relSeries_covBy",
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
  "slug": "exists-relseries-covby--189ddcfed00fb41a409ac499",
  "source": {
    "blob": "766905e9c25872c7575ec76e032d3f80cac3bb0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1017,
    "line": 991,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:189ddcfed00fb41a409ac4997ee4bd54147dabf7e287230fd5318a725147bf15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a63697-f138-1fc1-85cb-07fba0ade626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1017.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_relSeries_covBy
    {α} [PartialOrder α] [WellFoundedLT α] [WellFoundedGT α] (s : LTSeries α) :
    ∃ (t : RelSeries (α := α) (· ⋖ ·)) (i : Fin (s.length + 1) ↪ Fin (t.length + 1)),
      t ∘ i = s ∧ i 0 = 0 ∧ i (.last _) = .last _ := by
  obtain ⟨n, s, h⟩ := s
  induction n with
  | zero => exact ⟨⟨0, s, nofun⟩, (Equiv.refl _).toEmbedding, rfl, rfl, rfl⟩
  | succ n IH =>
    obtain ⟨t₁, i, ht, hi₁, hi₂⟩ := IH (s ∘ Fin.castSucc) fun _ ↦ h _
    obtain ⟨t₂, h₁, m, h₂, ht₂⟩ :=
      exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le (h (.last _)).le
    let t₃ : RelSeries (α := α) (· ⋖ ·) := ⟨m, (t₂ ·), fun i ↦ by simpa using ht₂ i⟩
    have H : t₁.last = t₂ 0 := (congr(t₁ $hi₂.symm).trans (congr_fun ht _)).trans h₁.symm
    refine ⟨t₁.smash t₃ H, ⟨Fin.snoc (Fin.castLE (by simp) ∘ i) (.last _), ?_⟩, ?_, ?_, ?_⟩
    · refine Fin.lastCases (Fin.lastCases (fun _ ↦ rfl) fun j eq ↦ ?_) fun j ↦ Fin.lastCases
        (fun eq ↦ ?_) fun k eq ↦ Fin.ext (congr_arg Fin.val (by simpa using eq) :)
      on_goal 2 => rw [eq_comm] at eq
      all_goals
        rw [Fin.snoc_castSucc] at eq
        obtain rfl : m = 0 := by simpa [t₃] using (congr_arg Fin.val eq).trans_lt (i j).2
        cases (h (.last _)).ne' (h₂.symm.trans h₁)
    · refine funext (Fin.lastCases ?_ fun j ↦ ?_)
      · convert h₂; simpa using RelSeries.last_smash ..
      convert congr_fun ht j using 1
      simp [RelSeries.smash_castLE]
    all_goals simp [Fin.snoc, Fin.castPred_zero, hi₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766905e9c25872c7575ec76e032d3f80cac3bb0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
