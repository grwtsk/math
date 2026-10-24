# norm_greenMesh_weighted_phase_sum_le_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af49a713-7075-9ebb-0307-40e77a312302",
  "kind": "theorem",
  "lexical_name": "norm_greenMesh_weighted_phase_sum_le_residue",
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
  "slug": "norm-greenmesh-weighted-phase-sum-le-residue--94a3e265b7383ba36c0bf23a",
  "source": {
    "blob": "db187e03608f5f43f20638805a50f0d3e982ee88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94a3e265b7383ba36c0bf23a9d29d863dbaad03a074a15096eb2a12780ddd1e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af49a713-7075-9ebb-0307-40e77a312302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenMesh_weighted_phase_sum_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k)
    (hr : R.r ≠ 0) :
    ‖∑ j ∈ Finset.Icc 1 X,
        (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j‖ ≤
      (X : ℝ) / (2 * |(R.r : ℝ)|) := by
  have hq : greenMeshPhase X k ≠ 1 := by
    intro h
    have hchord := centeredResidue_chord_lower_bound hX R
    rw [h, sub_self, norm_zero] at hchord
    have hrabs : 0 < |(R.r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr)
    have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
    positivity
  have habel := norm_greenMesh_weighted_phase_sum_le hX hq
  have hchord := centeredResidue_chord_lower_bound hX R
  have hrabs : 0 < |(R.r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr)
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  have hden : 0 < ‖1 - greenMeshPhase X k‖ := norm_pos_iff.mpr (sub_ne_zero.mpr hq)
  calc
    _ ≤ 2 / ‖1 - greenMeshPhase X k‖ := habel
    _ ≤ (X : ℝ) / (2 * |(R.r : ℝ)|) := by
      apply (div_le_iff₀ hden).2
      apply (le_div_iff₀ (by positivity : 0 < 2 * |(R.r : ℝ)|)).2
      nlinarith

/-- The actual discrete phase Riemann sum includes the 1/X mesh factor, which
cancels the X in the Abel small-denominator estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueAbelBound.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db187e03608f5f43f20638805a50f0d3e982ee88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
