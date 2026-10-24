# normalizedOperator_zero_of_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebc409b2-b923-dfd2-efe2-eb8e8dad6fe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47907acc-8704-863f-1893-473eb7c8ab49",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_zero_of_le_abs",
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
  "slug": "normalizedoperator-zero-of-le-abs--919040f5dc15af729d006b9d",
  "source": {
    "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919040f5dc15af729d006b9dee4b7759ce973db1f121a813d81ebf22ce92f286",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47907acc-8704-863f-1893-473eb7c8ab49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_zero_of_le_abs {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A x : ℝ} (hA : 0 < A) (hx : A ≤ |x|) :
    normalizedOperator h A x = 0 :=
  zero_of_radius_le_abs (normalizedOperator_continuous hc A)
    (normalizedOperator_support hs hA) hx

/-- The displacement endpoint is twice the source endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
