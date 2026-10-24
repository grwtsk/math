# spectralExpectation_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3697ae44294b8e62fc47c0099cdea9de0ade2bc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18aa93b3-467a-b771-e8fc-e60c5b94af98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12cd9f4a-9aa0-371a-cc6a-d13985f24732",
  "kind": "theorem",
  "lexical_name": "spectralExpectation_reindex",
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
  "slug": "spectralexpectation-reindex--d050114485bbf4fd05ce50b8",
  "source": {
    "blob": "3697ae44294b8e62fc47c0099cdea9de0ade2bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d050114485bbf4fd05ce50b857989a670106213ad0bfa81491a1b24a0c91af8d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12cd9f4a-9aa0-371a-cc6a-d13985f24732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralExpectation_reindex
    (covariance : FamilyTurnCovariance turn packets)
    (outer : SimplexPoint I) (observable : ℝ → ℝ) :
    (FinitePacket.mix (outer.reindex turn) packets).spectralExpectation observable =
      (FinitePacket.mix outer packets).spectralExpectation observable :=
  (covariance.mixtureEquiv outer).spectralExpectation_preserved observable

end FamilyTurnCovariance

/-- Abstract analytic vocabulary needed to realize a finite packet by an
operator and a state.  Each predicate/function is supplied by a provider; this
record asserts no default instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3697ae44294b8e62fc47c0099cdea9de0ade2bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
