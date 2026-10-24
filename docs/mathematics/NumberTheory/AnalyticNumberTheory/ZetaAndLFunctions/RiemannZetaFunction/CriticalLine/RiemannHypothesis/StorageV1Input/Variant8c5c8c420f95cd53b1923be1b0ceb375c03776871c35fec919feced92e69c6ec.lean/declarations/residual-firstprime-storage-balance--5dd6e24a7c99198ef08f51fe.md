# residual_firstPrime_storage_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54d4cdbf1bc46ece25ce2081399d38f87799493d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db605c29-ad19-1dd7-2e34-6cc5ff6d5ccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96406c5d-f697-df14-2804-78e0a4e1559c",
  "kind": "theorem",
  "lexical_name": "residual_firstPrime_storage_balance",
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
  "slug": "residual-firstprime-storage-balance--5dd6e24a7c99198ef08f51fe",
  "source": {
    "blob": "54d4cdbf1bc46ece25ce2081399d38f87799493d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 288,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dd6e24a7c99198ef08f51fefa694117f663d1933483112d59669d4b11bc3491",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96406c5d-f697-df14-2804-78e0a4e1559c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_firstPrime_storage_balance {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A + firstPrimeStorageSurplus A + higherSourceStorage A =
      higherBaseline + (primeSquareMoment A - diagonalMainCoefficient A * A) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_first_square_higher,
    firstPrimeStorageSurplus_eq_neg_firstPrime_main (by linarith : 0 < A)]
  have h := higherPrimePowerMoment_add_storage_eq_baseline (by linarith : 0 < A)
  linarith

end FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d4cdbf1bc46ece25ce2081399d38f87799493d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
