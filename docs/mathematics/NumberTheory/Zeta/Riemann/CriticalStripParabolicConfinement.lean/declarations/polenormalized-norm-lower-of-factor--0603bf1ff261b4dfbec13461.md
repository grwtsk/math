# poleNormalized_norm_lower_of_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea5623a5-a36c-79d7-8a06-515aa0c4446a",
  "kind": "theorem",
  "lexical_name": "poleNormalized_norm_lower_of_factor",
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
  "slug": "polenormalized-norm-lower-of-factor--0603bf1ff261b4dfbec13461",
  "source": {
    "blob": "b52f83f3b897a39405521edeb248312be5d6e764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0603bf1ff261b4dfbec134612ec53215c070189e16428f0c19470986949361ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea5623a5-a36c-79d7-8a06-515aa0c4446a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_norm_lower_of_factor {s : ℂ} {σ r : ℝ}
    (hσ : 0 < σ) (hs : σ ≤ s.re) (hfactor : ‖s - 1‖ ≤ r)
    (hmargin : r < σ) :
    σ - r ≤ ‖poleNormalizedZeta s‖ := by
  have hsmall : r / σ < 1 := (div_lt_iff₀ hσ).mpr (by simpa using hmargin)
  have hpos : 0 ≤ 1 - r / σ := by linarith
  have hQ : 1 - r / σ ≤ ‖fractionalMellinUnit s‖ := by
    simpa only [unitHomotopy_one] using
      unitHomotopy_norm_lower hσ hs hfactor (t := 1) (by norm_num) le_rfl
  have hsnorm : σ ≤ ‖s‖ := hs.trans (Complex.re_le_norm _)
  rw [poleNormalized_eq_mellinUnit (hσ.trans_le hs), norm_mul]
  calc
    σ - r = σ * (1 - r / σ) := by field_simp [hσ.ne'] <;> ring
    _ ≤ ‖s‖ * ‖fractionalMellinUnit s‖ :=
      mul_le_mul hsnorm hQ hpos (norm_nonneg _)

/-- Exact quadratic identity: the imaginary height is not an independent radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripParabolicConfinement.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52f83f3b897a39405521edeb248312be5d6e764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
