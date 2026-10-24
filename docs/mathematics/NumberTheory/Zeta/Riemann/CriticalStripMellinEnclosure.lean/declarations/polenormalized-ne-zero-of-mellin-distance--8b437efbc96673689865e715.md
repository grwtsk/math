# poleNormalized_ne_zero_of_mellin_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d564fd55-dbd8-204a-6505-7ad12bf456fc",
  "kind": "theorem",
  "lexical_name": "poleNormalized_ne_zero_of_mellin_distance",
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
  "slug": "polenormalized-ne-zero-of-mellin-distance--8b437efbc96673689865e715",
  "source": {
    "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b437efbc96673689865e7152a71c92262d5d9080fd4d261d431e056aea563b7",
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

Occurrence: `result:d564fd55-dbd8-204a-6505-7ad12bf456fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_ne_zero_of_mellin_distance {s : ℂ}
    (hs : 0 < s.re) (hdist : ‖s - 1‖ < s.re) : poleNormalizedZeta s ≠ 0 := by
  have hs0 : 0 < ‖s‖ := norm_pos_iff.mpr (Complex.ne_zero_of_re_pos hs)
  have hratio : ‖s - 1‖ / s.re < 1 := (div_lt_one hs).mpr hdist
  have hmargin : (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re 1 < ‖s‖ := by
    simp only [mellinTailMajorant, Real.one_rpow]
    calc
      (‖s‖ * ‖s - 1‖) * (1 / s.re) = ‖s‖ * (‖s - 1‖ / s.re) := by ring
      _ < ‖s‖ * 1 := mul_lt_mul_of_pos_left hratio hs0
      _ = ‖s‖ := mul_one _
  intro hzero
  have hb := poleNormalized_truncation_error (le_refl (1 : ℝ)) hs (le_refl s.re)
  rw [hzero, pole_truncation_at_one, zero_sub, norm_neg] at hb
  exact (not_le_of_gt hmargin) hb

/-- Source-zero exclusion, using the already proved canonical zero transport to H. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
