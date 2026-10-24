# isCyclotomicExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fab2e68ddade82135d930a874d424351e58618cc9fc81f08f2c8d1965a3a74cf",
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
  "slug": "iscyclotomicextension--8e13b2c3aabcb5457831a38a",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 651,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e13b2c3aabcb5457831a38aeca1ed7933675cd279d4e6ff473df2b74637c266",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fab2e68ddade82135d930a874d424351e58618cc9fc81f08f2c8d1965a3a74cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCyclotomicExtension [NeZero ((n : ℕ) : A)] :
    IsCyclotomicExtension {n} A (CyclotomicRing n A K) where
  exists_prim_root := @fun a han => by
    rw [mem_singleton_iff] at han
    subst a
    haveI := NeZero.of_noZeroSMulDivisors A K n
    haveI := NeZero.of_noZeroSMulDivisors A (CyclotomicField n K) n
    obtain ⟨μ, hμ⟩ := (CyclotomicField.isCyclotomicExtension n K).exists_prim_root (mem_singleton n)
    refine' ⟨⟨μ, subset_adjoin _⟩, _⟩
    · apply (isRoot_of_unity_iff n.pos (CyclotomicField n K)).mpr
      refine' ⟨n, Nat.mem_divisors_self _ n.ne_zero, _⟩
      rwa [← isRoot_cyclotomic_iff] at hμ
    · rwa [← IsPrimitiveRoot.coe_submonoidClass_iff, Subtype.coe_mk]
  adjoin_roots x := by
    refine'
      adjoin_induction' (fun y hy => _) (fun a => _) (fun y z hy hz => _) (fun y z hy hz => _) x
    · refine' subset_adjoin _
      simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq]
      rwa [← Subalgebra.coe_eq_one, Subalgebra.coe_pow, Subtype.coe_mk]
    · exact Subalgebra.algebraMap_mem _ a
    · exact Subalgebra.add_mem _ hy hz
    · exact Subalgebra.mul_mem _ hy hz
#align cyclotomic_ring.is_cyclotomic_extension CyclotomicRing.isCyclotomicExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
