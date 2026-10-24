# IsTotallyNonneg.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a0159c0c3e49a44b0835fb1e03f259b97f4eab2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c030da62-c7d2-0ccc-0de1-f0cad4e46d83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18240916-7a83-428d-0c74-5bd98afea5ef",
  "kind": "lemma",
  "lexical_name": "IsTotallyNonneg.smul",
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
  "slug": "istotallynonneg-smul--137335e9defe2be71d61ec08",
  "source": {
    "blob": "7a0159c0c3e49a44b0835fb1e03f259b97f4eab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137335e9defe2be71d61ec08868ac0ab45941a09c0a94e780d0abce194a9e41a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18240916-7a83-428d-0c74-5bd98afea5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTotallyNonneg.smul {M : Matrix ι ι R}
    (hM : M.IsTotallyNonneg) {c : R} (hc : 0 ≤ c) :
    (c • M).IsTotallyNonneg := by
  intro _ rows cols hrows hcols
  change 0 ≤ (c • M.submatrix rows cols).det
  grind [det_smul, mul_nonneg, pow_nonneg, hM _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotallyNonneg/Variant6930095fcecf5dd9841a35c329261efa209198c8c975f00d4172bed10a9c27b5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0159c0c3e49a44b0835fb1e03f259b97f4eab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
