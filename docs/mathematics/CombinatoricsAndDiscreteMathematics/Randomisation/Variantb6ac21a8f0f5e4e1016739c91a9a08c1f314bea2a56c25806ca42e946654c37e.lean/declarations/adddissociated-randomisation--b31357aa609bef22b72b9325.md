# AddDissociated.randomisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59711993-dd59-4bbf-b784-aa869c9f8836",
  "kind": "lemma",
  "lexical_name": "AddDissociated.randomisation",
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
  "slug": "adddissociated-randomisation--b31357aa609bef22b72b9325",
  "source": {
    "blob": "928fc48362c2d46e1453d9a0bbfa71a42e6b273b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Randomisation/Variantb6ac21a8f0f5e4e1016739c91a9a08c1f314bea2a56c25806ca42e946654c37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b31357aa609bef22b72b9325ffbe177737ea69b1d669846112fd12f0d5935989",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Randomisation/Variantb6ac21a8f0f5e4e1016739c91a9a08c1f314bea2a56c25806ca42e946654c37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59711993-dd59-4bbf-b784-aa869c9f8836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AddDissociated.randomisation (c : AddChar G ℂ → ℝ) (d : AddChar G ℂ → ℂ)
    (hcd : AddDissociated {ψ | d ψ ≠ 0}) : 𝔼 a, ∏ ψ, (c ψ + (d ψ * ψ a).re) = ∏ ψ, c ψ := by
  refine Complex.ofReal_injective ?_
  push_cast
  calc
    _ = ∑ t, (𝔼 a, ∏ ψ ∈ t, ((d ψ * ψ a) + conj (d ψ * ψ a)) / 2) * ∏ ψ ∈ tᶜ, (c ψ : ℂ) := by
        simp_rw [expect_mul, ← expect_sum_comm, ← Fintype.prod_add, add_comm,
          Complex.re_eq_add_conj]
    _ = (𝔼 a, ∏ ψ ∈ ∅, ((d ψ * ψ a) + conj (d ψ * ψ a)) / 2) * ∏ ψ ∈ ∅ᶜ, (c ψ : ℂ) :=
        Fintype.sum_eq_single ∅ fun t ht ↦ mul_eq_zero_of_left ?_ _
    _ = ∏ ψ, (c ψ : ℂ) := by simp
  simp only [map_mul, prod_div_distrib, prod_add, prod_const, ← expect_div, expect_sum_comm,
    div_eq_zero_iff, pow_eq_zero_iff', OfNat.ofNat_ne_zero, ne_eq, card_eq_zero,
    false_and, or_false]
  refine sum_eq_zero fun u _ ↦ ?_
  calc
    𝔼 a, (∏ ψ ∈ u, d ψ * ψ a) * ∏ ψ ∈ t \ u, conj (d ψ) * conj (ψ a)
      = ((∏ ψ ∈ u, d ψ) * ∏ ψ ∈ t \ u, conj (d ψ)) * 𝔼 a, (∑ ψ ∈ u, ψ - ∑ ψ ∈ t \ u, ψ) a := by
        simp_rw [mul_expect, AddChar.sub_apply, AddChar.sum_apply, mul_mul_mul_comm,
          ← prod_mul_distrib, AddChar.map_neg_eq_conj]
    _ = 0 := ?_
  rw [mul_eq_zero, AddChar.expect_eq_zero_iff_ne_zero, sub_ne_zero, or_iff_not_imp_left, ← Ne,
    mul_ne_zero_iff, prod_ne_zero_iff, prod_ne_zero_iff]
  exact fun h ↦ hcd.ne h.1 (by simpa only [map_ne_zero] using! h.2)
    (sdiff_ne_right.2 <| .inl ht).symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Randomisation/Variantb6ac21a8f0f5e4e1016739c91a9a08c1f314bea2a56c25806ca42e946654c37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Randomisation/Variantb6ac21a8f0f5e4e1016739c91a9a08c1f314bea2a56c25806ca42e946654c37e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928fc48362c2d46e1453d9a0bbfa71a42e6b273b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
