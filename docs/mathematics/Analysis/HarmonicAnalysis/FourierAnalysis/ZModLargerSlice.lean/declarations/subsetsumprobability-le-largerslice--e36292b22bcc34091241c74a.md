# subsetSumProbability_le_largerSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c07626b-2b9a-d32b-600d-92d5e71c5a40",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_le_largerSlice",
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
  "slug": "subsetsumprobability-le-largerslice--e36292b22bcc34091241c74a",
  "source": {
    "blob": "2ee1212cb57a0641a60c479b37337c31a65d593d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 81,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSlice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36292b22bcc34091241c74afc98dfa793f02d4cb63b87af2dabf6bc9e4477e8",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c07626b-2b9a-d32b-600d-92d5e71c5a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_le_largerSlice
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card)
    (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p +
        largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := by
  have hmn : m ≤ S.card := by
    have hnonneg : 0 ≤ ε * (S.card : ℝ) :=
      mul_nonneg hε.le (Nat.cast_nonneg S.card)
    have hmnR : (m : ℝ) ≤ S.card := by
      nlinarith [hdensity]
    exact_mod_cast hmnR
  have hcompletion :=
    completion_margin_bound S m z hn hm hε hdensity
  by_cases hcard : (S.card : ℝ) ≤ sliceThreshold ε ^ 2
  · have herror :=
      margin_reciprocal_le_error_of_small_card
        S.card m hn hm hmn hε hcard
    calc
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
          1 / (ε * S.card) := hcompletion
      _ ≤ largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := herror
      _ ≤ 1 / p +
          largerSliceConstant ε * Real.sqrt (Real.log S.card) /
            ((S.card : ℝ) * Real.sqrt m) :=
        le_add_of_nonneg_left (by positivity)
  · by_cases hsample :
        (m : ℝ) ≤ sourceConstant * Real.log S.card
    · have herror :=
        margin_reciprocal_le_error_of_small_sample
          S.card m hn hm hε hε1.le hsample
      calc
        (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
            1 / (ε * S.card) := hcompletion
        _ ≤ largerSliceConstant ε * Real.sqrt (Real.log S.card) /
            ((S.card : ℝ) * Real.sqrt m) := herror
        _ ≤ 1 / p +
            largerSliceConstant ε * Real.sqrt (Real.log S.card) /
              ((S.card : ℝ) * Real.sqrt m) :=
          le_add_of_nonneg_left (by positivity)
    · have hlarge : sliceThreshold ε ^ 2 ≤ (S.card : ℝ) :=
        (lt_of_not_ge hcard).le
      have hsample' :
          sourceConstant * Real.log S.card < (m : ℝ) :=
        lt_of_not_ge hsample
      let k := retainedSliceSize ε S.card m
      let r := S.card - m + k
      obtain ⟨_hk2, hkm, _hkC, _hkUpper, hkLower⟩ :=
        retainedSliceSize_bounds ε hε hε1 S.card m hn hm
          hdensity hlarge hsample'
      obtain ⟨hdecomp, _hkr, _hrn, hrLower, hr2,
          hSourceLower, hSourceUpper⟩ :=
        residualSliceSize_source_range ε hε hε1 S.card m hn hm
          hdensity hlarge hsample'
      change k ≤ m at hkm
      change ε * (m : ℝ) / (2000 * Real.log S.card) ≤
        (k : ℝ) at hkLower
      change S.card - (m - k) = r at hdecomp
      change ε * (S.card : ℝ) ≤ (r : ℝ) at hrLower
      change 2 ≤ r at hr2
      change sourceConstant * Real.log r ≤ (k : ℝ) at hSourceLower
      change (k : ℝ) ≤
        (1 / 1000 : ℝ) * r / Real.log r at hSourceUpper
      have hsplit : m - k + k = m :=
        Nat.sub_add_cancel hkm
      have hsplitSize : m - k + k ≤ S.card := by
        rw [hsplit]
        exact hmn
      have herror :=
        slice_error_le S.card m r k hn hm hε hε1.le hrLower hkLower
      have hbound :
          (GRWTSK.ZModSubsetSum.subsetSumProbability
            S ((m - k) + k) z : ℝ) ≤
            1 / p +
              largerSliceConstant ε * Real.sqrt (Real.log S.card) /
                ((S.card : ℝ) * Real.sqrt m) := by
        apply subsetSumProbability_le_of_exposure
          S (m - k) k hsplitSize z
          (1 / p +
            largerSliceConstant ε * Real.sqrt (Real.log S.card) /
              ((S.card : ℝ) * Real.sqrt m))
        intro A hA
        obtain ⟨hAS, hAm⟩ := Finset.mem_powersetCard.mp hA
        have hAc : (S \ A).card = r := by
          calc
            (S \ A).card = S.card - (m - k) := by
              rw [Finset.card_sdiff_of_subset hAS, hAm]
            _ = r := hdecomp
        have hsource :=
          GRWTSK.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant
            (m := k) hp (S \ A)
            (by simpa only [hAc] using hr2)
            (by simpa only [hAc, sourceConstant] using hSourceLower)
            (by simpa only [hAc] using hSourceUpper)
            (z - ∑ x ∈ A, x)
        have hsource' :
            (GRWTSK.ZModSubsetSum.subsetSumProbability
              (S \ A) k (z - ∑ x ∈ A, x) : ℝ) ≤
              1 / p + sourceConstant / ((r : ℝ) * Real.sqrt k) := by
          simpa only [hAc, sourceConstant] using hsource
        exact hsource'.trans (add_le_add le_rfl herror)
      simpa only [hsplit] using hbound

omit [NeZero p] in
/-- Prime-only facade: nonzero modulus is derived from primality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSlice.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1212cb57a0641a60c479b37337c31a65d593d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
