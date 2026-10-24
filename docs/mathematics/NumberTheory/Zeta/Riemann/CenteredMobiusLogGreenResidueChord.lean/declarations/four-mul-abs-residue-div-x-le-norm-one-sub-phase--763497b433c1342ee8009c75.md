# four_mul_abs_residue_div_X_le_norm_one_sub_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de83ad58-a07b-88f2-bd03-cf4a913fc605",
  "kind": "theorem",
  "lexical_name": "four_mul_abs_residue_div_X_le_norm_one_sub_phase",
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
  "slug": "four-mul-abs-residue-div-x-le-norm-one-sub-phase--763497b433c1342ee8009c75",
  "source": {
    "blob": "033e0644af78adbd2cd83ceeffb730c8d71e6243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763497b433c1342ee8009c75383e2dbe5774b78b4bbc7ed597ad645c88999df4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de83ad58-a07b-88f2-bd03-cf4a913fc605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_mul_abs_residue_div_X_le_norm_one_sub_phase
    {X : ℕ} (hX : 1 ≤ X) {r : ℤ}
    (hrange : 2 * |r| ≤ X) :
    4 * |(r : ℝ)| / (X : ℝ) ≤ ‖1 - greenMeshPhase X r‖ := by
  rw [norm_one_sub_greenMeshPhase_eq hX]
  by_cases hr0 : r = 0
  · subst r
    simp
  · have hrabs : 0 < |(r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr0)
    have hXpos : 0 < (X : ℝ) := by exact_mod_cast hX
    let x : ℝ := Real.pi * |(r : ℝ)| / X
    have hx0 : 0 < x := by
      dsimp [x]
      positivity
    have hxhalf : x ≤ Real.pi / 2 := by
      dsimp [x]
      have hrangeR : 2 * |(r : ℝ)| ≤ (X : ℝ) := by exact_mod_cast hrange
      apply (div_le_iff₀ hXpos).2
      nlinarith [Real.pi_pos]
    have hsin :
        2 / Real.pi * x ≤ Real.sin x := by
      by_cases heq : x = Real.pi / 2
      · rw [heq, Real.sin_pi_div_two]
        nlinarith [Real.pi_pos]
      · exact (Real.mul_lt_sin hx0 (lt_of_le_of_ne hxhalf heq)).le
    have habssin :
        |Real.sin (Real.pi * (r : ℝ) / X)| =
          Real.sin x := by
      dsimp [x]
      rw [← abs_mul, abs_of_pos Real.pi_pos, abs_div,
        abs_of_pos hXpos]
      rw [abs_sin]
    rw [habssin]
    dsimp [x] at hsin
    nlinarith [Real.pi_pos]

/-- Small-denominator lower bound in terms of an authenticated centered residue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `033e0644af78adbd2cd83ceeffb730c8d71e6243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
