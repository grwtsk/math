# jacobiOperator_eq_expression_vector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a8281bf-94c2-e237-b3e6-5ed482ffee3c",
  "kind": "theorem",
  "lexical_name": "jacobiOperator_eq_expression_vector",
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
  "slug": "jacobioperator-eq-expression-vector--41def8461bde240c19b99ff6",
  "source": {
    "blob": "b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 290,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41def8461bde240c19b99ff6f7e28a4c4c1a08398279d3dc5589717240987469",
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

Occurrence: `result:2a8281bf-94c2-e237-b3e6-5ed482ffee3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiOperator_eq_expression_vector {t : ℝ} (ht : 0 ≤ t)
    (v : jacobiDomain t ht) :
    jacobiOperator t ht v =
      (⟨jacobiExpression t ht v.val, jacobiExpression_memℓp_of_mem_domain ht v⟩ :
        lp (fun _ : ℕ => ℂ) 2) := by
  apply lp.ext
  exact funext (jacobiOperator_coordinate ht v)

/-- The original sqrt(m0)*e0 pointed vector retains its actual coefficient-domain membership. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
