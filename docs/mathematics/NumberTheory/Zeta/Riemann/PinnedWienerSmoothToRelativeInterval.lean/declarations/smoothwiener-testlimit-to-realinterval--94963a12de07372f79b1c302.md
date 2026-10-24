# smoothWiener_testLimit_to_realInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3486528-99aa-55e4-ce08-b9b47bd2e09b",
  "kind": "theorem",
  "lexical_name": "smoothWiener_testLimit_to_realInterval",
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
  "slug": "smoothwiener-testlimit-to-realinterval--94963a12de07372f79b1c302",
  "source": {
    "blob": "d9074062354b71faefd2782637089a753dd3d46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94963a12de07372f79b1c3025353d7eac2bb8362715ace3a3f4ae2067235a765",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3486528-99aa-55e4-ce08-b9b47bd2e09b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothWiener_testLimit_to_realInterval
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (hsmooth : SmoothUnitResidueWienerTestLimit f)
    {a b : ℝ} (ha : 0 < a) (hab : a < b) :
    Tendsto
      (fun T : ℝ =>
        (∑' n : ℕ,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T)
      atTop (nhds (b - a)) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  let η : ℝ := min (a / 2) (min ((b - a) / 2) (ε / 4))
  have hwidth : 0 < b - a := sub_pos.mpr hab
  have hη : 0 < η := by
    dsimp [η]
    positivity
  have hηleft : η < a := by
    have h := min_le_left (a / 2) (min ((b - a) / 2) (ε / 4))
    dsimp [η]
    linarith
  have hηwidth : η < b - a := by
    have h := (min_le_right (a / 2)
      (min ((b - a) / 2) (ε / 4))).trans
      (min_le_left ((b - a) / 2) (ε / 4))
    dsimp [η]
    linarith
  have hηε : η ≤ ε / 4 := by
    dsimp [η]
    exact (min_le_right _ _).trans (min_le_right _ _)
  obtain ⟨lo, hi, hlosmooth, hhismooth,
    hloCompact, hhiCompact, hloAway, hhiAway,
    hpoint, hloMass, hhiMass⟩ :=
    pinnedSmoothIntervalBrackets_exists
      ha hab hη hηleft hηwidth
  have hlowLimit := hsmooth lo hlosmooth hloCompact hloAway
  have hhiLimit := hsmooth hi hhismooth hhiCompact hhiAway
  obtain ⟨Blo, hBlo⟩ :=
    (Metric.tendsto_atTop.mp hlowLimit)
      (ε / 4) (by linarith)
  obtain ⟨Bhi, hBhi⟩ :=
    (Metric.tendsto_atTop.mp hhiLimit)
      (ε / 4) (by linarith)
  refine ⟨max (max Blo Bhi) 1, ?_⟩
  intro T hTlarge
  have hBloT : Blo ≤ T :=
    (le_max_left _ _).trans ((le_max_left _ _).trans hTlarge)
  have hBhiT : Bhi ≤ T :=
    (le_max_right _ _).trans ((le_max_left _ _).trans hTlarge)
  have hTone : (1 : ℝ) ≤ T :=
    (le_max_right _ _).trans hTlarge
  have hT : 0 < T := (by norm_num : (0 : ℝ) < 1).trans_le hTone
  let low : ℝ := (∑' n : ℕ, f n * lo ((n : ℝ) / T)) / T
  let high : ℝ := (∑' n : ℕ, f n * hi ((n : ℝ) / T)) / T
  let window : ℝ :=
    (∑' n : ℕ,
      f n * (Set.Ico a b).indicator
        (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T
  have hloClose :
      |low - (∫ t in Set.Ioi (0 : ℝ), lo t)| < ε / 4 := by
    simpa only [Real.dist_eq, low] using hBlo T hBloT
  have hhiClose :
      |high - (∫ t in Set.Ioi (0 : ℝ), hi t)| < ε / 4 := by
    simpa only [Real.dist_eq, high] using hBhi T hBhiT
  have hbracket :
      low ≤ window ∧ window ≤ high := by
    simpa [low, high, window] using
      smoothWiener_weightedTsum_sandwich f hf hT lo hi
        hloCompact hhiCompact
        (fun x => (hpoint x).2.1)
        (fun x => (hpoint x).2.2.1)
  have hwindowLower : b - a - η - ε / 4 < window := by
    have hleft := (abs_lt.mp hloClose).1
    linarith [hbracket.1, hloMass]
  have hwindowUpper : window < b - a + η + ε / 4 := by
    have hright := (abs_lt.mp hhiClose).2
    linarith [hbracket.2, hhiMass]
  have hfinal : |window - (b - a)| < ε := by
    apply abs_lt.mpr
    constructor <;> linarith
  simpa only [Real.dist_eq, window] using hfinal

/-- Move from the real-scale smooth theorem to the exact discrete
ceiling-window theorem with no endpoint error and no unproved density
argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9074062354b71faefd2782637089a753dd3d46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
