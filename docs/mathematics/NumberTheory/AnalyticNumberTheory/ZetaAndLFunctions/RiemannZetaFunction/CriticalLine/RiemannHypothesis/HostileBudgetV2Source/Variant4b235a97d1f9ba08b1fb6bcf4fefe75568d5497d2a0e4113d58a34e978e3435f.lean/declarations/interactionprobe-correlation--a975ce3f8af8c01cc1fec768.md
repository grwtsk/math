# interactionProbe_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3a803d7a145814bcd7b89d18c1aa7878d42399a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:044cedf8-bd2b-9c01-4e87-4d8dd02baed7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24b73347-eb0d-54a0-7fe5-aabd877065a6",
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
  "slug": "interactionprobe-correlation--a975ce3f8af8c01cc1fec768",
  "source": {
    "blob": "e3a803d7a145814bcd7b89d18c1aa7878d42399a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a975ce3f8af8c01cc1fec768a078226d5aa6bdc389f622bc65fded8396b1f649",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b73347-eb0d-54a0-7fe5-aabd877065a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–233.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant4b235a97d1f9ba08b1fb6bcf4fefe75568d5497d2a0e4113d58a34e978e3435f.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a803d7a145814bcd7b89d18c1aa7878d42399a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
