# interactionProbe_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16e55759-20e2-a755-9929-a29dbd4d581a",
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
  "slug": "interactionprobe-correlation--94456c4ad42cb0973799cd7d",
  "source": {
    "blob": "9c4a3b3ced22c7db678dce54ea200aeef2dd3556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 221,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94456c4ad42cb0973799cd7de80bf66457a152db01e1b7fce734d1e3b30ad043",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16e55759-20e2-a755-9929-a29dbd4d581a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–241.

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
    rw [show t + Real.log 2 - Real.log 2 = t by ring]
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4a3b3ced22c7db678dce54ea200aeef2dd3556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
