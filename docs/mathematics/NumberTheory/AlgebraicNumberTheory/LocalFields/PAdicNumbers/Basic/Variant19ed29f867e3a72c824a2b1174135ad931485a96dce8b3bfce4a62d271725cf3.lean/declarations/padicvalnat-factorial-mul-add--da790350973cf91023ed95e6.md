# padicValNat_factorial_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef67107-0a71-d918-fcb2-24e95b9fcb39",
  "kind": "theorem",
  "lexical_name": "padicValNat_factorial_mul_add",
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
  "slug": "padicvalnat-factorial-mul-add--da790350973cf91023ed95e6",
  "source": {
    "blob": "873466b39d96b9ccb46f350e75882ead92d13b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 598,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da790350973cf91023ed95e6321b3ad2e0b28dbe9e492f8c55b5bd067aba840e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef67107-0a71-d918-fcb2-24e95b9fcb39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padicValNat_factorial_mul_add {n : ℕ} (m : ℕ) [hp : Fact p.Prime] (h : n < p) :
    padicValNat p (p * m + n)! = padicValNat p (p * m)! := by
  induction n with
  | zero => rw [add_zero]
  | succ n hn =>
    rw [add_succ, factorial_succ,
      padicValNat.mul (succ_ne_zero (p * m + n)) <| factorial_ne_zero (p * m + _),
      hn <| lt_of_succ_lt h, ← add_succ,
      padicValNat_eq_zero_of_mem_Ioo ⟨(Nat.lt_add_of_pos_right <| succ_pos n),
        (Nat.mul_add _ _ _▸ Nat.mul_one _ ▸ ((add_lt_add_iff_left (p * m)).mpr h))⟩,
      zero_add]

/-- The `p`-adic valuation of `n!` is equal to the `p`-adic valuation of the factorial of the
largest multiple of `p` below `n`, i.e. `(p * ⌊n / p⌋)!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873466b39d96b9ccb46f350e75882ead92d13b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
