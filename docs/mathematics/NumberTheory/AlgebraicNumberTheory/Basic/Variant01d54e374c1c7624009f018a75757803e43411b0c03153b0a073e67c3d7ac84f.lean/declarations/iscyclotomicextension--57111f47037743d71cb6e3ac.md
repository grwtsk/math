# isCyclotomicExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bb54731440c22cd0bff766143ed939c15b654ba3f64ae31f122e6c66665790c",
  "kind": "instance",
  "lexical_name": "isCyclotomicExtension",
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
  "slug": "iscyclotomicextension--57111f47037743d71cb6e3ac",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 602,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57111f47037743d71cb6e3ac2e601257d4bcf69c3a4c53e4843e0dbe82d5ee5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bb54731440c22cd0bff766143ed939c15b654ba3f64ae31f122e6c66665790c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCyclotomicExtension [IsFractionRing A K] [NeZero ((n : ℕ) : A)] :
    IsCyclotomicExtension {n} A (CyclotomicRing n A K) where
  exists_isPrimitiveRoot {a} han := by
    rw [mem_singleton_iff] at han
    subst a
    have := NeZero.of_faithfulSMul A K n
    have := NeZero.of_faithfulSMul A (CyclotomicField n K) n
    obtain ⟨μ, hμ⟩ := (CyclotomicField.isCyclotomicExtension n K).exists_isPrimitiveRoot
      (mem_singleton n)
    refine ⟨⟨μ, subset_adjoin ?_⟩, ?_⟩
    · apply (isRoot_of_unity_iff n.pos (CyclotomicField n K)).mpr
      refine ⟨n, Nat.mem_divisors_self _ n.ne_zero, ?_⟩
      rwa [← isRoot_cyclotomic_iff] at hμ
    · rwa [← IsPrimitiveRoot.coe_submonoidClass_iff, Subtype.coe_mk]
  adjoin_roots x := by
    obtain ⟨x, hx⟩ := x
    refine
      adjoin_induction (fun y hy => ?_) (fun a => ?_) (fun y z _ _ hy hz => ?_)
        (fun y z  _ _ hy hz => ?_) hx
    · refine subset_adjoin ?_
      simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq]
      rwa [← Subalgebra.coe_eq_one, Subalgebra.coe_pow, Subtype.coe_mk]
    · exact Subalgebra.algebraMap_mem _ a
    · exact Subalgebra.add_mem _ hy hz
    · exact Subalgebra.mul_mem _ hy hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
