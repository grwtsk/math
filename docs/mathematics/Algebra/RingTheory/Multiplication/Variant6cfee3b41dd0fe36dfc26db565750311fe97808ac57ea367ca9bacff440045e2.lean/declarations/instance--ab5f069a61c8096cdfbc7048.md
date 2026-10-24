# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2599720b63e98ad93caa4231cdd3e7b8344da5adf280144d3bbb4dc885cfb359",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ab5f069a61c8096cdfbc7048",
  "source": {
    "blob": "5ca27e0f35af81586b042c3765c44f16d309d137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 963,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab5f069a61c8096cdfbc7048ad83011405722f86cd64f0885819b6d4b67d8d5e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2599720b63e98ad93caa4231cdd3e7b8344da5adf280144d3bbb4dc885cfb359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsCancelAdd R] [IsCancelMulZero R] : IsCancelMulZero R⟦Γ⟧ where
  -- TODO: This proof is painful because `coeff_mul` isn't stated in terms of `Finsupp.sum`.
  mul_left_cancel_of_ne_zero {x} hx y z hyz := by
    let : AddCancelCommMonoid R := ⟨⟩
    contrapose! hyz
    simp only [ne_eq, ← coeff_inj, funext_iff, not_forall] at ⊢ hyz
    have : Set.IsWF {a | y.coeff a ≠ z.coeff a} :=
      .mono (y.isWF_support.union z.isWF_support) (by intro; simp; grind)
    let a : Γ := this.min hyz
    have ha : y.coeff a ≠ z.coeff a := this.min_mem hyz
    refine ⟨x.order + a, ?_⟩
    rwa [coeff_mul, coeff_mul, sum_subset subset_union_left,
      sum_subset (s₁ := antidiagonal _ _ _) subset_union_right,
      sum_eq_sum_iff_single (i := (x.order, a)), mul_right_inj' (coeff_order_eq_zero.not.2 hx)]
    · simp [hx]
      grind
    · simp +contextual only [mem_union, mem_antidiagonal, mul_eq_mul_left_iff, Prod.mk.injEq,
        ne_eq, ← and_or_left, ← or_and_right, or_false, and_imp, Prod.forall, mem_support, not_and]
      rintro b c hxb - hbc hbc'
      contrapose! hbc'
      rwa [eq_comm, eq_comm (a := c), ← add_eq_add_iff_eq_and_eq (order_le_of_coeff_ne_zero hxb)
        (Set.IsWF.min_le this hyz hbc'), eq_comm]
    · simp +contextual [← and_or_left, ← or_and_right]
    · simp +contextual [← and_or_left, ← or_and_right]
  mul_right_cancel_of_ne_zero {x} hx y z hyz := by
    let : AddCancelCommMonoid R := ⟨⟩
    contrapose! hyz
    simp only [ne_eq, ← coeff_inj, funext_iff, not_forall] at ⊢ hyz
    have : Set.IsWF {a | y.coeff a ≠ z.coeff a} :=
      .mono (y.isWF_support.union z.isWF_support) (by intro; simp; grind)
    let a : Γ := this.min hyz
    have ha : y.coeff a ≠ z.coeff a := this.min_mem hyz
    refine ⟨a + x.order, ?_⟩
    rwa [coeff_mul, coeff_mul, sum_subset subset_union_left,
      sum_subset (s₁ := antidiagonal _ _ _) subset_union_right,
      sum_eq_sum_iff_single (i := (a, x.order)), mul_left_inj' (coeff_order_eq_zero.not.2 hx)]
    · simp [hx]
      grind
    · simp +contextual only [mem_union, mem_antidiagonal, mul_eq_mul_right_iff, Prod.mk.injEq,
        ne_eq, ← or_and_right, or_false, and_imp, Prod.forall, mem_support, not_and]
      rintro b c - hxb hbc hbc'
      contrapose! hbc'
      rwa [eq_comm, eq_comm (a := c), ← add_eq_add_iff_eq_and_eq
        (Set.IsWF.min_le this hyz ((Set.mem_ofPred (p := fun a => y.coeff a ≠ z.coeff a)).mpr hbc'))
        (order_le_of_coeff_ne_zero hxb), eq_comm]
    · simp +contextual [← or_and_right]
    · simp +contextual [← or_and_right]

variable [NoZeroDivisors R] {x y : R⟦Γ⟧}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca27e0f35af81586b042c3765c44f16d309d137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
