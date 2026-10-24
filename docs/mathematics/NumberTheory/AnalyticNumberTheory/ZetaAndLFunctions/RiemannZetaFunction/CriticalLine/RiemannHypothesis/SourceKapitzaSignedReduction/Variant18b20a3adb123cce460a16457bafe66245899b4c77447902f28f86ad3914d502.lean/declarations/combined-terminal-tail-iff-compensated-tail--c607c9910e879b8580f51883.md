# combined_terminal_tail_iff_compensated_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f257e66-b882-d241-b348-c9f570133ff5",
  "kind": "theorem",
  "lexical_name": "combined_terminal_tail_iff_compensated_tail",
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
  "slug": "combined-terminal-tail-iff-compensated-tail--c607c9910e879b8580f51883",
  "source": {
    "blob": "497a18117e6b0171f2dac1539305d5619059bd8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant18b20a3adb123cce460a16457bafe66245899b4c77447902f28f86ad3914d502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c607c9910e879b8580f51883f0a37117be8cd20c27981d9241987d0e806eb8fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant18b20a3adb123cce460a16457bafe66245899b4c77447902f28f86ad3914d502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f257e66-b882-d241-b348-c9f570133ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combined_terminal_tail_iff_compensated_tail :
    CombinedTerminalTailUpperBound ↔ CompensatedTailUpperBound := by
  constructor
  · rintro ⟨R, hR, B, hb⟩
    refine ⟨R, hR, B + quadraticConstant + 12, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have he := combined_terminal_eq_compensated A hA
    have hq := totalQuadraticWork_le A
    have hd := (abs_le.mp (quadratureError_abs_le A hA)).1
    have hdiv : 10 / A ≤ 10 := by
      have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10)
        (by norm_num : (0 : ℝ) < 1) hA
      simpa using h
    have h := hb A hRA
    linarith
  · rintro ⟨R, hR, B, hb⟩
    refine ⟨R, hR, B + 10, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have he := combined_terminal_eq_compensated A hA
    have hq := totalQuadraticWork_nonneg A
    have hd := (abs_le.mp (quadratureError_abs_le A hA)).2
    have hdiv : 10 / A ≤ 10 := by
      have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10)
        (by norm_num : (0 : ℝ) < 1) hA
      simpa using h
    have h := hb A hRA
    linarith

/-- Supplied one-sided arithmetic caps use the existing exact finite-prefix return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant18b20a3adb123cce460a16457bafe66245899b4c77447902f28f86ad3914d502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant18b20a3adb123cce460a16457bafe66245899b4c77447902f28f86ad3914d502.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `497a18117e6b0171f2dac1539305d5619059bd8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
