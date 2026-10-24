# ContinuousOn.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85b15b40d99ba6df91d07a29c803d94b4d8569b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/9100b08a542d2669e6dc8cff77e3b063b1fcccbbb7dc3979caaeb40426391496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bd4ef25-396d-bddb-c8c9-0038205e8081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:275ede7a-8306-7a8b-fcd0-3cd29510f798",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.mul",
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
  "slug": "continuouson-mul--dfb3b2ab993dce65a01b7f7a",
  "source": {
    "blob": "85b15b40d99ba6df91d07a29c803d94b4d8569b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant9100b08a542d2669e6dc8cff77e3b063b1fcccbbb7dc3979caaeb40426391496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb3b2ab993dce65a01b7f7aecf4eb28512f8ce74c0bad8e3def2d4cd8ec2437",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant9100b08a542d2669e6dc8cff77e3b063b1fcccbbb7dc3979caaeb40426391496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:275ede7a-8306-7a8b-fcd0-3cd29510f798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.mul (hf : ContinuousOn f s) (hg : ContinuousOn g s) :
    ContinuousOn (f * g) s := fun x hx ↦
  (hf x hx).mul (hg x hx)

end ContinuousMul

section

variable {M : Type*} [TopologicalSpace M] [Mul M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant9100b08a542d2669e6dc8cff77e3b063b1fcccbbb7dc3979caaeb40426391496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant9100b08a542d2669e6dc8cff77e3b063b1fcccbbb7dc3979caaeb40426391496.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b15b40d99ba6df91d07a29c803d94b4d8569b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
