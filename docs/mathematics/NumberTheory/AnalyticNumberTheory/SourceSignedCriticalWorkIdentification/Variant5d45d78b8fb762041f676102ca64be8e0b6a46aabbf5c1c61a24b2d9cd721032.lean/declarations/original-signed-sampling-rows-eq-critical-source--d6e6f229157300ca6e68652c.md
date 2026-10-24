# original_signed_sampling_rows_eq_critical_source

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
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82fa3e07-eae0-f623-1dde-a304ad2a3439",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e12283b-948c-c145-f747-95accf705fc3",
  "kind": "theorem",
  "lexical_name": "original_signed_sampling_rows_eq_critical_source",
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
  "slug": "original-signed-sampling-rows-eq-critical-source--d6e6f229157300ca6e68652c",
  "source": {
    "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e6f229157300ca6e68652caafa7d245f190c8198e355fc997d9f8631fe299b",
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

Occurrence: `result:5e12283b-948c-c145-f747-95accf705fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_signed_sampling_rows_eq_critical_source (A : ℝ) (hA : 1 ≤ A) :
    -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (-(∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
        (∑ m ∈ longInventory A, vonMangoldt m *
          (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
            sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
        (∑ m ∈ longInventory A,
          if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
        sourceLogSamplingMainTerm A d -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) -
      actualSignedQuotientSamplingError A = criticalRelativePairing A + 1 +
        criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [← jointSignedRemainder_eq_original_sampling_rows A hA]
  exact jointSignedRemainder_eq_critical_source_compensation A hA

/-- Literal rational source correction; its value is not discarded or fitted to arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
