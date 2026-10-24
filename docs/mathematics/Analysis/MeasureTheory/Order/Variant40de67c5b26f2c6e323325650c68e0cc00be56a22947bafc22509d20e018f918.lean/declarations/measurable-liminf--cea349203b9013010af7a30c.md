# Measurable.liminf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9bcffb5-6264-ebf4-6f7d-f81279626579",
  "kind": "theorem",
  "lexical_name": "Measurable.liminf'",
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
  "slug": "measurable-liminf--cea349203b9013010af7a30c",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1057,
    "line": 1006,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea349203b9013010af7a30cf7f016ff317b0108229fe6303a3a09e1a6eebe08",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9bcffb5-6264-ebf4-6f7d-f81279626579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1057.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.liminf' {ι ι'} {f : ι → δ → α} {v : Filter ι} (hf : ∀ i, Measurable (f i))
    {p : ι' → Prop} {s : ι' → Set ι} (hv : v.HasCountableBasis p s) (hs : ∀ j, (s j).Countable) :
    Measurable fun x => liminf (f · x) v := by
  classical
  /- We would like to write the liminf as `⨆ (j : Subtype p), ⨅ (i : s j), f i x`, as the
  measurability would follow from the measurability of infs and sups. Unfortunately, this is not
  true in general conditionally complete linear orders because of issues with empty sets or sets
  which are not bounded above or below. A slightly more complicated expression for the liminf,
  valid in general, is given in `Filter.HasBasis.liminf_eq_ite`. This expression, built from
  `if ... then ... else` and infs and sups, can be readily checked to be measurable. -/
  have : Countable (Subtype p) := hv.countable
  rcases isEmpty_or_nonempty (Subtype p) with hp | hp
  · simp [hv.liminf_eq_sSup_iUnion_iInter]
  by_cases H : ∃ (j : Subtype p), s j = ∅
  · simp_rw [hv.liminf_eq_ite, ite_eq_left H, measurable_const]
  simp_rw [hv.liminf_eq_ite, ite_eq_right H]
  have : ∀ i, Countable (s i) := fun i ↦ countable_coe_iff.2 (hs i)
  let m : Subtype p → Set δ := fun j ↦ {x | BddBelow (range (fun (i : s j) ↦ f i x))}
  have m_meas : ∀ j, MeasurableSet (m j) :=
    fun j ↦ measurableSet_bddBelow_range (fun (i : s j) ↦ hf i)
  have mc_meas : MeasurableSet {x | ∀ (j : Subtype p), x ∉ m j} := by
    rw [ofPred_forall]
    exact MeasurableSet.iInter (fun j ↦ (m_meas j).compl)
  refine measurable_const.piecewise mc_meas <| .iSup fun j ↦ ?_
  let reparam : δ → Subtype p → Subtype p := fun x ↦ liminfReparam (fun i ↦ f i x) s p
  let F0 : Subtype p → δ → α := fun j x ↦ ⨅ (i : s j), f i x
  have F0_meas : ∀ j, Measurable (F0 j) := fun j ↦ .iInf (fun (i : s j) ↦ hf i)
  set F1 : δ → α := fun x ↦ F0 (reparam x j) x with hF1
  change Measurable F1
  let g : ℕ → Subtype p := Classical.choose (exists_surjective_nat (Subtype p))
  have Z : ∀ x, ∃ n, x ∈ m (g n) ∨ ∀ k, x ∉ m k := by
    intro x
    by_cases! H : ∃ k, x ∈ m k
    · rcases H with ⟨k, hk⟩
      rcases Classical.choose_spec (exists_surjective_nat (Subtype p)) k with ⟨n, rfl⟩
      exact ⟨n, Or.inl hk⟩
    · exact ⟨0, Or.inr H⟩
  have : F1 = fun x ↦ if x ∈ m j then F0 j x else F0 (g (Nat.find (Z x))) x := by
    ext x
    have A : reparam x j = if x ∈ m j then j else g (Nat.find (Z x)) := rfl
    split_ifs with hjx
    · have : reparam x j = j := by rw [A, ite_eq_left hjx]
      simp only [hF1, this]
    · have : reparam x j = g (Nat.find (Z x)) := by rw [A, ite_eq_right hjx]
      simp only [hF1, this]
  rw [this]
  apply Measurable.piecewise (m_meas j) (F0_meas j)
  apply Measurable.find (fun n ↦ F0_meas (g n)) (fun n ↦ ?_)
  exact (m_meas (g n)).union mc_meas

/-- `limsup` over a general filter is measurable. See `Measurable.limsup` for the version over `ℕ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
