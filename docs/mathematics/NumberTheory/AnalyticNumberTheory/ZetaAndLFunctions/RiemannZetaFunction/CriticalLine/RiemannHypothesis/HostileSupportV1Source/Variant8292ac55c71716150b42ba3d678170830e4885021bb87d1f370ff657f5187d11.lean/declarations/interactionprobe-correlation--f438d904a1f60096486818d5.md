# interactionProbe_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbe27e85-3254-82d1-f34c-208505c1bcbb",
  "kind": "theorem",
  "lexical_name": "interactionProbe_correlation",
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
  "slug": "interactionprobe-correlation--f438d904a1f60096486818d5",
  "source": {
    "blob": "78ff4a8b79af6b7bc6929570399624ecc3aba643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileSupportV1Source/Variant8292ac55c71716150b42ba3d678170830e4885021bb87d1f370ff657f5187d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f438d904a1f60096486818d544eb650a8c81ffc61b729139006d622799798322",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileSupportV1Source/Variant8292ac55c71716150b42ba3d678170830e4885021bb87d1f370ff657f5187d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbe27e85-3254-82d1-f34c-208505c1bcbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interactionProbe_correlation (ε t : ℝ) :
    (⟪interactionProbe ε, translation t (interactionProbe ε)⟫_ℂ).re =
      (1 + ε ^ 2) * sourceCorrelation explicitSecondDerivative probeScale t +
      ε * sourceCorrelation explicitSecondDerivative probeScale (t - Real.log 2) +
      ε * sourceCorrelation explicitSecondDerivative probeScale (t + Real.log 2) := by
  have hlast : ⟪translation (Real.log 2) (originalSourceState probeScale),
      translation t (translation (Real.log 2) (originalSourceState probeScale))⟫_ℂ =
      ⟪originalSourceState probeScale, translation t (originalSourceState probeScale)⟫_ℂ := by
    rw [translation_add, translation_inner_stationary]
    congr 2
    ring
  simp only [interactionProbe, map_add, map_smul, inner_add_left, inner_add_right,
    inner_smul_left, inner_smul_right, Complex.conj_ofReal]
  rw [hlast, translation_add, translation_inner_stationary]
  simp only [Complex.add_re, Complex.re_ofReal_mul]
  rw [← sourceCorrelation_eq_inner probeScale_pos t,
    ← sourceCorrelation_eq_inner probeScale_pos (t - Real.log 2),
    ← sourceCorrelation_eq_inner probeScale_pos (t + Real.log 2)]
  ring


/-- The hostile probe support is shorter than the first adjacent logarithmic gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileSupportV1Source/Variant8292ac55c71716150b42ba3d678170830e4885021bb87d1f370ff657f5187d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileSupportV1Source/Variant8292ac55c71716150b42ba3d678170830e4885021bb87d1f370ff657f5187d11.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ff4a8b79af6b7bc6929570399624ecc3aba643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
