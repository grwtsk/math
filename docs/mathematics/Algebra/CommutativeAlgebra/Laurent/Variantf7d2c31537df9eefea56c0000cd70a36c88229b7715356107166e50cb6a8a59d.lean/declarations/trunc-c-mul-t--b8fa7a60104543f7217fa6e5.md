# trunc_C_mul_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ddcdd2da5be10ba47a217ed213d062338bf2023",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2fb5cde-715b-be23-aaec-e83d90c81ff0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d060aaef-7860-463b-1f04-1d52a6bfbf9d",
  "kind": "theorem",
  "lexical_name": "trunc_C_mul_T",
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
  "slug": "trunc-c-mul-t--b8fa7a60104543f7217fa6e5",
  "source": {
    "blob": "9ddcdd2da5be10ba47a217ed213d062338bf2023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 354,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8fa7a60104543f7217fa6e55a9220250db9e2705b602ee4c3a9da58b399045e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d060aaef-7860-463b-1f04-1d52a6bfbf9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trunc_C_mul_T (n : ℤ) (r : R) : trunc (C r * T n) = ite (0 ≤ n) (monomial n.toNat r) 0 := by
  -- Porting note: added. Should move elsewhere after the port.
  have : Function.Injective Int.ofNat := fun x y h => Int.ofNat_inj.mp h
  apply (toFinsuppIso R).injective
  rw [← single_eq_C_mul_T, trunc, AddMonoidHom.coe_comp, Function.comp_apply]
  -- Porting note: was `rw`
  erw [comapDomain.addMonoidHom_apply this]
  rw [toFinsuppIso_apply]
  -- Porting note: rewrote proof below relative to mathlib3.
  by_cases n0 : 0 ≤ n
  · lift n to ℕ using n0
    erw [comapDomain_single]
    simp only [Nat.cast_nonneg, Int.toNat_ofNat, ite_true, toFinsupp_monomial]
  · lift -n to ℕ using (neg_pos.mpr (not_le.mp n0)).le with m
    rw [toFinsupp_inj, if_neg n0]
    ext a
    have := ((not_le.mp n0).trans_le (Int.ofNat_zero_le a)).ne
    simp only [coeff_ofFinsupp, comapDomain_apply, Int.ofNat_eq_coe, coeff_zero,
      single_eq_of_ne this]
set_option linter.uppercaseLean3 false in
#align laurent_polynomial.trunc_C_mul_T LaurentPolynomial.trunc_C_mul_T

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddcdd2da5be10ba47a217ed213d062338bf2023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
