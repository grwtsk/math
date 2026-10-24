# canonicalThetaGridEnvelope_controls_real_octave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0651b981-10f6-e03f-c8b0-82f96951d491",
  "kind": "theorem",
  "lexical_name": "canonicalThetaGridEnvelope_controls_real_octave",
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
  "slug": "canonicalthetagridenvelope-controls-real-octave--8164a982b29f8b02db76e629",
  "source": {
    "blob": "8275fc00ee2db9f6379ee6dc61869cc633f825ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8164a982b29f8b02db76e6295d078254293b7d050774b5734188461f78b4c978",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0651b981-10f6-e03f-c8b0-82f96951d491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalThetaGridEnvelope_controls_real_octave
    (j : ℕ) :
    ∀ u ∈ Set.Icc (dyadicScale j : ℝ)
        (((2 * dyadicScale j : ℕ) : ℝ)),
      |thetaError u| + 1 ≤ canonicalThetaGridEnvelope j := by
  intro u hu
  let m : ℕ := pinnedPrimeWeightPsiGridIndex u
  have hu0 : 0 ≤ u := by
    have hlower : (0 : ℝ) ≤ (dyadicScale j : ℝ) := by positivity
    exact hlower.trans hu.1
  have hfloor : (m : ℝ) ≤ u := by
    simpa [m] using pinnedPrimeWeightPsiGridIndex_cast_le hu0
  have hmlower : dyadicScale j ≤ m := by
    dsimp [m, pinnedPrimeWeightPsiGridIndex]
    exact (Nat.le_floor_iff hu0).2 hu.1
  have hmupper : m ≤ 2 * dyadicScale j := by
    exact_mod_cast hfloor.trans hu.2
  have hm : m ∈ canonicalThetaGridWindow j :=
    Finset.mem_Icc.mpr ⟨hmlower, hmupper⟩
  have htheta :
      Chebyshev.theta u = Chebyshev.theta (m : ℝ) := by
    simpa [m, pinnedPrimeWeightPsiGridIndex] using
      (Chebyshev.theta_eq_theta_coe_floor u)
  have htri :
      |thetaError u| ≤
        |thetaError (m : ℝ)| + |(m : ℝ) - u| := by
    calc
      |thetaError u| =
          |thetaError (m : ℝ) + ((m : ℝ) - u)| := by
            unfold thetaError
            rw [htheta]
            congr 1
            ring
      _ ≤ |thetaError (m : ℝ)| + |(m : ℝ) - u| :=
        abs_add _ _
  have hfloorAbs : |(m : ℝ) - u| ≤ 1 := by
    simpa [m] using
      pinnedPrimeWeightPsiFloorCorrection_abs_le_one hu0
  have hgrid := canonicalThetaGridEnvelope_grid_le j hm
  linarith

/-- The pinned Mathlib existential constant for the complete
Chebyshev higher-prime-power correction is fixed globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8275fc00ee2db9f6379ee6dc61869cc633f825ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
