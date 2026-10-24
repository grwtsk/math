# auxiliarySliceSize_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bb26e03-6a9c-9e85-cffc-aa5785e682ce",
  "kind": "theorem",
  "lexical_name": "auxiliarySliceSize_bounds",
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
  "slug": "auxiliaryslicesize-bounds--3ec23a67a52c4fb4620db046",
  "source": {
    "blob": "9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 93,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec23a67a52c4fb4620db0464e6cb31e275c7b89e380260af8f82bdda26deedc",
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

Occurrence: `result:8bb26e03-6a9c-9e85-cffc-aa5785e682ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem auxiliarySliceSize_bounds (ε : ℝ) (hε : 0 < ε)
    (n : ℕ) (hn : 2 ≤ n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ)) :
    2 ≤ auxiliarySliceSize ε n ∧
    ε * n / (2000 * Real.log n) ≤ auxiliarySliceSize ε n ∧
    2 * sourceConstant * Real.log n ≤ auxiliarySliceSize ε n ∧
    (auxiliarySliceSize ε n : ℝ) ≤
      ε * n / (1000 * Real.log n) := by
  let x : ℝ := ε * n / (1000 * Real.log n)
  have hloghalf :=
    GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlogpos : 0 < Real.log (n : ℝ) := by
    linarith
  have hcut := large_card_log_square ε hε n hn hlarge
  have hscaled := mul_le_mul_of_nonneg_left hcut hε.le
  have hcancel :
      ε * ((4000 * sourceConstant / ε) * (Real.log n) ^ 2) =
        4000 * sourceConstant * (Real.log n) ^ 2 := by
    field_simp [ne_of_gt hε]
  rw [hcancel] at hscaled
  have hraw :
      4 * sourceConstant * Real.log n ≤ x := by
    change 4 * sourceConstant * Real.log n ≤
      ε * n / (1000 * Real.log n)
    apply (le_div_iff₀
      (by positivity : 0 < 1000 * Real.log (n : ℝ))).mpr
    calc
      (4 * sourceConstant * Real.log n) *
          (1000 * Real.log n) =
          4000 * sourceConstant * (Real.log n) ^ 2 := by ring
      _ ≤ ε * n := hscaled
  have hCL := sourceConstant_mul_log_ge_two n hn
  have hx2 : (2 : ℝ) ≤ x := by
    nlinarith
  have hround :
      x < (auxiliarySliceSize ε n : ℝ) + 1 := by
    change x < (⌊x⌋₊ : ℝ) + 1
    exact Nat.lt_floor_add_one x
  have hhalf :
      x / 2 ≤ (auxiliarySliceSize ε n : ℝ) := by
    linarith
  have hfloorC :
      2 * sourceConstant * Real.log n ≤ auxiliarySliceSize ε n := by
    nlinarith
  have hfloor2 : 2 ≤ auxiliarySliceSize ε n := by
    have hfloor2R :
        (2 : ℝ) ≤ (auxiliarySliceSize ε n : ℝ) := by
      nlinarith
    exact_mod_cast hfloor2R
  have hfloorUpper :
      (auxiliarySliceSize ε n : ℝ) ≤ x := by
    change (⌊x⌋₊ : ℝ) ≤ x
    exact Nat.floor_le (by linarith)
  refine ⟨hfloor2, ?_, hfloorC, hfloorUpper⟩
  calc
    ε * n / (2000 * Real.log n) = x / 2 := by
      dsimp [x]
      field_simp [ne_of_gt hlogpos]
      ring
    _ ≤ auxiliarySliceSize ε n := hhalf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
