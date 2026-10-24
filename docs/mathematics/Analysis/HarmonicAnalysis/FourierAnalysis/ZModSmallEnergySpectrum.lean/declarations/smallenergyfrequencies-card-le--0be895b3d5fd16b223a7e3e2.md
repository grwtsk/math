# smallEnergyFrequencies_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c015a290-14a9-1118-66a9-de49756dd2bf",
  "kind": "theorem",
  "lexical_name": "smallEnergyFrequencies_card_le",
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
  "slug": "smallenergyfrequencies-card-le--0be895b3d5fd16b223a7e3e2",
  "source": {
    "blob": "95681c2768eeac33856177ca2e0114d68f0c544c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 81,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0be895b3d5fd16b223a7e3e2e29d1d82f3fe5b3a87fc413f221d5a18e97315a7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c015a290-14a9-1118-66a9-de49756dd2bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallEnergyFrequencies_card_le (hp : p.Prime) (S : Finset (ZMod p))
    (hS10 : 10 ≤ S.card) (m t : ℝ) (hm : 0 < m) (ht : 0 < t)
    (htm : t ≤ m / 2000) :
    ((smallEnergyFrequencies S m t).card : ℝ) ≤
      1 + 200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by
  let B := smallEnergyFrequencies S m t
  by_cases hB2 : 2 ≤ B.card
  · have hB : B.Nonempty := Finset.card_pos.mp (by omega)
    have hBpos : (0 : ℝ) < B.card := by exact_mod_cast hB.card_pos
    have hB2R : (2 : ℝ) ≤ B.card := by exact_mod_cast hB2
    have hS : S.Nonempty := Finset.card_pos.mp (by omega)
    have hSpos : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
    have hS10R : (10 : ℝ) ≤ S.card := by exact_mod_cast hS10
    have hppos : (0 : ℝ) < p := by exact_mod_cast hp.pos
    let Q := smallEnergyPoints B (10 * t / m)
    let W := smallEnergyPoints B (1 / 200)
    let k := expansionLength m t
    obtain ⟨hk, henergy, hklower⟩ := expansionLength_spec m t hm ht htm
    have hk' : 0 < k := hk
    have hQlower : (9 / 10 : ℝ) * S.card ≤ Q.card :=
      smallEnergyPoints_card_lower S hS m t hm ht
    have hQ : Q.Nonempty := Finset.card_pos.mp (by
      have : (0 : ℝ) < Q.card := by linarith
      exact_mod_cast this)
    have hWupper : (W.card : ℝ) ≤ (5 / 4 : ℝ) * p / B.card :=
      smallEnergyPoints_card_le B hB
    have hWmul : (W.card : ℝ) * B.card ≤ (5 / 4 : ℝ) * p :=
      (le_div_iff₀ hBpos).mp hWupper
    have hWlt : (W.card : ℝ) < p := by
      have htwice := mul_le_mul_of_nonneg_left hB2R (show (0 : ℝ) ≤ W.card by positivity)
      nlinarith
    have hsubset : iteratedSumset Q k ⊆ W :=
      (iteratedSumset_smallEnergyPoints_subset B (10 * t / m) k hk').trans
        (smallEnergyPoints_mono B henergy)
    have hne : iteratedSumset Q k ≠ Finset.univ := by
      intro he
      have hc := Finset.card_le_card hsubset
      rw [he] at hc
      simp only [Finset.card_univ, ZMod.card] at hc
      have hc' : (p : ℝ) ≤ W.card := by exact_mod_cast hc
      exact (not_le_of_gt hWlt) hc'
    have hgrowth := prime_card_lower_bound_of_ne_univ hp Q hQ k hne
    have hQone : 1 ≤ Q.card := hQ.card_pos
    have hgrR : (1 : ℝ) + (k : ℝ) * ((Q.card : ℝ) - 1) ≤
        (iteratedSumset Q k).card := by
      have hcast := (Nat.cast_le (α := ℝ)).mpr hgrowth
      simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_sub hQone] using hcast
    have hbase : (4 / 5 : ℝ) * S.card ≤ (Q.card : ℝ) - 1 := by linarith
    have hlower : (4 / 5 : ℝ) * (k : ℝ) * S.card ≤ W.card := by
      have hmul := mul_le_mul_of_nonneg_left hbase (show (0 : ℝ) ≤ k by positivity)
      have hcard : ((iteratedSumset Q k).card : ℝ) ≤ W.card := by
        exact_mod_cast Finset.card_le_card hsubset
      nlinarith
    have hlowerB := mul_le_mul_of_nonneg_right hlower (le_of_lt hBpos)
    have hchain : (4 / 5 : ℝ) * (k : ℝ) * S.card * B.card ≤ (5 / 4 : ℝ) * p :=
      hlowerB.trans hWmul
    have hst : 0 < Real.sqrt t := Real.sqrt_pos.mpr ht
    have hsm : 0 < Real.sqrt m := Real.sqrt_pos.mpr hm
    have hkroot : (1 / 100 : ℝ) * Real.sqrt m ≤ (k : ℝ) * Real.sqrt t := by
      calc
        _ = ((1 / 100 : ℝ) * Real.sqrt (m / t)) * Real.sqrt t := by
          rw [Real.sqrt_div hm.le]
          field_simp
        _ ≤ _ := mul_le_mul_of_nonneg_right hklower hst.le
    have hrootmul := mul_le_mul_of_nonneg_right hkroot
      (show (0 : ℝ) ≤ (S.card : ℝ) * B.card by positivity)
    have hchainsqrt := mul_le_mul_of_nonneg_right hchain hst.le
    have hfinalmul : (B.card : ℝ) * ((S.card : ℝ) * Real.sqrt m) ≤
        200 * p * Real.sqrt t := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ p by positivity) hst.le]
    have hfinal : (B.card : ℝ) ≤
        200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) :=
      (le_div_iff₀ (mul_pos hSpos hsm)).mpr hfinalmul
    change (B.card : ℝ) ≤ _
    linarith
  · have hBsmall : (B.card : ℝ) ≤ 1 := by exact_mod_cast (show B.card ≤ 1 by omega)
    change (B.card : ℝ) ≤ _
    have hnonneg : 0 ≤ 200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by positivity
    linarith

end GRWTSK.ZModSmallEnergySpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95681c2768eeac33856177ca2e0114d68f0c544c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
