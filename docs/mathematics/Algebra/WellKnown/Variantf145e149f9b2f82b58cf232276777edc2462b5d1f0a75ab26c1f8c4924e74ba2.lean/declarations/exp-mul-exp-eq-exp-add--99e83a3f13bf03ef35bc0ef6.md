# exp_mul_exp_eq_exp_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ab81bb-8591-cc0b-10b4-cc14bb8a19c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ebc48ec-8120-0700-1b5a-75355def6868",
  "kind": "theorem",
  "lexical_name": "exp_mul_exp_eq_exp_add",
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
  "slug": "exp-mul-exp-eq-exp-add--99e83a3f13bf03ef35bc0ef6",
  "source": {
    "blob": "573be53173ec1e7dcad83d95fd65556f49523066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 229,
    "path": "GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e83a3f13bf03ef35bc0ef6092d4258c932d4849d67ab3a717a83eba382c699",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebc48ec-8120-0700-1b5a-75355def6868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mul_exp_eq_exp_add [Algebra ℚ A] (a b : A) :
    rescale a (exp A) * rescale b (exp A) = rescale (a + b) (exp A) := by
  ext n
  simp only [coeff_mul, exp, rescale, coeff_mk, MonoidHom.coe_mk, OneHom.coe_mk, coe_mk,
    factorial, Nat.sum_antidiagonal_eq_sum_range_succ_mk, add_pow, sum_mul]
  apply sum_congr rfl
  rintro x hx
  suffices
    a ^ x * b ^ (n - x) *
        (algebraMap ℚ A (1 / ↑x.factorial) * algebraMap ℚ A (1 / ↑(n - x).factorial)) =
      a ^ x * b ^ (n - x) * (↑(n.choose x) * (algebraMap ℚ A) (1 / ↑n.factorial))
    by convert this using 1 <;> ring
  congr 1
  rw [← map_natCast (algebraMap ℚ A) (n.choose x), ← map_mul, ← map_mul]
  refine RingHom.congr_arg _ ?_
  rw [mul_one_div (↑(n.choose x) : ℚ), one_div_mul_one_div]
  symm
  rw [div_eq_iff, div_mul_eq_mul_div, one_mul, choose_eq_factorial_div_factorial]
  · norm_cast
    rw [cast_div_charZero]
    apply factorial_mul_factorial_dvd_factorial (mem_range_succ_iff.1 hx)
  · apply mem_range_succ_iff.1 hx
  · rintro h
    apply factorial_ne_zero n
    rw [cast_eq_zero.1 h]

/-- Shows that $e^{x} * e^{-x} = 1$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Variantf145e149f9b2f82b58cf232276777edc2462b5d1f0a75ab26c1f8c4924e74ba2.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573be53173ec1e7dcad83d95fd65556f49523066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
