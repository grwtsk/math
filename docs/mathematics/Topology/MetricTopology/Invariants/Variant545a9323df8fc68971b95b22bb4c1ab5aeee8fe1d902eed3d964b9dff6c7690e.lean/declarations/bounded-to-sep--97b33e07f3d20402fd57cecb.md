# Bounded.to_sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d60e6f837c547ef8117f69ce51f166c83810a09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17849e3b-b875-b80d-8052-81f79a6af8f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29495e8f-8fd9-8159-18d2-4e5f62e6f316",
  "kind": "theorem",
  "lexical_name": "Bounded.to_sep",
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
  "slug": "bounded-to-sep--97b33e07f3d20402fd57cecb",
  "source": {
    "blob": "6d60e6f837c547ef8117f69ce51f166c83810a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 836,
    "path": "GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b33e07f3d20402fd57cecb4f87f4166a929b8f3ae2602268bc559809c7c5fd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29495e8f-8fd9-8159-18d2-4e5f62e6f316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Bounded.to_sep {t₁ t₂ o₁ o₂} {x : α}
    (h₁ : Bounded t₁ o₁ (x : WithTop α)) (h₂ : Bounded t₂ (x : WithBot α) o₂) :
    t₁.All fun y => t₂.All fun z : α => y < z := by
  refine h₁.mem_lt.imp fun y yx => ?_
  exact h₂.mem_gt.imp fun z xz => lt_trans yx xz

end Bounded

end Ordnode
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d60e6f837c547ef8117f69ce51f166c83810a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
