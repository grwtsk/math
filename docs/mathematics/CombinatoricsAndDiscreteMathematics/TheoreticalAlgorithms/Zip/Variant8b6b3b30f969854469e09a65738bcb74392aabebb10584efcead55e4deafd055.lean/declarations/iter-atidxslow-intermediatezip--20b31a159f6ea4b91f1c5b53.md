# Iter.atIdxSlow?_intermediateZip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd5c9bdf-9e3f-4e47-7488-d9807ea5fcad",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?_intermediateZip",
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
  "slug": "iter-atidxslow-intermediatezip--20b31a159f6ea4b91f1c5b53",
  "source": {
    "blob": "6e4827db5ef275970daa8a10a885d6bfb37c18a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20b31a159f6ea4b91f1c5b53d3e6a8fd6c36ccec44c8ac107fc14a5229c6a3a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd5c9bdf-9e3f-4e47-7488-d9807ea5fcad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?_intermediateZip [Iterator α₁ Id β₁] [Iterator α₂ Id β₂]
    [Productive α₁ Id] [Productive α₂ Id]
    {it₁ : Iter (α := α₁) β₁} {memo} {it₂ : Iter (α := α₂) β₂} {n : Nat} :
    (Intermediate.zip it₁ memo it₂).atIdxSlow? n =
      (match memo with
      | none => do return (← it₁.atIdxSlow? n, ← it₂.atIdxSlow? n)
      | some memo => match n with
        | 0 => do return (memo.val, ← it₂.atIdxSlow? n)
        | n' + 1 => do return (← it₁.atIdxSlow? n', ← it₂.atIdxSlow? (n' + 1))) := by
  generalize h : Intermediate.zip it₁ memo it₂ = it
  revert h it₁ memo it₂
  induction n, it using atIdxSlow?.induct_unfolding
  rintro it₁ memo it₂ rfl
  case yield_zero it it' out h h' =>
    rw [atIdxSlow?]
    simp only [Option.pure_def, Option.bind_eq_bind]
    simp only [step_intermediateZip, PlausibleIterStep.skip, PlausibleIterStep.done,
      PlausibleIterStep.yield] at h'
    split at h'
    · split at h' <;> cases h'
    · split at h' <;> cases h'
      rename_i hs₂
      rw [atIdxSlow?_eq_match, hs₂]
      simp
  case yield_succ it it' out h  h' n ih =>
    rintro it₁ memo it₂ rfl
    simp only [Nat.succ_eq_add_one, Option.pure_def, Option.bind_eq_bind]
    cases memo
    case none =>
      rw [step_intermediateZip] at h'
      simp only at h'
      split at h' <;> cases h'
    case some =>
      rw [step_intermediateZip] at h'
      simp only at h'
      split at h' <;> cases h'
      rename_i hs₂
      simp only [ih rfl, Option.pure_def, Option.bind_eq_bind]
      rw [atIdxSlow?_eq_match (it := it₂), hs₂]
  case skip_case it it' h h' ih =>
    rintro it₁ memo it₂ rfl
    obtain ⟨it₁', memo', it₂', rfl⟩ := Intermediate.zip_surj it'
    specialize ih rfl
    rw [step_intermediateZip] at h'
    simp only [PlausibleIterStep.skip, PlausibleIterStep.done, PlausibleIterStep.yield] at h'
    rw [Subtype.ext_iff] at h'
    split at h'
    · split at h' <;> rename_i hs₁
      · simp only [IterStep.skip.injEq, Intermediate.zip_inj] at h'
        obtain ⟨rfl, rfl, rfl⟩ := h'
        simp only [ih, Option.pure_def, Option.bind_eq_bind, atIdxSlow?_eq_match (it := it₁), hs₁]
        split <;> rfl
      · simp only [IterStep.skip.injEq, Intermediate.zip_inj] at h'
        obtain ⟨rfl, rfl, rfl⟩ := h'
        simp [ih, atIdxSlow?_eq_match (it := it₁), hs₁]
      · cases h'
    · split at h' <;> rename_i hs₂ <;> (try cases h')
      simp only [IterStep.skip.injEq, Intermediate.zip_inj] at h'
      obtain ⟨rfl, rfl, rfl⟩ := h'
      simp [ih, atIdxSlow?_eq_match (it := it₂), hs₂]
  case done_case it _ h =>
    rintro it₁ memo it₂ rfl
    rw [atIdxSlow?_eq_match]
    simp only [step_intermediateZip] at h
    cases memo
    case none =>
      simp only at h
      split at h <;> cases h
      rename_i hs₁
      simp [hs₁]
    case some =>
      simp only at h
      split at h <;> cases h
      rename_i hs₂
      simp only [atIdxSlow?_eq_match (it := it₂), hs₂, Option.pure_def, Option.bind_eq_bind,
        Option.bind_none, Option.bind_fun_none]
      split <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4827db5ef275970daa8a10a885d6bfb37c18a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
