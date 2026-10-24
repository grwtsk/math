# coeffsIn_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76134e6821467f127f9fb1769f545c2f10275a4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1051,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b61c67ecb295e766b2fc1a3408e9a5dd22e75ed6fe4dd467675cb4b2551b4e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5c4797f-7c87-98b3-5c37-5596142b4fa4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebf2ac6-026d-f411-b5a9-826d8d542eb6",
  "kind": "lemma",
  "lexical_name": "coeffsIn_mul",
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
  "slug": "coeffsin-mul--4b4da06c140b0271b375a2bc",
  "source": {
    "blob": "76134e6821467f127f9fb1769f545c2f10275a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1065,
    "line": 1051,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7b61c67ecb295e766b2fc1a3408e9a5dd22e75ed6fe4dd467675cb4b2551b4e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4da06c140b0271b375a2bc85340c44e0c308d1a5f6213d726950fcb3d306dc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant7b61c67ecb295e766b2fc1a3408e9a5dd22e75ed6fe4dd467675cb4b2551b4e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebf2ac6-026d-f411-b5a9-826d8d542eb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeffsIn_mul (M N : Submodule R S) : coeffsIn σ (M * N) = coeffsIn σ M * coeffsIn σ N := by
  classical
  refine le_antisymm (coeffsIn_le.2 ?_) ?_
  · intro r hr s
    induction hr using Submodule.mul_induction_on' with
    | mem_mul_mem m hm n hn =>
      rw [← add_zero s, ← monomial_mul_monomial]
      apply Submodule.mul_mem_mul <;> simpa
    | add x _ y _ hx hy =>
      simpa [map_add] using add_mem hx hy
  · rw [Submodule.mul_le]
    intro x hx y hy k
    rw [MvPolynomial.coeff_mul]
    exact sum_mem fun c hc ↦ Submodule.mul_mem_mul (hx _) (hy _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant7b61c67ecb295e766b2fc1a3408e9a5dd22e75ed6fe4dd467675cb4b2551b4e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7b61c67ecb295e766b2fc1a3408e9a5dd22e75ed6fe4dd467675cb4b2551b4e2.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76134e6821467f127f9fb1769f545c2f10275a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
