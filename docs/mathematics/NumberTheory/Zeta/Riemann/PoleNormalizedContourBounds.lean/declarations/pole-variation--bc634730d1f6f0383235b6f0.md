# pole_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:513cdfd2-680d-b23c-1a53-79198cecd937",
  "kind": "theorem",
  "lexical_name": "pole_variation",
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
  "slug": "pole-variation--bc634730d1f6f0383235b6f0",
  "source": {
    "blob": "4f9249ae44e52df5b08d04581f30ca6a951912ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc634730d1f6f0383235b6f0ac5465b733d0807989b5eab4e1e7626c3d4070f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:513cdfd2-680d-b23c-1a53-79198cecd937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_variation {r : ℝ} (hr : 0 ≤ r) (hr1 : r < 1) {s : ℂ}
    (hs : ‖s - 1‖ ≤ r) : ‖poleNormalizedZeta s - 1‖ ≤ 2 * r / (1 - r) := by
  have hσ : 0 < 1 - r := sub_pos.mpr hr1
  have hre := (Complex.abs_re_le_norm (s - 1)).trans hs
  have hleft : 1 - r ≤ s.re := by
    have hl := (abs_le.mp hre).1
    simp only [Complex.sub_re, Complex.one_re] at hl
    linarith
  have hsize : ‖s‖ ≤ 1 + r := by
    calc
      _ = ‖(1 : ℂ) + (s - 1)‖ := by congr 1; ring
      _ ≤ ‖(1 : ℂ)‖ + ‖s - 1‖ := norm_add_le _ _
      _ ≤ 1 + r := by simpa using add_le_add_left hs 1
  have hM := fractionalMellin_norm_le hσ hleft
  rw [poleNormalized_eq_fractional (hσ.trans_le hleft), fractionalPoleModel]
  calc
    _ = ‖(s - 1) - s * (s - 1) * fractionalMellin s‖ := by congr 1; ring
    _ ≤ ‖s - 1‖ + ‖s * (s - 1) * fractionalMellin s‖ := norm_sub_le _ _
    _ = ‖s - 1‖ + ‖s‖ * ‖s - 1‖ * ‖fractionalMellin s‖ := by rw [norm_mul, norm_mul]
    _ ≤ r + (1 + r) * r * (1 / (1 - r)) := by gcongr
    _ = _ := by field_simp [hσ.ne']; ring

/-- Closed radius one-fifth, not an unspecified existential neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9249ae44e52df5b08d04581f30ca6a951912ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
