# le_liminf_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6d1f007687760b07e6332ce682f14f3eb1dd027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 440,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92eb304c-45bf-5b93-9311-12bba9934903",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91e8e447-21e4-12ae-c5ff-09ed2e5ea711",
  "kind": "lemma",
  "lexical_name": "le_liminf_add",
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
  "slug": "le-liminf-add--9d26829a3a34f65de474ddd2",
  "source": {
    "blob": "f6d1f007687760b07e6332ce682f14f3eb1dd027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 440,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d26829a3a34f65de474ddd2a26dd2279dc5d163cebdf4b407b0cd2b398951d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e8e447-21e4-12ae-c5ff-09ed2e5ea711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_liminf_add (h₁ : IsBoundedUnder (fun x1 x2 ↦ x1 ≥ x2) f u := by isBoundedDefault)
    (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u := by isBoundedDefault)
    (h₃ : IsBoundedUnder (fun x1 x2 ↦ x1 ≥ x2) f v := by isBoundedDefault)
    (h₄ : IsCoboundedUnder (fun x1 x2 ↦ x1 ≥ x2) f v := by isBoundedDefault) :
    (liminf u f) + liminf v f ≤ liminf (u + v) f := by
  have h := isCoboundedUnder_ge_add h₂ h₄
  have h' := isBoundedUnder_ge_add h₁ h₃
  refine add_le_of_forall_lt fun a a_u b b_v ↦ ?_
  rw [le_liminf_iff h h']
  intro c c_ab
  filter_upwards [eventually_lt_of_lt_liminf a_u, eventually_lt_of_lt_liminf b_v] with x a_x b_x
  exact c_ab.trans (add_lt_add a_x b_x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantfa6bcd67492ac3ead47ee08da05c431d24fda066c96c0ba767b485f7bb876fc5.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6d1f007687760b07e6332ce682f14f3eb1dd027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
