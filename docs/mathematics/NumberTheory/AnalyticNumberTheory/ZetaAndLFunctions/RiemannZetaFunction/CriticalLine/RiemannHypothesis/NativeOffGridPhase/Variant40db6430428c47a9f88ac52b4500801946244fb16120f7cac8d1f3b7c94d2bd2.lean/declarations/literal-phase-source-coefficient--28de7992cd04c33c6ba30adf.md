# literal_phase_source_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72545035-4929-8571-b74e-e44046857817",
  "kind": "theorem",
  "lexical_name": "literal_phase_source_coefficient",
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
  "slug": "literal-phase-source-coefficient--28de7992cd04c33c6ba30adf",
  "source": {
    "blob": "ebfbf20b80e288e8a907786aa305ba7143197df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridPhase/Variant40db6430428c47a9f88ac52b4500801946244fb16120f7cac8d1f3b7c94d2bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28de7992cd04c33c6ba30adf6f8a9c07aeed70edf1bc54f8ed707c09393b56ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridPhase/Variant40db6430428c47a9f88ac52b4500801946244fb16120f7cac8d1f3b7c94d2bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72545035-4929-8571-b74e-e44046857817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_phase_source_coefficient :
    phase * sourceCoefficient = (-(‖sourceCoefficient‖ / (2 * ‖exponent‖)) : ℝ) := by
  have hw : 0 < ‖exponent‖ := by linarith [exponent_norm_gt_three]
  have hB := norm_pos_iff.mpr source_coefficient_ne_zero
  have hwc : (‖exponent‖ : ℂ) ≠ 0 := by exact_mod_cast hw.ne'
  have hBc : (‖sourceCoefficient‖ : ℂ) ≠ 0 := by exact_mod_cast hB.ne'
  unfold phase
  calc
    _ = -(conj sourceCoefficient * sourceCoefficient) /
        ((2 * ‖exponent‖ * ‖sourceCoefficient‖ : ℝ) : ℂ) := by ring
    _ = -((‖sourceCoefficient‖ ^ 2 : ℝ) : ℂ) /
        ((2 * ‖exponent‖ * ‖sourceCoefficient‖ : ℝ) : ℂ) := by rw [Complex.conj_mul', Complex.ofReal_pow]
    _ = _ := by
      push_cast
      field_simp [hwc, hBc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridPhase/Variant40db6430428c47a9f88ac52b4500801946244fb16120f7cac8d1f3b7c94d2bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridPhase/Variant40db6430428c47a9f88ac52b4500801946244fb16120f7cac8d1f3b7c94d2bd2.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfbf20b80e288e8a907786aa305ba7143197df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
