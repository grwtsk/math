# jacobiOperator_coordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35649131-612e-d62a-0406-6d1ac6e0d743",
  "kind": "theorem",
  "lexical_name": "jacobiOperator_coordinate",
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
  "slug": "jacobioperator-coordinate--c4521ea9fa1779b789e1dffe",
  "source": {
    "blob": "b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4521ea9fa1779b789e1dffe69218f1483b0ab504cdd8f8f2a78e8fd55880486",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35649131-612e-d62a-0406-6d1ac6e0d743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiOperator_coordinate {t : ℝ} (ht : 0 ≤ t)
    (v : jacobiDomain t ht) (n : ℕ) :
    jacobiOperator t ht v n = jacobiExpression t ht v.val n := by
  have h := jacobiOperator_symmetric ht (standardDomainVector t ht n) v
  have he : ⟪(standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2),
      jacobiOperator t ht v⟫_ℂ = jacobiOperator t ht v n := by
    simp [standardDomainVector, lp.inner_single_left, RCLike.inner_apply]
  rw [he] at h
  rw [← h]
  cases n with
  | zero => exact standard_zero_inner t ht v.val
  | succ n => exact standard_succ_inner t ht v.val n

/-- The original transported domain always has a square-summable coefficient expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
