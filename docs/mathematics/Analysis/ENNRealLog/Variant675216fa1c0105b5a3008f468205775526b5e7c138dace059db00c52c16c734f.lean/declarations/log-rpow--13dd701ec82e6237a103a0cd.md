# log_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:249b1206-7abf-3ca7-4656-cdf2675c4ff4",
  "kind": "theorem",
  "lexical_name": "log_rpow",
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
  "slug": "log-rpow--13dd701ec82e6237a103a0cd",
  "source": {
    "blob": "2a21341146f9e3dd71c156897480e8d0e3592d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 161,
    "path": "GRWTSK/Analysis/ENNRealLog/Variant675216fa1c0105b5a3008f468205775526b5e7c138dace059db00c52c16c734f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13dd701ec82e6237a103a0cde4cfc0a0a86160eed028908ea74b0b2d93f86001",
  "verification": {
    "reference": "docs/verification/Analysis/ENNRealLog/Variant675216fa1c0105b5a3008f468205775526b5e7c138dace059db00c52c16c734f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249b1206-7abf-3ca7-4656-cdf2675c4ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_rpow {x : ℝ≥0∞} {y : ℝ} : log (x ^ y) = y * log x := by
  rcases lt_trichotomy y 0 with (y_neg | rfl | y_pos)
  · rcases ENNReal.trichotomy x with (rfl | rfl | x_real)
    · simp only [ENNReal.zero_rpow_def y, not_lt_of_gt y_neg, y_neg.ne, ite_false, log_top,
        log_zero, EReal.coe_mul_bot_of_neg y_neg]
    · rw [ENNReal.top_rpow_of_neg y_neg, log_zero, log_top, EReal.coe_mul_top_of_neg y_neg]
    · have x_ne_zero := (ENNReal.toReal_pos_iff.1 x_real).1.ne'
      have x_ne_top := (ENNReal.toReal_pos_iff.1 x_real).2.ne
      simp only [log, rpow_eq_zero_iff, x_ne_zero, false_and, x_ne_top, or_self, ↓reduceIte,
        rpow_eq_top_iff]
      norm_cast
      exact ENNReal.toReal_rpow x y ▸ Real.log_rpow x_real y
  · simp
  · rcases ENNReal.trichotomy x with (rfl | rfl | x_real)
    · rw [ENNReal.zero_rpow_of_pos y_pos, log_zero, EReal.mul_bot_of_pos]; norm_cast
    · rw [ENNReal.top_rpow_of_pos y_pos, log_top, EReal.mul_top_of_pos]; norm_cast
    · have x_ne_zero := (ENNReal.toReal_pos_iff.1 x_real).1.ne'
      have x_ne_top := (ENNReal.toReal_pos_iff.1 x_real).2.ne
      simp only [log, rpow_eq_zero_iff, x_ne_zero, false_and, x_ne_top, or_self, ↓reduceIte,
        rpow_eq_top_iff]
      norm_cast
      exact ENNReal.toReal_rpow x y ▸ Real.log_rpow x_real y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ENNRealLog/Variant675216fa1c0105b5a3008f468205775526b5e7c138dace059db00c52c16c734f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ENNRealLog/Variant675216fa1c0105b5a3008f468205775526b5e7c138dace059db00c52c16c734f.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a21341146f9e3dd71c156897480e8d0e3592d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
