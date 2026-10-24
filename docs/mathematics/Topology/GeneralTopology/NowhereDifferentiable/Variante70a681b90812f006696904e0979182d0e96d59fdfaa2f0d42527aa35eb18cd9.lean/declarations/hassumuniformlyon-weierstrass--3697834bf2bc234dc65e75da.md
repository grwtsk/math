# hasSumUniformlyOn_weierstrass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbd351e2-a47e-5328-ac9b-b8b72685a3d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13448109-1b10-ae5c-f439-a3f93236450e",
  "kind": "theorem",
  "lexical_name": "hasSumUniformlyOn_weierstrass",
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
  "slug": "hassumuniformlyon-weierstrass--3697834bf2bc234dc65e75da",
  "source": {
    "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3697834bf2bc234dc65e75daf0cf7ce2ee0ced739767a463481d9694fe0e6be0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13448109-1b10-ae5c-f439-a3f93236450e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSumUniformlyOn_weierstrass {a : ℝ} (ha : a ∈ Set.Ioo 0 1) (b : ℝ) :
    HasSumUniformlyOn (fun n x ↦ a ^ n * cos (b ^ n * π * x)) (weierstrass a b) Set.univ := by
  refine .of_norm_le_summable (summable_geometric_of_abs_lt_one (r := |a|) (by grind)) ?_
  intro n x _
  simpa using mul_le_mul_of_nonneg_left (abs_cos_le_one (b ^ n * π * x)) (abs_nonneg (a ^ n))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc545e8a4f1f3764f04b77a29811cff41531c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
