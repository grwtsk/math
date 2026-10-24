# actual_boundary_product

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
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2926a121-628f-0aee-a6e8-5076dde99184",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7d5fedc-e1b2-4010-49ab-c5561fe1dd6d",
  "kind": "theorem",
  "lexical_name": "actual_boundary_product",
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
  "slug": "actual-boundary-product--a0faefd2fbef6976646f8f05",
  "source": {
    "blob": "4ac25570ca4d6b905ccfe94b3764a8f1624170a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0faefd2fbef6976646f8f056b3a698c229301a6040e449577113efe6a20e78b",
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

Occurrence: `result:f7d5fedc-e1b2-4010-49ab-c5561fe1dd6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_boundary_product (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
      boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I) := by
  have hn : (t : ℂ) * Complex.I + (ε : ℂ) ≠ 1 / 2 := by
    intro hh
    apply shifted_W_ne_zero ε t hε he
    rw [add_comm (ε : ℂ) ((t : ℂ) * Complex.I), hh, W_half_zero]
  rw [actualLaplace_boundary, candidate, quotient_of_ne X _ hn]
  unfold boundaryFilter
  have hc : (t : ℂ) * Complex.I + (ε : ℂ) = (ε : ℂ) + (t : ℂ) * Complex.I := add_comm _ _
  rw [hc]
  ring

/-- The full boundary residual decomposes into source distortion and the complete arithmetic error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectedControllerBoundary/Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac25570ca4d6b905ccfe94b3764a8f1624170a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
