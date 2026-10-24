# scaled_reference_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e79bf7ea-f25e-0eef-d78e-821b4be450f5",
  "kind": "lemma",
  "lexical_name": "scaled_reference_inequality",
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
  "slug": "scaled-reference-inequality--0f023205a4e88a3fd5c3cca9",
  "source": {
    "blob": "e38d872d033f2c1f23f404a8ea99db338128d193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f023205a4e88a3fd5c3cca9bd1b01c8f4e14fb20a1fbed3c8ef18334765db18",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e79bf7ea-f25e-0eef-d78e-821b4be450f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma scaled_reference_inequality {s v : ℂ} (hs : 0 < s.re)
    (he : ‖v - (s + 1) / 2‖ ≤ ‖s‖ * ‖s - 1‖ / (2 * s.re)) :
    s.re * ‖s + 1‖ - ‖s‖ * ‖s - 1‖ ≤ 2 * s.re * ‖v‖ := by
  have htri : ‖(s + 1) / 2‖ ≤ ‖v‖ + ‖v - (s + 1) / 2‖ := by
    calc
      _ = ‖v - (v - (s + 1) / 2)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have ht : ‖s + 1‖ / 2 ≤ ‖v‖ + ‖s‖ * ‖s - 1‖ / (2 * s.re) := by
    have h := htri.trans (add_le_add_left he ‖v‖)
    norm_num [norm_div] at h
    exact h
  have hden : (2 : ℝ) * s.re ≠ 0 := by positivity
  have hcancel : (2 * s.re) * (‖s‖ * ‖s - 1‖ / (2 * s.re)) =
      ‖s‖ * ‖s - 1‖ := by field_simp
  have hscaled := mul_le_mul_of_nonneg_left ht (show 0 ≤ 2 * s.re by positivity)
  rw [mul_add, hcancel] at hscaled
  nlinarith

/-- The same lower bound applies to every value in the sourced error disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38d872d033f2c1f23f404a8ea99db338128d193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
