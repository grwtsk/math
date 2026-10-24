# measurableSet_eq_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e4be13d-0a40-074e-29d1-f70231515624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1b19914-0ae7-eb24-9dcf-7b4cf27e93e9",
  "kind": "lemma",
  "lexical_name": "measurableSet_eq_top'",
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
  "slug": "measurableset-eq-top--a71950a0e2dc15b63371415b",
  "source": {
    "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 661,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71950a0e2dc15b63371415b053bbb9df3a4776e9c9a4603a44efc07d40f5c69",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b19914-0ae7-eb24-9dcf-7b4cf27e93e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma measurableSet_eq_top' [TopologicalSpace ι]
    [OrderTopology ι] [SecondCountableTopology ι] (hτ : IsStoppingTime f τ) :
    MeasurableSet[⨆ t, f t] {ω | τ ω = ⊤} :=
  (measurableSet_singleton _).preimage hτ.measurable_iSup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c9a07faa8890caf333b83750be2ecf7d4bdb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
