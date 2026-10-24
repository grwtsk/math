# sourceLogSamplingTerm_eq_source_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a35b945-57b3-6e80-6196-240580cc3a6e",
  "kind": "theorem",
  "lexical_name": "sourceLogSamplingTerm_eq_source_weight",
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
  "slug": "sourcelogsamplingterm-eq-source-weight--d3ab06dc0b23837b92a3a527",
  "source": {
    "blob": "83e9ebf49515658d66a69eb54de2bfa24c56f0af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ab06dc0b23837b92a3a5275567544b25d7763783ac97dc2fea3d815c6bb91b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a35b945-57b3-6e80-6196-240580cc3a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogSamplingTerm_eq_source_weight (A : ℝ) {k u : ℝ}
    (hk : 0 < k) (hu : 0 < u) :
    sourceLogSamplingTerm A k u =
      Real.log u * sourceCorrelation explicitSecondDerivative A (Real.log (k * u)) /
        Real.sqrt (k * u) := by
  unfold sourceLogSamplingTerm
  rw [sourcePlainSamplingTerm_eq_source_weight A hk hu]
  ring

/-- Exponential change of variables on the entire real line, preserving `(0,∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e9ebf49515658d66a69eb54de2bfa24c56f0af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
