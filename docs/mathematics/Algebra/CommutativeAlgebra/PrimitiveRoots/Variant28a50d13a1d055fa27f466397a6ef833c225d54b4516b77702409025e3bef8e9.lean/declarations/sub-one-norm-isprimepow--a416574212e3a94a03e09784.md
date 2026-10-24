# sub_one_norm_isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f848d03a-233a-1293-e275-9fef69b51fe2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47d52b90-5581-1d6f-0efa-93c3c16d727a",
  "kind": "theorem",
  "lexical_name": "sub_one_norm_isPrimePow",
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
  "slug": "sub-one-norm-isprimepow--a416574212e3a94a03e09784",
  "source": {
    "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 286,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a416574212e3a94a03e09784a77ea5ba1032e759050ae773d7bd6e40f7165bc9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d52b90-5581-1d6f-0efa-93c3c16d727a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_norm_isPrimePow (hn : IsPrimePow (n : ℕ)) [IsCyclotomicExtension {n} K L]
    (hirr : Irreducible (cyclotomic (n : ℕ) K)) (h : n ≠ 2) : norm K (ζ - 1) = (n : ℕ).minFac := by
  have :=
    (coe_lt_coe 2 _).1
      (lt_of_le_of_ne (succ_le_of_lt (IsPrimePow.one_lt hn))
        (Function.Injective.ne PNat.coe_injective h).symm)
  letI hprime : Fact (n : ℕ).minFac.Prime := ⟨minFac_prime (IsPrimePow.ne_one hn)⟩
  rw [sub_one_norm_eq_eval_cyclotomic hζ this hirr]
  nth_rw 1 [← IsPrimePow.minFac_pow_factorization_eq hn]
  obtain ⟨k, hk⟩ : ∃ k, (n : ℕ).factorization (n : ℕ).minFac = k + 1 :=
    exists_eq_succ_of_ne_zero
      (((n : ℕ).factorization.mem_support_toFun (n : ℕ).minFac).1 <|
        factor_iff_mem_factorization.2 <|
          (mem_factors (IsPrimePow.ne_zero hn)).2 ⟨hprime.out, minFac_dvd _⟩)
  simp [hk, sub_one_norm_eq_eval_cyclotomic hζ this hirr]
#align is_primitive_root.sub_one_norm_is_prime_pow IsPrimitiveRoot.sub_one_norm_isPrimePow

variable {A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1560a04efc6897413f45a9477aecffa5cc80e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
