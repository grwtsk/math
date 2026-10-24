# properlyDiscontinuousSMul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b197e82fcb1919341311054eda0d1dcdbf9d8a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 554,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5daf8429-5111-b7c4-a373-1090507e99c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1ec9afb-6d6a-c930-d662-53922c665aac",
  "kind": "lemma",
  "lexical_name": "properlyDiscontinuousSMul_iff",
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
  "slug": "properlydiscontinuoussmul-iff--1ab9f4d0e01a07be0de45dde",
  "source": {
    "blob": "8b197e82fcb1919341311054eda0d1dcdbf9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 554,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab9f4d0e01a07be0de45ddeffd4a0b76d8e95c8f04c5bdd444c5ff6c1352563",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1ec9afb-6d6a-c930-d662-53922c665aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma properlyDiscontinuousSMul_iff [TopologicalSpace α] [SMul M α] :
    ProperlyDiscontinuousSMul M α ↔
      ∀ {K L : Set α}, IsCompact K → IsCompact L → {m : M | (m • K ∩ L).Nonempty}.Finite :=
  ⟨fun _ _ _ ↦ ProperlyDiscontinuousSMul.finite_disjoint_inter_image, .mk⟩

section

variable (Γ : Type*) {T : Type*}
variable [TopologicalSpace T] [SMul Γ T] [ProperlyDiscontinuousSMul Γ T] (x : T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b197e82fcb1919341311054eda0d1dcdbf9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
