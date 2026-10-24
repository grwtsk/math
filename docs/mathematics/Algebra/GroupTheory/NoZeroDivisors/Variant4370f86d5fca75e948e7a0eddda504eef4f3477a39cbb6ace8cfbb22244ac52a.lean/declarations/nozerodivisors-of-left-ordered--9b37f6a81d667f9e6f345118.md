# NoZeroDivisors.of_left_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d3dda25-abb6-c57e-15dc-c2b879949a46",
  "kind": "theorem",
  "lexical_name": "NoZeroDivisors.of_left_ordered",
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
  "slug": "nozerodivisors-of-left-ordered--9b37f6a81d667f9e6f345118",
  "source": {
    "blob": "bb8a6accbafb9d12a529d525473fc2a0d36813eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b37f6a81d667f9e6f3451185ceb2be202ff1a7bd2996a2ca91ed38b135375ba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d3dda25-abb6-c57e-15dc-c2b879949a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoZeroDivisors.of_left_ordered [NoZeroDivisors R] [AddRightCancelSemigroup A]
    [LinearOrder A] [CovariantClass A A (· + ·) (· < ·)] : NoZeroDivisors (AddMonoidAlgebra R A) :=
  ⟨@fun f g fg => by
    contrapose! fg
    let gmin : A := g.support.min' (support_nonempty_iff.mpr fg.2)
    refine' support_nonempty_iff.mp _
    obtain ⟨a, ha, H⟩ :=
      Right.exists_add_of_mem_support_single_mul gmin
        ((f * single gmin 1 : AddMonoidAlgebra R A).support.min'
          (by rw [support_mul_single] <;> simp [support_nonempty_iff.mpr fg.1]))
        (Finset.min'_mem _ _)
    refine' ⟨a + gmin, mem_support_iff.mpr _⟩
    rw [mul_apply_add_eq_mul_of_forall_ne _]
    · refine' mul_ne_zero _ _
      exacts [mem_support_iff.mp ha, mem_support_iff.mp (Finset.min'_mem _ _)]
    · rw [H]
      rintro b c bf cg (hb | hc) <;> refine' ne_of_gt _
      · refine' lt_of_lt_of_le (_ : _ < b + gmin) _
        · apply Finset.min'_lt_of_mem_erase_min'
          rw [← H]
          apply Finset.mem_erase_of_ne_of_mem
          · simpa only [Ne.def, add_left_inj]
          · rw [support_mul_single _ _ (fun y => by rw [mul_one] : ∀ y : R, y * 1 = 0 ↔ _)]
            simpa only [Finset.mem_map, addRightEmbedding_apply, add_left_inj, exists_prop,
              exists_eq_right]
        · haveI : CovariantClass A A (· + ·) (· ≤ ·) := Add.to_covariantClass_left A
          exact add_le_add_left (Finset.min'_le _ _ cg) _
      · refine' lt_of_le_of_lt (_ : _ ≤ b + gmin) _
        · apply Finset.min'_le
          rw [support_mul_single _ _ (fun y => by rw [mul_one] : ∀ y : R, y * 1 = 0 ↔ _)]
          simp only [bf, Finset.mem_map, addRightEmbedding_apply, add_left_inj, exists_prop,
            exists_eq_right]
        · refine' add_lt_add_left _ _
          exact Finset.min'_lt_of_mem_erase_min' _ _ (Finset.mem_erase.mpr ⟨hc, cg⟩)⟩
#align add_monoid_algebra.no_zero_divisors.of_left_ordered AddMonoidAlgebra.NoZeroDivisors.of_left_ordered

/-- If `R` is a semiring with no non-trivial zero-divisors and `A` is a right-ordered add left
cancel semigroup, then `AddMonoidAlgebra R A` also contains no non-zero zero-divisors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a6accbafb9d12a529d525473fc2a0d36813eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
