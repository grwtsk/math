# IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd8d4d354d43d44f9698709e394c1958393bf56e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 632,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:354c1918-b35e-db26-32f7-8a491a906110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7717130-dcdd-c2aa-1a60-e91524354635",
  "kind": "lemma",
  "lexical_name": "IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar",
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
  "slug": "ispurelyinseparable-exists-pow-pow-mem-range-tensorproduct-of-expchar--208959a61a1ed7de06df7c1c",
  "source": {
    "blob": "cd8d4d354d43d44f9698709e394c1958393bf56e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 632,
    "path": "GRWTSK/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208959a61a1ed7de06df7c1cb1cac5f9a6c8cdc86d39b49b392acb950a7aee45",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7717130-dcdd-c2aa-1a60-e91524354635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPurelyInseparable.exists_pow_pow_mem_range_tensorProduct_of_expChar
    [IsPurelyInseparable k K] (q : ℕ) [ExpChar k q] (x : R ⊗[k] K) :
    ∃ n, x ^ q ^ n ∈ (algebraMap R (R ⊗[k] K)).range := by
  nontriviality (R ⊗[k] K)
  obtain (hq|hq) := expChar_is_prime_or_one k q
  induction x with
  | zero => exact ⟨0, 0, by simp [zero_pow_eq, hq.ne_zero]⟩
  | add x y h h' =>
    have : ExpChar (R ⊗[k] K) q := expChar_of_injective_ringHom (algebraMap k _).injective q
    simp_rw [RingHom.mem_range, ← RingHom.mem_rangeS, ← Subalgebra.mem_perfectClosure_iff] at h h' ⊢
    exact add_mem h h'
  | tmul x y =>
    obtain ⟨n, a, ha⟩ := IsPurelyInseparable.pow_mem k q y
    use n
    have : (x ^ q ^ n) ⊗ₜ[k] (y ^ q ^ n) =
        (x ^ q ^ n) ⊗ₜ[k] (1 : K) * (1 : R) ⊗ₜ[k] (y ^ q ^ n) := by
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rw [Algebra.TensorProduct.tmul_pow, this]
    refine Subring.mul_mem _ ⟨x ^ q ^ n, rfl⟩ ⟨algebraMap k R a, ?_⟩
    rw [← IsScalarTower.algebraMap_apply, Algebra.TensorProduct.algebraMap_apply,
      Algebra.TensorProduct.tmul_one_eq_one_tmul, ha]
  · subst hq
    have : CharZero k := charZero_of_expChar_one' k
    exact ⟨0, (Algebra.TensorProduct.includeLeft_surjective R _ <|
      IsPurelyInseparable.surjective_algebraMap_of_isSeparable k K) _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantdf66676ebc614089a225126db3c0e659518cd854eb5ce06b53aad3428bbde3b6.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8d4d354d43d44f9698709e394c1958393bf56e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
