# thm_simple_or_critical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b41bfbdb-3ce3-f80a-e218-732840f38e77",
  "kind": "theorem",
  "lexical_name": "thm_simple_or_critical",
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
  "slug": "thm-simple-or-critical--a6d3ba102abc6a31036ad38e",
  "source": {
    "blob": "0d2a80d373fa23a46ae6bed932540361e4f4919d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 246,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d3ba102abc6a31036ad38e508cddfb8dbc90fe3a6badea83057d727760ef04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b41bfbdb-3ce3-f80a-e218-732840f38e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thm_simple_or_critical (ε : ℝ) (hε : 0 < ε) :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (4 + 2 * Real.sqrt 2 - Real.sqrt 2 * Real.cot (1 / Real.sqrt 2))
            / (3 + 2 * Real.sqrt 2) - ε <
        (simpleOrOnLineCount T : ℝ) / (zeroCount T : ℝ) :=
  sorry

/-! ### Numeric forms

The decimal thresholds the source quotes in prose. All four are reachable from the single
numerical input `C_MT < 1.3275`.

The `88.76%` threshold is quoted to four places on purpose: `C₂ = 0.887620008…` clears `0.88762`
by under `10⁻⁸`, so the five-place form would need `C_MT` to eight places rather than four.
-/

/-- **`thm_simple_numeric`.** Beyond some height, more than `67.25%` of the non-trivial zeros of
the Riemann zeta function are simple and lie on the critical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2a80d373fa23a46ae6bed932540361e4f4919d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
