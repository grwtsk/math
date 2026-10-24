# Ideal.exist_integer_multiples_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bdb3ab7-4d3b-d903-d879-5745e768125e",
  "kind": "theorem",
  "lexical_name": "Ideal.exist_integer_multiples_not_mem",
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
  "slug": "ideal-exist-integer-multiples-not-mem--1bb30a3b0406aa437a93b4ff",
  "source": {
    "blob": "ebaae1e55906a2e45da6c0f703da3ac57a9f1c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 794,
    "path": "GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb30a3b0406aa437a93b4ff2bc19a360680a112d68f875ce59a9fe9023911d3",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bdb3ab7-4d3b-d903-d879-5745e768125e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exist_integer_multiples_not_mem {J : Ideal A} (hJ : J ≠ ⊤) {ι : Type*} (s : Finset ι)
    (f : ι → K) {j} (hjs : j ∈ s) (hjf : f j ≠ 0) :
    ∃ a : K,
      (∀ i ∈ s, IsLocalization.IsInteger A (a * f i)) ∧
        ∃ i ∈ s, a * f i ∉ (J : FractionalIdeal A⁰ K) := by
  -- Consider the fractional ideal `I` spanned by the `f`s.
  let I : FractionalIdeal A⁰ K := spanFinset A s f
  have hI0 : I ≠ 0 := spanFinset_ne_zero.mpr ⟨j, hjs, hjf⟩
  -- We claim the multiplier `a` we're looking for is in `I⁻¹ \ (J / I)`.
  suffices ↑J / I < I⁻¹ by
    obtain ⟨_, a, hI, hpI⟩ := SetLike.lt_iff_le_and_exists.mp this
    rw [mem_inv_iff hI0] at hI
    refine' ⟨a, fun i hi => _, _⟩
    -- By definition, `a ∈ I⁻¹` multiplies elements of `I` into elements of `1`,
    -- in other words, `a * f i` is an integer.
    · exact (mem_one_iff _).mp (hI (f i) (Submodule.subset_span (Set.mem_image_of_mem f hi)))
    · contrapose! hpI
      -- And if all `a`-multiples of `I` are an element of `J`,
      -- then `a` is actually an element of `J / I`, contradiction.
      refine' (mem_div_iff_of_nonzero hI0).mpr fun y hy => Submodule.span_induction hy _ _ _ _
      · rintro _ ⟨i, hi, rfl⟩; exact hpI i hi
      · rw [mul_zero]; exact Submodule.zero_mem _
      · intro x y hx hy; rw [mul_add]; exact Submodule.add_mem _ hx hy
      · intro b x hx; rw [mul_smul_comm]; exact Submodule.smul_mem _ b hx
  -- To show the inclusion of `J / I` into `I⁻¹ = 1 / I`, note that `J < I`.
  calc
    ↑J / I = ↑J * I⁻¹ := div_eq_mul_inv (↑J) I
    _ < 1 * I⁻¹ := (mul_right_strictMono (inv_ne_zero hI0) ?_)
    _ = I⁻¹ := one_mul _
  · rw [← coeIdeal_top]
    -- And multiplying by `I⁻¹` is indeed strictly monotone.
    exact
      strictMono_of_le_iff_le (fun _ _ => (coeIdeal_le_coeIdeal K).symm)
        (lt_top_iff_ne_top.mpr hJ)
#align ideal.exist_integer_multiples_not_mem Ideal.exist_integer_multiples_not_mem

section Gcd

namespace Ideal

/-! ### GCD and LCM of ideals in a Dedekind domain

We show that the gcd of two ideals in a Dedekind domain is just their supremum,
and the lcm is their infimum, and use this to instantiate `NormalizedGCDMonoid (Ideal A)`.
-/


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaae1e55906a2e45da6c0f703da3ac57a9f1c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
