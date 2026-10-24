# wInner_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe2247fd071bdca9c772b370f9fdeaaa8670532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3e335ea-d24b-5c9d-c013-17bb7fb4c368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e494575e-b4c2-3bb9-cd2b-30e7cf003554",
  "kind": "lemma",
  "lexical_name": "wInner_smul_left",
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
  "slug": "winner-smul-left--459110e546ac1f0b1331a17a",
  "source": {
    "blob": "4fe2247fd071bdca9c772b370f9fdeaaa8670532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:459110e546ac1f0b1331a17aac10a129b3e279fd78e5b832aa1feb55eaf9851a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e494575e-b4c2-3bb9-cd2b-30e7cf003554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wInner_smul_left {𝕝 : Type*} [CommSemiring 𝕝] [StarRing 𝕝] [Algebra 𝕝 𝕜] [StarModule 𝕝 𝕜]
    [SMulCommClass ℝ 𝕝 𝕜] [∀ i, Module 𝕝 (E i)] [∀ i, IsScalarTower 𝕝 𝕜 (E i)] (c : 𝕝)
    (w : ι → ℝ) (f g : ∀ i, E i) : ⟪c • f, g⟫_[𝕜, w] = star c • ⟪f, g⟫_[𝕜, w] := by
  simp_rw [wInner, Pi.smul_apply, inner_smul_left_eq_star_smul, starRingEnd_apply, smul_sum,
    smul_comm (w _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inner/Variant7ffc93e85ee2bdd085c2aad79a5d0a973e61dfd946a522b5e7c8a2268a7f5e1d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe2247fd071bdca9c772b370f9fdeaaa8670532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
