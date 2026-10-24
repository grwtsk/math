# jointSignedRemainder_lt_critical_add_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2607804-3238-43a7-036b-17d36465f63c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb8c775d-2467-f036-f1de-3e6338484c3d",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_lt_critical_add_ledger",
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
  "slug": "jointsignedremainder-lt-critical-add-ledger--dd6dd404b1e3a953340caaf6",
  "source": {
    "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd6dd404b1e3a953340caaf637b02514c11f0a8f16d1c8a1181ad1a19b96e70a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8c775d-2467-f036-f1de-3e6338484c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_lt_critical_add_ledger (C_F A : ℝ) (hA : 6 ≤ A)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    jointSignedRemainder A < criticalRelativePairing A + C_F := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actual_residual_decomposition A hA1
  rw [← jointSignedRemainder_eq_covariance A hA1] at hr
  have hq := mertensResidual_lt_criticalRelative_of_six_le hA
  have hf := (abs_le.mp hF).1
  linarith only [hr, hq, hf]

end
end FormalResearch.RiemannHypothesis.SourceSignedCriticalWorkIdentification
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
