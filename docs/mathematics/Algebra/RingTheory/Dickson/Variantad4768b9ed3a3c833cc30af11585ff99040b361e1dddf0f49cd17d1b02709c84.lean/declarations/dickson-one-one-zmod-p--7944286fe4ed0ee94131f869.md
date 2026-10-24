# dickson_one_one_zmod_p

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79938d01-307c-0a02-39e9-49fce015bcab",
  "kind": "theorem",
  "lexical_name": "dickson_one_one_zmod_p",
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
  "slug": "dickson-one-one-zmod-p--7944286fe4ed0ee94131f869",
  "source": {
    "blob": "f5ba48732b44e9e4e7e9f77653e25129bc8bf833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 207,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7944286fe4ed0ee94131f86966afbe328b0d0324e474d43b7f8222eeb53f922c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79938d01-307c-0a02-39e9-49fce015bcab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dickson_one_one_zmod_p (p : ℕ) [Fact p.Prime] : dickson 1 (1 : ZMod p) p = X ^ p := by
  -- Recall that `dickson_one_one_eval_add_inv` characterises `dickson 1 1 p`
  -- as a polynomial that maps `x + x⁻¹` to `x ^ p + (x⁻¹) ^ p`.
  -- Since `X ^ p` also satisfies this property in characteristic `p`,
  -- we can use a variant on `Polynomial.funext` to conclude that these polynomials are equal.
  -- For this argument, we need an arbitrary infinite field of characteristic `p`.
  obtain ⟨K, _, _, H⟩ : ∃ (K : Type) (_ : Field K), ∃ _ : CharP K p, Infinite K := by
    let K := FractionRing (Polynomial (ZMod p))
    let f : ZMod p →+* K := (algebraMap _ (FractionRing _)).comp C
    have : CharP K p := by
      rw [← f.charP_iff_charP]
      infer_instance
    haveI : Infinite K :=
      Infinite.of_injective (algebraMap (Polynomial (ZMod p)) (FractionRing (Polynomial (ZMod p))))
        (IsFractionRing.injective _ _)
    refine' ⟨K, _, _, _⟩ <;> infer_instance
  apply map_injective (ZMod.castHom (dvd_refl p) K) (RingHom.injective _)
  rw [map_dickson, Polynomial.map_pow, map_X]
  apply eq_of_infinite_eval_eq
  -- The two polynomials agree on all `x` of the form `x = y + y⁻¹`.
  apply @Set.Infinite.mono _ { x : K | ∃ y, x = y + y⁻¹ ∧ y ≠ 0 }
  · rintro _ ⟨x, rfl, hx⟩
    simp only [eval_X, eval_pow, Set.mem_setOf_eq, @add_pow_char K _ p,
      dickson_one_one_eval_add_inv _ _ (mul_inv_cancel hx), inv_pow, ZMod.castHom_apply,
      ZMod.cast_one']
  -- Now we need to show that the set of such `x` is infinite.
  -- If the set is finite, then we will show that `K` is also finite.
  · intro h
    rw [← Set.infinite_univ_iff] at H
    apply H
    -- To each `x` of the form `x = y + y⁻¹`
    -- we `bind` the set of `y` that solve the equation `x = y + y⁻¹`.
    -- For every `x`, that set is finite (since it is governed by a quadratic equation).
    -- For the moment, we claim that all these sets together cover `K`.
    suffices (Set.univ : Set K) =
        { x : K | ∃ y : K, x = y + y⁻¹ ∧ y ≠ 0 } >>= fun x => { y | x = y + y⁻¹ ∨ y = 0 } by
      rw [this]
      clear this
      refine' h.biUnion fun x _ => _
      -- The following quadratic polynomial has as solutions the `y` for which `x = y + y⁻¹`.
      let φ : K[X] := X ^ 2 - C x * X + 1
      have hφ : φ ≠ 0 := by
        intro H
        have : φ.eval 0 = 0 := by rw [H, eval_zero]
        simpa [eval_X, eval_one, eval_pow, eval_sub, sub_zero, eval_add, eval_mul,
          mul_zero, sq, zero_add, one_ne_zero]
      classical
        convert(φ.roots ∪ {0}).toFinset.finite_toSet using 1
        ext1 y
        simp only [Multiset.mem_toFinset, Set.mem_setOf_eq, Finset.mem_coe, Multiset.mem_union,
          mem_roots hφ, IsRoot, eval_add, eval_sub, eval_pow, eval_mul, eval_X, eval_C, eval_one,
          Multiset.mem_singleton]
        by_cases hy : y = 0
        · simp only [hy, eq_self_iff_true, or_true_iff]
        apply or_congr _ Iff.rfl
        rw [← mul_left_inj' hy, eq_comm, ← sub_eq_zero, add_mul, inv_mul_cancel hy]
        apply eq_iff_eq_cancel_right.mpr
        ring
    -- Finally, we prove the claim that our finite union of finite sets covers all of `K`.
    · apply (Set.eq_univ_of_forall _).symm
      intro x
      simp only [exists_prop, Set.mem_iUnion, Set.bind_def, Ne.def, Set.mem_setOf_eq]
      by_cases hx : x = 0
      · simp only [hx, and_true_iff, eq_self_iff_true, inv_zero, or_true_iff]
        exact ⟨_, 1, rfl, one_ne_zero⟩
      · simp only [hx, or_false_iff, exists_eq_right]
        exact ⟨_, rfl, hx⟩
#align polynomial.dickson_one_one_zmod_p Polynomial.dickson_one_one_zmod_p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ba48732b44e9e4e7e9f77653e25129bc8bf833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
