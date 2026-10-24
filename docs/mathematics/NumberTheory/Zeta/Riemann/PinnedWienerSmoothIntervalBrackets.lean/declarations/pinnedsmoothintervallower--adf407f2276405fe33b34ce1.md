# pinnedSmoothIntervalLower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afe7dea4-8cb0-55e2-ed3c-8af627eecc5a",
  "kind": "theorem",
  "lexical_name": "pinnedSmoothIntervalLower",
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
  "slug": "pinnedsmoothintervallower--adf407f2276405fe33b34ce1",
  "source": {
    "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf407f2276405fe33b34ce1ee262453bc55ccb6ccd1482c67183a75b7c59db0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afe7dea4-8cb0-55e2-ed3c-8af627eecc5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedSmoothIntervalLower
    {a b η : ℝ} (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηwidth : η < b - a) :
    ∃ lower : ℝ → ℝ,
      ContDiff ℝ ∞ lower ∧
      HasCompactSupport lower ∧
      closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
      (∀ x : ℝ,
        0 ≤ lower x ∧ lower x ≤ 1 ∧
        lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x) ∧
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x := by
  let v : ℝ := a + η / 2
  let w : ℝ := b - η / 2
  have huv : a < v := by dsimp [v]; linarith
  have hwz : w < b := by dsimp [w]; linarith
  have hvw : v ≤ w := by dsimp [v, w]; linarith
  obtain ⟨lower, hsmooth, hcompact, hrange, hone, hsupport⟩ :=
    pinnedSmoothUrysohnIoo huv hwz
  have haway :=
    pinnedIntervalSupport_closure_away ha hsupport
  have hpoint (x : ℝ) :
      (Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ lower x := by
    by_cases hx : x ∈ Set.Icc v w
    · have honeX := hone x hx
      simp [Set.indicator_of_mem hx, honeX]
    · have hx0 : 0 ≤ lower x := (hrange x).1
      simpa [Set.indicator_of_notMem hx] using hx0
  have hbelow (x : ℝ) :
      lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x := by
    by_cases hx : x ∈ Set.Ico a b
    · have hu : lower x ≤ 1 := (hrange x).2
      simpa [Set.indicator_of_mem hx] using hu
    · have hzero : lower x = 0 := by
        by_contra hne
        have hmem : x ∈ Function.support lower := hne
        rw [hsupport] at hmem
        have hinside : x ∈ Set.Ico a b :=
          ⟨(Set.mem_Ioo.mp hmem).1.le, (Set.mem_Ioo.mp hmem).2⟩
        exact hx hinside
      simp [Set.indicator_of_notMem hx, hzero]
  have hinsidePositive : Set.Icc v w ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    have hxl : v ≤ x := (Set.mem_Icc.mp hx).1
    exact Set.mem_Ioi.mpr (by dsimp [v] at hxl; linarith)
  have hinnerSet :
      Set.Icc v w ∩ Set.Ioi (0 : ℝ) = Set.Icc v w :=
    Set.inter_eq_left.mpr hinsidePositive
  have hmass :
      (∫ x in Set.Ioi (0 : ℝ),
        (Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)) x)
          = b - a - η := by
    simp only [measurableSet_Icc, integral_indicator_one,
      measureReal_restrict_apply, hinnerSet, volume_real_Icc]
    rw [max_eq_left (by dsimp [v, w]; linarith : (0 : ℝ) ≤ w - v)]
    dsimp [v, w]
    ring
  have hIntLower : IntegrableOn lower (Set.Ioi (0 : ℝ)) volume :=
    (hsmooth.continuous.integrable_of_hasCompactSupport hcompact).integrableOn
  have hIntIndicator :
      IntegrableOn
        ((Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)))
        (Set.Ioi (0 : ℝ)) volume := by
    rw [IntegrableOn, integrable_indicator_iff measurableSet_Icc]
    apply IntegrableOn.mono ?_ subset_rfl Measure.restrict_le_self
    apply integrableOn_const <;> simp
  have hintegral :
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x := by
    rw [← hmass]
    exact setIntegral_mono hIntIndicator hIntLower hpoint
  refine ⟨lower, hsmooth, hcompact, haway, ?_, hintegral⟩
  intro x
  exact ⟨(hrange x).1, (hrange x).2, hbelow x⟩

/-- The upper smooth bracket equals one on [a,b], is supported strictly
inside (a-eta/2,b+eta/2), and has at most b-a+eta mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
