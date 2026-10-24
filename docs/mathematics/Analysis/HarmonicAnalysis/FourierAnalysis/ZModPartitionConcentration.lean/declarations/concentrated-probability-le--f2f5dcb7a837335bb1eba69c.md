# concentrated_probability_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b41a0ff5-139a-e36d-f5c5-978e192b79ea",
  "kind": "theorem",
  "lexical_name": "concentrated_probability_le",
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
  "slug": "concentrated-probability-le--f2f5dcb7a837335bb1eba69c",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 439,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f5dcb7a837335bb1eba69cc0fb207a575c591daaa9a58c7ab8f6c6efa8d29b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b41a0ff5-139a-e36d-f5c5-978e192b79ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concentrated_probability_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 0 < m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (t : ℝ) (ht : 0 ≤ t) (χ : ZMod p)
    (hχ : χ ∈ concentratedFrequencies S m t \ smallEnergyFrequencies S m (2000 * t)) :
    eventProbability (fun P : BalancedPartitions S m =>
      partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) ≤
      1 / (S.card : ℝ) ^ 9 := by
  have hfour := source_upper_range_gives_quarter S.card m hn hu
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hS : S.Nonempty := Finset.card_pos.mp (by omega)
  obtain ⟨center, hc, _htail⟩ := exists_concentrated_center_tail S hS m t hmR ht χ hχ
  have hE : 2000 * t ≤ (m : ℝ) * pairEnergy S χ := by
    exact le_of_lt (lt_of_not_ge (by simpa only [mem_smallEnergyFrequencies] using
      (Finset.mem_sdiff.mp hχ).2))
  let E (a : S) (P : BalancedPartitions S m) : Prop :=
    a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) ∧
      (((part P (P.val a)).filter (fun b =>
        b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
          (S.card : ℝ) / (4 * m)
  have hfail (P : BalancedPartitions S m)
      (hP : partitionEnergy (partValues (residueEmbedding S) P) χ < 2 * t) :
      ∃ a : S, E a P := by
    by_contra h
    have hc' : ∀ a : S,
        a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) →
        (S.card : ℝ) / (4 * m) ≤
          (((part P (P.val a)).filter (fun b =>
            b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) :=
      fun a ha => le_of_not_gt (fun hb => h ⟨a, ha, hb⟩)
    exact (not_lt_of_ge (energy_ge_two_of_near_counts S hm hfour P χ center t ht hE hc')) hP
  have hlocal (a : S) : eventProbability (E a) ≤ Real.exp (-(S.card : ℝ) / (48 * m)) := by
    by_cases ha : a.val ∈ phaseInterval χ center (16 * Real.sqrt (t / m))
    · calc
        _ ≤ eventProbability (fun _P : BalancedPartitions S m => False) :=
          eventProbability_mono _ _ (fun _ h => h.1 ha)
        _ ≤ _ := by
          simp only [eventProbability, Finset.filter_false, Finset.card_empty,
            Nat.cast_zero, zero_div]
          exact (Real.exp_pos _).le
    · exact (eventProbability_mono _ _ (fun _ h => h.2)).trans
        (near_count_bad_probability_le S hm hfour χ center t hc a ha)
  calc
    _ ≤ eventProbability (fun P => ∃ a : S, E a P) := eventProbability_mono _ _ hfail
    _ ≤ ∑ a : S, eventProbability (E a) := eventProbability_exists_le E
    _ ≤ ∑ _a : S, Real.exp (-(S.card : ℝ) / (48 * m)) :=
      Finset.sum_le_sum (fun a _ => hlocal a)
    _ = (S.card : ℝ) * Real.exp (-(S.card : ℝ) / (48 * m)) := by simp
    _ ≤ _ := source_union_exp_le S.card m hn hm hu 48 (by norm_num) (by norm_num)

/-- Both source concentration cases combined, with positivity and balanced
feasibility derived from the original Section 3 numerical restrictions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
