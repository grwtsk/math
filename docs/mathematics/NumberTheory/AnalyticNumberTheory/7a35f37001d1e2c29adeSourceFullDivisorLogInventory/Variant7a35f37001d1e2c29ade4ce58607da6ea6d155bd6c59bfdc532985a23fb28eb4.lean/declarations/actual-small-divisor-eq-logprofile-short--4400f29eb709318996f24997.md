# actual_small_divisor_eq_logProfile_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b04bef3d0d8467c6ffde23f322bac1fed194ffc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c9d257d-a630-19ed-ed7c-8f4ec34de685",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1fa198b-fe82-6e0c-40ee-eb1e16ae81b6",
  "kind": "theorem",
  "lexical_name": "actual_small_divisor_eq_logProfile_short",
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
  "slug": "actual-small-divisor-eq-logprofile-short--4400f29eb709318996f24997",
  "source": {
    "blob": "b04bef3d0d8467c6ffde23f322bac1fed194ffc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4400f29eb709318996f24997c725582029b333b9b89131490e3a5551a8010a8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1fa198b-fe82-6e0c-40ee-eb1e16ae81b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_small_divisor_eq_logProfile_short (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ)) := by
  have hr := mertensResidual_eq_closedPrimeMoment A hA
  have hs := closedPrimeMoment_eq_small_add_large A
  have hf := actual_mertensResidual_eq_short_add_complement A hA
  have hl := actual_large_divisor_eq_logProfile_complement A hA
  linarith only [hr, hs, hf, hl]

/-- The sampled logarithm is log(m), and the source at d*m remains unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04bef3d0d8467c6ffde23f322bac1fed194ffc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
