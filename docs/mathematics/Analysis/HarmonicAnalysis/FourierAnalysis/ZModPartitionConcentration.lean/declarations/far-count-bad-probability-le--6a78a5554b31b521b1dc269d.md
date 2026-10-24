# far_count_bad_probability_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa91c58-3413-a913-591c-67fb5e8bd9b9",
  "kind": "theorem",
  "lexical_name": "far_count_bad_probability_le",
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
  "slug": "far-count-bad-probability-le--6a78a5554b31b521b1dc269d",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 292,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a78a5554b31b521b1dc269d2131cfe2f1f673a24d5612aff2186cbf70bc9bf8",
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

Occurrence: `result:0aa91c58-3413-a913-591c-67fb5e8bd9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem far_count_bad_probability_le (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (χ : ZMod p) (hχ : χ ≠ 0) (t : ℝ)
    (hD : χ ∉ concentratedFrequencies S m t) (a : S) :
    eventProbability (fun P : BalancedPartitions S m =>
      (((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) <
        (S.card : ℝ) / (16 * m)) ≤ Real.exp (-(S.card : ℝ) / (64 * m)) := by
  let G : Finset S := Finset.univ.filter (fun b =>
    8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))
  have ha : a ∉ G := by
    simp only [G, Finset.mem_filter, Finset.mem_univ, true_and, sub_self, mul_zero,
      modularDistance_zero]
    nlinarith [Real.sqrt_nonneg (t / m)]
  have hcard := far_labels_card S m t χ hχ hD a
  have hpred : (((Fintype.card S - 1 : ℕ) : ℝ) / 4) ≤ G.card := by
    have hc : ((Fintype.card S - 1 : ℕ) : ℝ) ≤ S.card := by
      exact_mod_cast (show Fintype.card S - 1 ≤ S.card by simp)
    change (S.card : ℝ) / 4 ≤ (G.card : ℝ) at hcard
    linarith
  have hsize : ∀ i : Fin m, (S.card : ℝ) / (2 * m) ≤
      ((balancedSizes S.card m i - 1 : ℕ) : ℝ) :=
    balanced_remainder_size_lower S.card m hm hfour
  have htail := partition_currentPart_quarter_lowerTail (balancedSizes S.card m)
    (by simpa using balancedSizes_sum S.card m hm)
    (balancedSizes_pos S.card m hm (by omega)) a G (by
      intro b hb
      simp only [Finset.mem_erase, Finset.mem_univ, and_true]
      intro h; exact ha (h ▸ hb)) hpred _ hsize
  rw [partitionProbabilityReal_eq_event] at htail
  have heq : -((S.card : ℝ) / (2 * m)) / 32 = -(S.card : ℝ) / (64 * m) := by ring
  rw [heq] at htail
  apply (eventProbability_mono _ _ (fun P hP => ?_)).trans htail
  have hbound : (((part P (P.val a)).filter (fun b =>
      8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card : ℝ) <
      (1 / 8 : ℝ) * ((balancedSizes S.card m (P.val a) - 1 : ℕ) : ℝ) := by
    calc
      _ < (S.card : ℝ) / (16 * m) := hP
      _ = (1 / 8 : ℝ) * ((S.card : ℝ) / (2 * m)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (hsize (P.val a)) (by norm_num)
  unfold currentPartCountBad
  convert hbound using 1
  congr 2
  ext b
  simp [G]

/-- Source Lemma 3.1: for a nonconcentrated nonzero frequency, the actual
balanced-partition lower-tail probability is at most `|S|⁻⁹`. No Fourier or
probability estimate is an input hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
