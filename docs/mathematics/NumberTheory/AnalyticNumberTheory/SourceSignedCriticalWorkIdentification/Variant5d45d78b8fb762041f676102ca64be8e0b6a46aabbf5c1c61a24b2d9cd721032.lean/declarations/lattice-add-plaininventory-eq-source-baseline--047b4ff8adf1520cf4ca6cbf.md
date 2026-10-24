# lattice_add_plainInventory_eq_source_baseline

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
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:069fdff7-8a50-3be9-7202-a3eff8a81fe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5ab250-0414-507a-3663-44ccbe7ff21d",
  "kind": "theorem",
  "lexical_name": "lattice_add_plainInventory_eq_source_baseline",
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
  "slug": "lattice-add-plaininventory-eq-source-baseline--047b4ff8adf1520cf4ca6cbf",
  "source": {
    "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:047b4ff8adf1520cf4ca6cbf02aece7021bb7a9f0511ef840d5361ee7327e398",
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

Occurrence: `result:af5ab250-0414-507a-3663-44ccbe7ff21d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lattice_add_plainInventory_eq_source_baseline (A : ℝ) (hA : 1 ≤ A) :
    latticePairing A + plainInventory A = 1 + criticalContinuousMoment A := by
  have hp := residual_sub_integerJ_eq_plain hA
  have hj := integerJ_eq_critical_add_lattice hA
  have hr := mertensResidual_eq_criticalRelative_add_baseline hA
  linarith only [hp, hj, hr]

/-- Original signed compensation with the actual source half and independently bounded ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
