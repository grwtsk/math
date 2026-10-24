# Real.uniformContinuous_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e025368bee57d3e5e09ece766dc900e112bf3c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14c2995f-fcef-67d8-77a3-3037cf043354",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:471aa3fb-5ee9-c4d4-8e7e-7f737df08cee",
  "kind": "theorem",
  "lexical_name": "Real.uniformContinuous_const_mul",
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
  "slug": "real-uniformcontinuous-const-mul--73296fb2f5ca6ff4c22cca18",
  "source": {
    "blob": "4e025368bee57d3e5e09ece766dc900e112bf3c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73296fb2f5ca6ff4c22cca18d04b4310e101238f622aa2a75efb79d6f41ff2f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:471aa3fb-5ee9-c4d4-8e7e-7f737df08cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.uniformContinuous_const_mul {x : ℝ} : UniformContinuous ((· * ·) x) :=
  uniformContinuous_const_smul x
#align real.uniform_continuous_const_mul Real.uniformContinuous_const_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e025368bee57d3e5e09ece766dc900e112bf3c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
