# energy_ge_two_of_near_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d58bbd6-4315-e852-cde1-db29fbadb252",
  "kind": "theorem",
  "lexical_name": "energy_ge_two_of_near_counts",
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
  "slug": "energy-ge-two-of-near-counts--f95ad89531bbbde2bc7cf73e",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 163,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95ad89531bbbde2bc7cf73e3241d094c38f78f9b16a521280849f07c381e98d",
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

Occurrence: `result:3d58bbd6-4315-e852-cde1-db29fbadb252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_ge_two_of_near_counts (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ center : ZMod p)
    (t : ℝ) (ht : 0 ≤ t) (hE : 2000 * t ≤ (m : ℝ) * pairEnergy S χ)
    (hcounts : ∀ a : S,
      a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m)) →
      (S.card : ℝ) / (4 * m) ≤
        ((part P (P.val a)).filter (fun b =>
          b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card) :
    2 * t ≤ partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hnN : 0 < S.card := by omega
  have hnR : (0 : ℝ) < S.card := by exact_mod_cast hnN
  have hS : S.Nonempty := Finset.card_pos.mp hnN
  let J := phaseInterval χ center (16 * Real.sqrt (t / m))
  have hrows (a : S) :
      (if a.val ∉ J then (S.card : ℝ) / (16 * m) *
        modularDistance (χ * a.val - center) ^ 2 else 0) ≤
      ∑ b ∈ part P (P.val a), modularDistance (χ * (a.val - b.val)) ^ 2 := by
    by_cases ha : a.val ∉ J
    · rw [if_pos ha]
      have h := row_sum_lower (residueEmbedding S) P χ a
        ((part P (P.val a)).filter (fun b =>
          b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m))))
        (Finset.filter_subset _ _) ((S.card : ℝ) / (4 * m))
        (modularDistance (χ * a.val - center) ^ 2 / 4) (by positivity) (hcounts a ha)
        (fun b hb => far_near_pair_distance_sq_ge_quarter χ center a.val b.val m t
          ha (Finset.mem_filter.mp hb).2)
      calc
        _ = (S.card : ℝ) / (4 * m) *
            (modularDistance (χ * a.val - center) ^ 2 / 4) := by ring
        _ ≤ _ := by simpa only [residueEmbedding, Function.Embedding.coeFn_mk] using h
    · rw [if_neg ha]
      exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hsum := Finset.sum_le_sum (s := Finset.univ) (fun a _ => hrows a)
  have heq : (∑ a : S, if a.val ∉ J then (S.card : ℝ) / (16 * m) *
        modularDistance (χ * a.val - center) ^ 2 else 0) =
      (S.card : ℝ) / (16 * m) *
        ∑ x ∈ S \ J, modularDistance (χ * x - center) ^ 2 := by
    rw [Finset.mul_sum]
    rw [← Finset.sum_filter]
    apply Finset.sum_bij (fun a _ => a.val)
    · intro a ha
      exact Finset.mem_sdiff.mpr ⟨a.property, (Finset.mem_filter.mp ha).2⟩
    · intro a _ b _ h; exact Subtype.ext h
    · intro b hb
      exact ⟨⟨b, (Finset.mem_sdiff.mp hb).1⟩,
        Finset.mem_filter.mpr ⟨Finset.mem_univ _, (Finset.mem_sdiff.mp hb).2⟩, rfl⟩
    · intros; rfl
  rw [heq] at hsum
  have he := balanced_partition_energy_lower_bound S hm hfour P χ
  rw [sum_parts_pairs] at he
  have htail := normalized_tail_center_sum_ge_200 S hS χ center m t hmR ht hE
  have hnorm := (mul_le_mul_of_nonneg_left hsum
    (by positivity : 0 ≤ (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2))).trans he
  have hn : (S.card : ℝ) ≠ 0 := ne_of_gt hnR
  have hmn : (m : ℝ) ≠ 0 := ne_of_gt hmR
  have heqnorm : (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2) *
      ((S.card : ℝ) / (16 * m) * ∑ x ∈ S \ J,
        modularDistance (χ * x - center) ^ 2) =
      ((m : ℝ) / S.card * ∑ x ∈ S \ J,
        modularDistance (χ * x - center) ^ 2) / 32 := by field_simp; ring
  rw [heqnorm] at hnorm
  change 200 * t ≤ _ at htail
  change _ / 32 ≤ _ at hnorm
  linarith

/-- The source upper slice restriction absorbs the union of all pointwise
hypergeometric failures. Both source exponents (`64` and `48`) fit this bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
