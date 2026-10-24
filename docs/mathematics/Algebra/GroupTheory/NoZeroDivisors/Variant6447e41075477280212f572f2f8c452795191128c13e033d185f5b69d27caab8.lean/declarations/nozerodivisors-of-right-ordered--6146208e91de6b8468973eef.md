# NoZeroDivisors.of_right_ordered

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
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c703bf4-07fa-61fd-807f-033210659443",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0af8103c-111d-89e1-cc71-d647ad4eb825",
  "kind": "theorem",
  "lexical_name": "NoZeroDivisors.of_right_ordered",
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
  "slug": "nozerodivisors-of-right-ordered--6146208e91de6b8468973eef",
  "source": {
    "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 124,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6146208e91de6b8468973eef7b6e3363f0234be914a4c66e9ab4466f00519524",
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

Occurrence: `result:0af8103c-111d-89e1-cc71-d647ad4eb825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoZeroDivisors.of_right_ordered [NoZeroDivisors R] [AddLeftCancelSemigroup A]
    [LinearOrder A] [CovariantClass A A (Function.swap (· + ·)) (· < ·)] :
    NoZeroDivisors (AddMonoidAlgebra R A) :=
  ⟨@fun f g fg => by
    contrapose! fg
    let fmin : A := f.support.min' (support_nonempty_iff.mpr fg.1)
    refine' support_nonempty_iff.mp _
    obtain ⟨a, ha, H⟩ :=
      Left.exists_add_of_mem_support_single_mul fmin
        ((single fmin 1 * g : AddMonoidAlgebra R A).support.min'
          (by rw [support_single_mul] <;> simp [support_nonempty_iff.mpr fg.2]))
        (Finset.min'_mem _ _)
    refine' ⟨fmin + a, mem_support_iff.mpr _⟩
    rw [mul_apply_add_eq_mul_of_forall_ne _]
    · refine' mul_ne_zero _ _
      exacts [mem_support_iff.mp (Finset.min'_mem _ _), mem_support_iff.mp ha]
    · rw [H]
      rintro b c bf cg (hb | hc) <;> refine' ne_of_gt _
      · refine' lt_of_le_of_lt (_ : _ ≤ fmin + c) _
        · apply Finset.min'_le
          rw [support_single_mul _ _ (fun y => by rw [one_mul] : ∀ y : R, 1 * y = 0 ↔ _)]
          simp only [cg, Finset.mem_map, addLeftEmbedding_apply, add_right_inj, exists_prop,
            exists_eq_right]
        · refine' add_lt_add_right _ _
          exact Finset.min'_lt_of_mem_erase_min' _ _ (Finset.mem_erase.mpr ⟨hb, bf⟩)
      · refine' lt_of_lt_of_le (_ : _ < fmin + c) _
        · apply Finset.min'_lt_of_mem_erase_min'
          rw [← H]
          apply Finset.mem_erase_of_ne_of_mem
          · simpa only [Ne.def, add_right_inj]
          · rw [support_single_mul _ _ (fun y => by rw [one_mul] : ∀ y : R, 1 * y = 0 ↔ _)]
            simpa only [Finset.mem_map, addLeftEmbedding_apply, add_right_inj, exists_prop,
              exists_eq_right]
        · haveI : CovariantClass A A (Function.swap (· + ·)) (· ≤ ·) :=
            Add.to_covariantClass_right A
          exact add_le_add_right (Finset.min'_le _ _ bf) _⟩
#align add_monoid_algebra.no_zero_divisors.of_right_ordered AddMonoidAlgebra.NoZeroDivisors.of_right_ordered

end LeftOrRightOrderability

end AddMonoidAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b4820e19751c749049815f5b8878eebf5b8981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
