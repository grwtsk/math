# pow_sub_one_norm_prime_ne_two

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
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61250c8a-1847-e607-6bc9-e32c171aa75a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f2bbb89-89d6-29f1-381c-cfea08fa83e9",
  "kind": "theorem",
  "lexical_name": "pow_sub_one_norm_prime_ne_two",
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
  "slug": "pow-sub-one-norm-prime-ne-two--ac5dab882e5c748b92c35aa8",
  "source": {
    "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 388,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac5dab882e5c748b92c35aa8477741b214150e164567fe87efd9735f2a1eec7e",
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

Occurrence: `result:1f2bbb89-89d6-29f1-381c-cfea08fa83e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_sub_one_norm_prime_ne_two {k : ℕ} (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1)))
    [hpri : Fact (p : ℕ).Prime] [IsCyclotomicExtension {p ^ (k + 1)} K L]
    (hirr : Irreducible (cyclotomic (↑(p ^ (k + 1)) : ℕ) K)) {s : ℕ} (hs : s ≤ k) (hodd : p ≠ 2) :
    norm K (ζ ^ (p : ℕ) ^ s - 1) = (p : K) ^ (p : ℕ) ^ s := by
  refine' hζ.pow_sub_one_norm_prime_pow_ne_two hirr hs fun h => _
  have coe_two : ((2 : ℕ+) : ℕ) = 2 := by norm_cast
  rw [← PNat.coe_inj, coe_two, PNat.pow_coe, ← pow_one 2] at h
-- Porting note: the proof is slightly different because of coercions.
  replace h :=
    eq_of_prime_pow_eq (prime_iff.1 hpri.out) (prime_iff.1 Nat.prime_two) (k - s).succ_pos h
  exact hodd (PNat.coe_injective h)

#align is_primitive_root.pow_sub_one_norm_prime_ne_two IsPrimitiveRoot.pow_sub_one_norm_prime_ne_two

/-- If `Irreducible (cyclotomic (p ^ (k + 1)) K)` (in particular for `K = ℚ`) and `p` is an odd
prime, then the norm of `ζ - 1` is `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1560a04efc6897413f45a9477aecffa5cc80e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
