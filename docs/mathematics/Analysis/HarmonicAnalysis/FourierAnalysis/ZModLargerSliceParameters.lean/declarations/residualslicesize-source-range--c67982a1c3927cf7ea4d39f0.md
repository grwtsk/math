# residualSliceSize_source_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdf8fc04-39f1-5b89-124e-dc5415fbab07",
  "kind": "theorem",
  "lexical_name": "residualSliceSize_source_range",
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
  "slug": "residualslicesize-source-range--c67982a1c3927cf7ea4d39f0",
  "source": {
    "blob": "9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 231,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67982a1c3927cf7ea4d39f06b66d81b50479bb357f7ba01227e7d67ca575a09",
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

Occurrence: `result:cdf8fc04-39f1-5b89-124e-dc5415fbab07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualSliceSize_source_range
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hdensity : (m : ℝ) ≤ (1 - ε) * n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ))
    (hsample : sourceConstant * Real.log n < m) :
    let k := retainedSliceSize ε n m
    let r := n - m + k
    n - (m - k) = r ∧
    k ≤ r ∧
    r ≤ n ∧
    ε * n ≤ (r : ℝ) ∧
    2 ≤ r ∧
    sourceConstant * Real.log r ≤ k ∧
    (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r := by
  let k := retainedSliceSize ε n m
  let r := n - m + k
  change n - (m - k) = r ∧ k ≤ r ∧ r ≤ n ∧
    ε * n ≤ (r : ℝ) ∧ 2 ≤ r ∧
    sourceConstant * Real.log r ≤ k ∧
    (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r
  obtain ⟨hk2, hkm, hkC, hkUpper, _hkLower⟩ :=
    retainedSliceSize_bounds ε hε hε1 n m hn hm
      hdensity hlarge hsample
  change 2 ≤ k at hk2
  change k ≤ m at hkm
  change sourceConstant * Real.log n ≤ (k : ℝ) at hkC
  change (k : ℝ) ≤ ε * n / (1000 * Real.log n) at hkUpper
  have hmn : m ≤ n :=
    sample_le_card_of_density ε hε.le n m hdensity
  have hdecomp : n - (m - k) = r := by
    dsimp only [r]
    omega
  have hkr : k ≤ r := by
    dsimp only [r]
    omega
  have hrn : r ≤ n := by
    dsimp only [r]
    omega
  have hrcast :
      (r : ℝ) = (n : ℝ) - m + k := by
    dsimp only [r]
    rw [Nat.cast_add, Nat.cast_sub hmn]
  have hrLower : ε * n ≤ (r : ℝ) := by
    rw [hrcast]
    have hk0 : (0 : ℝ) ≤ k := by positivity
    nlinarith
  have hr2 : 2 ≤ r := hk2.trans hkr
  have hrPos : (0 : ℝ) < r := by
    exact_mod_cast (show 0 < r by omega)
  have hrnR : (r : ℝ) ≤ n := by
    exact_mod_cast hrn
  have hlognPos : 0 < Real.log (n : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hlogrPos : 0 < Real.log (r : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < r by omega))
  have hlogrn : Real.log (r : ℝ) ≤ Real.log n :=
    Real.log_le_log hrPos hrnR
  have hsourceLower :
      sourceConstant * Real.log r ≤ (k : ℝ) :=
    (mul_le_mul_of_nonneg_left hlogrn sourceConstant_pos.le).trans hkC
  have hsourceUpper' :
      (k : ℝ) ≤ (r : ℝ) / (1000 * Real.log r) := by
    calc
      _ ≤ ε * n / (1000 * Real.log n) := hkUpper
      _ ≤ (r : ℝ) / (1000 * Real.log n) :=
        div_le_div_of_nonneg_right hrLower (by positivity)
      _ ≤ (r : ℝ) / (1000 * Real.log r) :=
        div_le_div_of_nonneg_left hrPos.le
          (by positivity : 0 < 1000 * Real.log (r : ℝ))
          (mul_le_mul_of_nonneg_left hlogrn (by norm_num))
  have hsourceUpper :
      (k : ℝ) ≤ (1 / 1000 : ℝ) * r / Real.log r := by
    calc
      _ ≤ (r : ℝ) / (1000 * Real.log r) := hsourceUpper'
      _ = (1 / 1000 : ℝ) * r / Real.log r := by
        field_simp [ne_of_gt hlogrPos]
  exact ⟨hdecomp, hkr, hrn, hrLower, hr2, hsourceLower, hsourceUpper⟩

end GRWTSK.ZModLargerSliceParameters
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
