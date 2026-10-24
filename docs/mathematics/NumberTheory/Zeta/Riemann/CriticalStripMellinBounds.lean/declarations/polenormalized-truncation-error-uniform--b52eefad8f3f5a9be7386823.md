# poleNormalized_truncation_error_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc803d9e-b094-35f1-5625-210517a36a9a",
  "kind": "theorem",
  "lexical_name": "poleNormalized_truncation_error_uniform",
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
  "slug": "polenormalized-truncation-error-uniform--b52eefad8f3f5a9be7386823",
  "source": {
    "blob": "e18621be209394c600609294fbf7407e811d4c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b52eefad8f3f5a9be73868232eff3dc5d5f08e8ccdafee336ba1a71b43c83723",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc803d9e-b094-35f1-5625-210517a36a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_truncation_error_uniform {T σ B : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      B * (B + 1) * (T ^ (-σ) / σ) := by
  have hB0 : 0 ≤ B := (norm_nonneg s).trans hB
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      ‖s - 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa only [norm_one] using add_le_add_right hB 1
  exact (poleNormalized_truncation_error hT hσ hs).trans
    (mul_le_mul_of_nonneg_right
      (mul_le_mul hB hsub (norm_nonneg _) hB0)
      (div_nonneg (Real.rpow_nonneg (zero_lt_one.trans_le hT).le _) hσ.le))

/-- The explicit bounded-domain majorant tends to zero. It says nothing about a
positive zero-exclusion margin on the full unbounded critical strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18621be209394c600609294fbf7407e811d4c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
