# target_zero_horizontal_defect_le_height_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18106839-f506-99c8-3373-ac5a650975fb",
  "kind": "theorem",
  "lexical_name": "target_zero_horizontal_defect_le_height_sq",
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
  "slug": "target-zero-horizontal-defect-le-height-sq--921bcbfea858fd85f1bf77f9",
  "source": {
    "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:921bcbfea858fd85f1bf77f99bf1071d2ff5d3d1034d584be08a6849e948d33c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18106839-f506-99c8-3373-ac5a650975fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem target_zero_horizontal_defect_le_height_sq {z : ℂ}
    (hz : NontrivialZetaZero z) : |2 * z.re - 1| ≤ z.im ^ 2 := by
  have hright : 2 * z.re - 1 ≤ z.im ^ 2 := by
    apply le_of_not_gt
    intro hpar
    exact poleNormalized_ne_zero_of_parabolic_bound hpar
      (poleNormalizedZeta_zero_of_target hz)
  have hleft : 2 * (criticalReflection z).re - 1 ≤ (criticalReflection z).im ^ 2 := by
    apply le_of_not_gt
    intro hpar
    exact poleNormalized_ne_zero_of_parabolic_bound hpar
      (poleNormalizedZeta_zero_of_target hz.critical_reflection)
  have hre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
  have him : (criticalReflection z).im = z.im := by simp [criticalReflection]
  rw [hre, him] at hleft
  exact abs_le.mpr ⟨by linarith, hright⟩

/-- Reuse the atlas's proved root readout, rather than assigning an unrelated height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
