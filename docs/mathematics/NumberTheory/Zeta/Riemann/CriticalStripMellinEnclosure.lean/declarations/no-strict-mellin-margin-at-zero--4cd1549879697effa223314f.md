# no_strict_mellin_margin_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e515d82-269d-dcfb-f7ca-849cdc3a95dc",
  "kind": "theorem",
  "lexical_name": "no_strict_mellin_margin_at_zero",
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
  "slug": "no-strict-mellin-margin-at-zero--4cd1549879697effa223314f",
  "source": {
    "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd1549879697effa223314f9107b2341cfaae5c109d89267d9f240cacff157d",
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

Occurrence: `result:9e515d82-269d-dcfb-f7ca-849cdc3a95dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_strict_mellin_margin_at_zero {s : ℂ} (hs : 0 < s.re)
    (hzero : poleNormalizedZeta s = 0) (n : ℕ) :
    ¬ ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re ((n : ℝ) + 1) <
      ‖truncatedPoleModel ((n : ℝ) + 1) s‖) := by
  have hb := poleNormalized_truncation_error
    (by have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n; linarith) hs (le_refl s.re)
  rw [hzero, zero_sub, norm_neg] at hb
  exact not_lt_of_ge hb

/-- Pointwise mathematical completeness of the exact-prefix certificate. It is not
a computed certificate, does not evaluate the finite integral, and cannot decide an
actual zero by a strictly-positive certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
