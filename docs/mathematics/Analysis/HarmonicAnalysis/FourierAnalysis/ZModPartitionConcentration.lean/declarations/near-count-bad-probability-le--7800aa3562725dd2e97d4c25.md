# near_count_bad_probability_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04834ecb-4147-b0c7-98ee-4fd1a5ad2513",
  "kind": "theorem",
  "lexical_name": "near_count_bad_probability_le",
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
  "slug": "near-count-bad-probability-le--7800aa3562725dd2e97d4c25",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 393,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7800aa3562725dd2e97d4c25d836ced36a43debbe1f010ce3b4ef9c1e87a1f4b",
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

Occurrence: `result:04834ecb-4147-b0c7-98ee-4fd1a5ad2513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem near_count_bad_probability_le (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (χ center : ZMod p) (t : ℝ)
    (hc : (3 / 4 : ℝ) * S.card ≤
      (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card) (a : S)
    (ha : a.val ∉ phaseInterval χ center (16 * Real.sqrt (t / m))) :
    eventProbability (fun P : BalancedPartitions S m =>
      (((part P (P.val a)).filter (fun b =>
        b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
        (S.card : ℝ) / (4 * m)) ≤ Real.exp (-(S.card : ℝ) / (48 * m)) := by
  let G : Finset S := Finset.univ.filter (fun b =>
    b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))
  have haG : a ∉ G := by
    intro h
    have hnear := (mem_phaseInterval _ _ _ _).mp (Finset.mem_filter.mp h).2
    have hfar : 16 * Real.sqrt (t / m) < modularDistance (χ * a.val - center) :=
      lt_of_not_ge (by simpa only [mem_phaseInterval] using ha)
    nlinarith [Real.sqrt_nonneg (t / m)]
  have hd := near_labels_card S χ center m t hc
  have hsize : ∀ i : Fin m, (S.card : ℝ) / (2 * m) ≤
      ((balancedSizes S.card m i - 1 : ℕ) : ℝ) :=
    balanced_remainder_size_lower S.card m hm hfour
  have htail := partition_currentPart_threeQuarters_lowerTail (balancedSizes S.card m)
    (by simpa using balancedSizes_sum S.card m hm)
    (balancedSizes_pos S.card m hm (by omega)) a G (by
      intro b hb
      simp only [Finset.mem_erase, Finset.mem_univ, and_true]
      intro h; exact haG (h ▸ hb)) hd _ hsize
  rw [partitionProbabilityReal_eq_event] at htail
  have heq : -((S.card : ℝ) / (2 * m)) / 24 = -(S.card : ℝ) / (48 * m) := by ring
  rw [heq] at htail
  apply (eventProbability_mono _ _ (fun P hP => ?_)).trans htail
  have hbound : (((part P (P.val a)).filter (fun b =>
      b.val ∈ phaseInterval χ center (8 * Real.sqrt (t / m)))).card : ℝ) <
      (1 / 2 : ℝ) * ((balancedSizes S.card m (P.val a) - 1 : ℕ) : ℝ) := by
    calc
      _ < (S.card : ℝ) / (4 * m) := hP
      _ = (1 / 2 : ℝ) * ((S.card : ℝ) / (2 * m)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (hsize (P.val a)) (by norm_num)
  unfold currentPartCountBad
  convert hbound using 1
  congr 2
  ext b
  simp [G]

/-- Source Lemma 3.3, retaining the actual center witness and the strict
outside-`B_(2000t)` premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
