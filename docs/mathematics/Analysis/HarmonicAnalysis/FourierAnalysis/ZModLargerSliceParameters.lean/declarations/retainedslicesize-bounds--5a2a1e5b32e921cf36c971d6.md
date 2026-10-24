# retainedSliceSize_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:664331bd-1869-d31e-7fa3-71c08127600b",
  "kind": "theorem",
  "lexical_name": "retainedSliceSize_bounds",
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
  "slug": "retainedslicesize-bounds--5a2a1e5b32e921cf36c971d6",
  "source": {
    "blob": "9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 154,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2a1e5b32e921cf36c971d624ab8dc71d19aa5f15b6905f87ca2e6392ef0ac7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:664331bd-1869-d31e-7fa3-71c08127600b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retainedSliceSize_bounds
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hdensity : (m : ℝ) ≤ (1 - ε) * n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ))
    (hsample : sourceConstant * Real.log n < m) :
    let k := retainedSliceSize ε n m
    2 ≤ k ∧
    k ≤ m ∧
    sourceConstant * Real.log n ≤ k ∧
    (k : ℝ) ≤ ε * n / (1000 * Real.log n) ∧
    ε * m / (2000 * Real.log n) ≤ k := by
  let k := retainedSliceSize ε n m
  change 2 ≤ k ∧ k ≤ m ∧
    sourceConstant * Real.log n ≤ k ∧
    (k : ℝ) ≤ ε * n / (1000 * Real.log n) ∧
    ε * m / (2000 * Real.log n) ≤ k
  obtain ⟨_hf2, hfLower, hfC, hfUpper⟩ :=
    auxiliarySliceSize_bounds ε hε n hn hlarge
  have hmn : m ≤ n :=
    sample_le_card_of_density ε hε.le n m hdensity
  have hmnR : (m : ℝ) ≤ n := by
    exact_mod_cast hmn
  have hmR : (0 : ℝ) ≤ m := by
    exact_mod_cast (Nat.zero_le 1).trans hm
  have hloghalf :=
    GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlogpos : 0 < Real.log (n : ℝ) := by
    linarith
  have hden : 0 < 2000 * Real.log (n : ℝ) := by
    positivity
  have hkm : k ≤ m := by
    exact Nat.min_le_left m (auxiliarySliceSize ε n)
  have hkf : k ≤ auxiliarySliceSize ε n := by
    exact Nat.min_le_right m (auxiliarySliceSize ε n)
  have hkfR : (k : ℝ) ≤ auxiliarySliceSize ε n := by
    exact_mod_cast hkf
  have hCL0 : 0 ≤ sourceConstant * Real.log n :=
    mul_nonneg sourceConstant_pos.le hlogpos.le
  have hfC' :
      sourceConstant * Real.log n ≤ auxiliarySliceSize ε n := by
    nlinarith
  have hkC : sourceConstant * Real.log n ≤ k := by
    dsimp only [k, retainedSliceSize]
    rw [Nat.cast_min]
    exact le_min hsample.le hfC'
  have hk2 : 2 ≤ k := by
    have hk2R : (2 : ℝ) ≤ k :=
      (sourceConstant_mul_log_ge_two n hn).trans hkC
    exact_mod_cast hk2R
  have hkUpper :
      (k : ℝ) ≤ ε * n / (1000 * Real.log n) :=
    hkfR.trans hfUpper
  have hscale : ε ≤ 2000 * Real.log (n : ℝ) := by
    linarith
  have hsmallLeft :
      ε * m / (2000 * Real.log n) ≤ (m : ℝ) := by
    apply (div_le_iff₀ hden).mpr
    calc
      ε * (m : ℝ) ≤ (2000 * Real.log n) * m :=
        mul_le_mul_of_nonneg_right hscale hmR
      _ = (m : ℝ) * (2000 * Real.log n) := by ring
  have hsmallRight :
      ε * m / (2000 * Real.log n) ≤
        (auxiliarySliceSize ε n : ℝ) := by
    calc
      _ ≤ ε * n / (2000 * Real.log n) :=
        div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hmnR hε.le) hden.le
      _ ≤ _ := hfLower
  have hkLower :
      ε * m / (2000 * Real.log n) ≤ (k : ℝ) := by
    dsimp only [k, retainedSliceSize]
    rw [Nat.cast_min]
    exact le_min hsmallLeft hsmallRight
  exact ⟨hk2, hkm, hkC, hkUpper, hkLower⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
