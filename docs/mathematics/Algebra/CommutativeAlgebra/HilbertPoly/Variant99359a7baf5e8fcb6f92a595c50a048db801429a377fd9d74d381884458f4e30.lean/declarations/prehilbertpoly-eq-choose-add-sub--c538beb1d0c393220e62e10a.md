# preHilbertPoly_eq_choose_add_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "823364e34e55eca198d997052479da6843bb038d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ecb4b6a-f3b9-0017-f478-a5a042565775",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c1147ee-7f0e-8f92-bafa-95de2cee63f8",
  "kind": "lemma",
  "lexical_name": "preHilbertPoly_eq_choose_add_sub",
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
  "slug": "prehilbertpoly-eq-choose-add-sub--c538beb1d0c393220e62e10a",
  "source": {
    "blob": "823364e34e55eca198d997052479da6843bb038d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 90,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c538beb1d0c393220e62e10a112820e771033a6148f4df4623cfc5ad8384bc50",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c1147ee-7f0e-8f92-bafa-95de2cee63f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preHilbertPoly_eq_choose_add_sub [CharZero F] (d : ℕ) {k n : ℕ} (hkn : k ≤ n + d) :
    (preHilbertPoly F d k).eval (n : F) = (n + d - k).choose d := by
  have : (d ! : F) ≠ 0 := by norm_cast; positivity
  rcases le_or_gt k n with h | h
  · calc
    _ = (↑d !)⁻¹ * eval (↑(n - k + 1)) (ascPochhammer F d) := by simp [cast_sub h, preHilbertPoly]
    _ = (n + d - k).choose d := by
      rw [ascPochhammer_nat_eq_natCast_ascFactorial]
      simp [field, ascFactorial_eq_factorial_mul_choose, Nat.sub_add_comm h]
  · rw [Nat.choose_eq_zero_of_lt (by omega)]
    simpa [preHilbertPoly] using
      Or.inr ⟨k - n - 1, by omega, by rw [Nat.sub_sub, Nat.cast_sub h]; push_cast; ring⟩

@[deprecated (since := "2026-08-25")]
alias preHilbertPoly_eq_choose_sub_add := preHilbertPoly_eq_choose_add_sub

variable {F}

/--
`Polynomial.hilbertPoly p 0 = 0`; for any `d : ℕ`, `Polynomial.hilbertPoly p (d + 1)`
is defined as `∑ i ∈ p.support, (p.coeff i) • Polynomial.preHilbertPoly F d i`. If
`M` is a graded module whose Poincaré series can be written as `p(X)/(1 - X)ᵈ` for some
`p : ℚ[X]` with integer coefficients, then `Polynomial.hilbertPoly p d` is the Hilbert
polynomial of `M`. See also `Polynomial.coeff_mul_invOneSubPow_eq_hilbertPoly_eval`,
which says that `PowerSeries.coeff F n (p * PowerSeries.invOneSubPow F d)` equals
`(Polynomial.hilbertPoly p d).eval (n : F)` for any large enough `n : ℕ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant99359a7baf5e8fcb6f92a595c50a048db801429a377fd9d74d381884458f4e30.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823364e34e55eca198d997052479da6843bb038d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
