# NoZeroDivisors.of_left_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfb3173b-fe4d-7bef-f1e9-1fb7b2c0b769",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82d65e89-3f4f-c066-e22b-75a304085937",
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
  "slug": "nozerodivisors-of-left-ordered--d062aba5e8a53cbe9e894568",
  "source": {
    "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d062aba5e8a53cbe9e8945682b78ecd04bcf531e78d90a157a17e3142588ee46",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d65e89-3f4f-c066-e22b-75a304085937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–123.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b4820e19751c749049815f5b8878eebf5b8981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
