# finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b44fb5f-c39e-bba8-5cdd-23c01efda734",
  "kind": "theorem",
  "lexical_name": "finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one",
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
  "slug": "finitecyclicjordanlowerscale-le-norm-stdaddchar-sub-one--acf494488ba47ccd5e040bcf",
  "source": {
    "blob": "5d78497f8a1cdadee5da6a0b4a8083b3c97ab008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 122,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf494488ba47ccd5e040bcf02ffd5bd222c7856cc7f160323956a6252431847",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b44fb5f-c39e-bba8-5cdd-23c01efda734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCyclicJordanLowerScale_le_norm_stdAddChar_sub_one
    (t : ZMod q) :
    finiteCyclicJordanLowerScale t ≤ ‖ZMod.stdAddChar t - 1‖ := by
  let d := finiteCyclicCircularDistance t
  let x : ℝ := Real.pi * (d : ℝ) / (q : ℝ)
  have hqnat : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hq : (0 : ℝ) < (q : ℝ) := by
    exact_mod_cast hqnat
  have hdqnat : 2 * d ≤ q := by
    simpa [d] using finiteCyclicCircularDistance_two_mul_le t
  have hdq : (d : ℝ) ≤ (q : ℝ) / 2 := by
    have hcast : (2 : ℝ) * (d : ℝ) ≤ (q : ℝ) := by
      exact_mod_cast hdqnat
    linarith
  have hx0 : 0 ≤ x := by
    dsimp [x]
    positivity
  have hxhalf : x ≤ Real.pi / 2 := by
    dsimp [x]
    calc
      Real.pi * (d : ℝ) / (q : ℝ) ≤
          Real.pi * ((q : ℝ) / 2) / (q : ℝ) := by
            gcongr
      _ = Real.pi / 2 := by
        field_simp [ne_of_gt hq]
  have hxpi : x ≤ Real.pi := by
    linarith [Real.pi_pos]
  have hsin : 0 ≤ Real.sin x :=
    Real.sin_nonneg_of_nonneg_of_le_pi hx0 hxpi
  have hJordan : 2 / Real.pi * x ≤ Real.sin x :=
    Real.mul_le_sin hx0 hxhalf
  have hscaled :
      4 * (d : ℝ) / (q : ℝ) ≤ 2 * Real.sin x := by
    calc
      4 * (d : ℝ) / (q : ℝ) = 2 * (2 / Real.pi * x) := by
        dsimp [x]
        field_simp [Real.pi_ne_zero, ne_of_gt hq]
        ring
      _ ≤ 2 * Real.sin x := by
        gcongr
  rw [norm_stdAddChar_sub_one_eq_sineCircularDistance]
  have hnorm : ‖(2 : ℝ) * Real.sin x‖ = 2 * Real.sin x := by
    rw [Real.norm_eq_abs, abs_of_nonneg]
    positivity
  simpa [finiteCyclicJordanLowerScale, d, x, hnorm] using hscaled

/-- A nonzero frequency has the reciprocal circular-distance multiplier bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d78497f8a1cdadee5da6a0b4a8083b3c97ab008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
