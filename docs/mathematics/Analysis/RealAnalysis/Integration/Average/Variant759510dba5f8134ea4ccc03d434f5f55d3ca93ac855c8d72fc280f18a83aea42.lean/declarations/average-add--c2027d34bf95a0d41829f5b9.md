# average_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:906ffea2-947a-7c99-9915-0bcd4447e0e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d1ac3f4-7986-a3e3-acb3-676ed1fc0ba9",
  "kind": "lemma",
  "lexical_name": "average_add",
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
  "slug": "average-add--c2027d34bf95a0d41829f5b9",
  "source": {
    "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2027d34bf95a0d41829f5b92d7e8c8838f82d0fb93a6e86b3d14d8edbc01133",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1ac3f4-7986-a3e3-acb3-676ed1fc0ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma average_add (hf : Integrable f μ) (hg : Integrable g μ) :
    ⨍ a, (f + g) a ∂μ = ⨍ a, f a ∂μ + ⨍ a, g a ∂μ := by
  obtain rfl | hμ := eq_or_ne μ 0
  · simp
  · exact integral_add (hf.smul_measure <| by simpa) (hg.smul_measure <| by simpa)

@[to_fun setAverage_fun_add]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6295be232e94167e5402f139258de1bfc91ca6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
