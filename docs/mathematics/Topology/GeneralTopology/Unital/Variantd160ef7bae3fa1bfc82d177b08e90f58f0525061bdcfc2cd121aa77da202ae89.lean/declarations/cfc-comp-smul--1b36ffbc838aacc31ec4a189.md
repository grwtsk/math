# cfc_comp_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e4a74d713491f81bc866ca32ac7797ec7b085e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81863c25-97d6-39f8-b872-5de55f063d6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49062c59-8cf8-250d-24aa-49d27b8181a5",
  "kind": "lemma",
  "lexical_name": "cfc_comp_smul",
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
  "slug": "cfc-comp-smul--1b36ffbc838aacc31ec4a189",
  "source": {
    "blob": "1e4a74d713491f81bc866ca32ac7797ec7b085e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 601,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b36ffbc838aacc31ec4a189a29e00483431df648734dd21fcc035bb9fc4d2d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49062c59-8cf8-250d-24aa-49d27b8181a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfc_comp_smul {S : Type*} [SMul S R] [ContinuousConstSMul S R] [SMulZeroClass S A]
    [IsScalarTower S R A] [IsScalarTower S R (R → R)] (s : S) (f : R → R) (a : A)
    (hf : ContinuousOn f ((s • ·) '' (spectrum R a)) := by cfc_cont_tac) (ha : p a := by cfc_tac) :
    cfc (f <| s • ·) a = cfc f (s • a) := by
  rw [cfc_comp' .., cfc_smul_id ..]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variantd160ef7bae3fa1bfc82d177b08e90f58f0525061bdcfc2cd121aa77da202ae89.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e4a74d713491f81bc866ca32ac7797ec7b085e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
