# tauberian_relativeWindows_to_fullCumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b279f89-8895-dd67-31be-06baca4c88b1",
  "kind": "theorem",
  "lexical_name": "tauberian_relativeWindows_to_fullCumulative",
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
  "slug": "tauberian-relativewindows-to-fullcumulative--ca4f2385a1078388eb822076",
  "source": {
    "blob": "82512b31a851a39b8d7eed65f5ab855adae660cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca4f2385a1078388eb822076b3f23701c1042bfe3ebe0dbe6a3694032a14e8b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b279f89-8895-dd67-31be-06baca4c88b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tauberian_relativeWindows_to_fullCumulative
    (f : ℕ → ℝ) (A C : ℝ)
    (hC : 0 ≤ C)
    (hf : ∀ n : ℕ, 0 ≤ f n)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    (hwindows : TauberianRelativeWindowLimits f A) :
    Tendsto
      (fun N : ℕ => (∑ n ∈ Finset.range N, f n) / (N : ℝ))
      atTop (nhds A) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  let H : ℝ := C + |A| + 1
  have hH : 0 < H := by
    dsimp [H]
    linarith [abs_nonneg A]
  let δ : ℝ := min (1 / 4) (ε / (8 * H))
  have hδpos : 0 < δ := by
    dsimp [δ]
    apply lt_min
    · norm_num
    · exact div_pos hε (mul_pos (by norm_num) hH)
  have hδquarter : δ ≤ (1 : ℝ) / 4 := by
    dsimp [δ]
    exact min_le_left _ _
  have hδcost : δ ≤ ε / (8 * H) := by
    dsimp [δ]
    exact min_le_right _ _
  have hδlt1 : δ < 1 := by linarith
  have hApos : 0 ≤ |A| := abs_nonneg A
  have hcostCoefficient :
      2 * C + |A| ≤ 2 * H := by
    dsimp [H]
    linarith
  have hcost :
      (2 * C + |A|) * δ ≤ ε / 4 := by
    calc
      (2 * C + |A|) * δ
          ≤ (2 * H) * δ :=
        mul_le_mul_of_nonneg_right hcostCoefficient hδpos.le
      _ ≤ (2 * H) * (ε / (8 * H)) :=
        mul_le_mul_of_nonneg_left hδcost (by positivity)
      _ = ε / 4 := by
        field_simp [ne_of_gt hH]
        ring
  obtain ⟨Nw, hNw⟩ :=
    (Metric.tendsto_atTop.mp
      (hwindows δ hδpos hδlt1))
      (ε / 2) (half_pos hε)
  have hceil :
      Tendsto
        (fun N : ℕ =>
          ((⌈δ * (N : ℝ)⌉₊ : ℝ) / (N : ℝ)))
        atTop (nhds δ) := by
    simpa only [Function.comp_def] using
      (tendsto_nat_ceil_mul_div_atTop hδpos.le).comp
        tendsto_natCast_atTop_atTop
  obtain ⟨Nk, hNk⟩ :=
    (Metric.tendsto_atTop.mp hceil)
      δ hδpos
  refine ⟨max (max Nw Nk) 1, ?_⟩
  intro N hNlarge
  have hNw' : Nw ≤ N := by omega
  have hNk' : Nk ≤ N := by omega
  have hNpos : 0 < N := by omega
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hNpos
  let k : ℕ := ⌈δ * (N : ℝ)⌉₊
  have hceilClose :
      |(k : ℝ) / (N : ℝ) - δ| < δ := by
    simpa only [Real.dist_eq, k] using hNk N hNk'
  have hceilRatio :
      (k : ℝ) / (N : ℝ) ≤ 2 * δ := by
    have hright := (abs_lt.mp hceilClose).2
    linarith
  have hcutoff : k ≤ N := by
    have hratioOne : (k : ℝ) / (N : ℝ) < 1 := by
      linarith
    have hkr : (k : ℝ) < (N : ℝ) := by
      have h := (div_lt_iff₀ hNr).mp hratioOne
      simpa using h
    exact_mod_cast hkr.le
  let early : ℝ :=
    (∑ n ∈ Finset.range k, f n) / (N : ℝ)
  let window : ℝ :=
    (∑ n ∈ Finset.Ico k N, f n) / (N : ℝ)
  have hwindowClose :
      |window - A * (1 - δ)| < ε / 2 := by
    simpa [window, k, Real.dist_eq] using hNw N hNw'
  have hearlyPos : 0 ≤ early := by
    dsimp [early]
    exact div_nonneg (Finset.sum_nonneg fun n _ => hf n) hNr.le
  have hearlyLe : early ≤ 2 * C * δ := by
    calc
      early ≤ C * ((k : ℝ) / (N : ℝ)) := by
        dsimp [early]
        exact tauberian_omitted_prefix_le f C hC hprefix hNpos
      _ ≤ C * (2 * δ) :=
        mul_le_mul_of_nonneg_left hceilRatio hC
      _ = 2 * C * δ := by ring
  have hfull :
      (∑ n ∈ Finset.range N, f n) / (N : ℝ) =
        early + window := by
    rw [tauberian_relative_window_exact_partition f hcutoff]
    simp [early, window, add_div]
  have hearlyAbs :
      |early - A * δ| ≤ early + |A| * δ := by
    calc
      |early - A * δ| ≤ |early| + |A * δ| := abs_sub _ _
      _ = early + |A| * δ := by
        rw [abs_of_nonneg hearlyPos, abs_mul,
          abs_of_nonneg hδpos.le]
  have herror :
      |(∑ n ∈ Finset.range N, f n) / (N : ℝ) - A| <
        ε := by
    rw [hfull]
    have hid :
        early + window - A =
          (window - A * (1 - δ)) +
            (early - A * δ) := by ring
    rw [hid]
    calc
      |(window - A * (1 - δ)) + (early - A * δ)|
          ≤ |window - A * (1 - δ)| +
              |early - A * δ| := abs_add _ _
      _ ≤ |window - A * (1 - δ)| +
              (early + |A| * δ) :=
        add_le_add_left hearlyAbs _
      _ < ε / 2 + (early + |A| * δ) :=
        add_lt_add_right hwindowClose _
      _ ≤ ε / 2 + ((2 * C + |A|) * δ) := by
        linarith [hearlyLe]
      _ ≤ ε / 2 + ε / 4 :=
        add_le_add_left hcost _
      _ < ε := by linarith
  simpa only [Real.dist_eq] using herror

/-- The sole missing analytic source for the historical von Mangoldt
application is now the relative INTERVAL limit.  It is not silently
constructed from boundary continuation or the input profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82512b31a851a39b8d7eed65f5ab855adae660cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
