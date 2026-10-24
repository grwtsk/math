# shifted_W_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ac25570ca4d6b905ccfe94b3764a8f1624170a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f678da20-7fed-88d5-ae15-e19454452e31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae74f2ad-5db5-35bc-c637-bc93b8009bdc",
  "kind": "theorem",
  "lexical_name": "shifted_W_ne_zero",
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
  "slug": "shifted-w-ne-zero--7c9025e6dec9e53114fa9042",
  "source": {
    "blob": "4ac25570ca4d6b905ccfe94b3764a8f1624170a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c9025e6dec9e53114fa90422e30e15c60c6bdc7962121144c4c541eba1d9f1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae74f2ad-5db5-35bc-c637-bc93b8009bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_W_ne_zero (ε t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
  intro h
  have hz : 0 < ((ε : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hε
  have hh := (W_zero_iff _ hz).mp h
  have := congrArg Complex.re hh
  norm_num at this
  linarith

/-- The genuine kernel boundary value times the analytic candidate has the exact signed product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac25570ca4d6b905ccfe94b3764a8f1624170a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
