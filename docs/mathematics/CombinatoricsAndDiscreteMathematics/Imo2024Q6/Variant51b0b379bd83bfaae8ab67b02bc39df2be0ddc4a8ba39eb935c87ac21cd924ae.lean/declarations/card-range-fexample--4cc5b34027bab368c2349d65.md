# card_range_fExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec0de5c0-88f3-d43f-6eff-68d41ee27b45",
  "kind": "lemma",
  "lexical_name": "card_range_fExample",
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
  "slug": "card-range-fexample--4cc5b34027bab368c2349d65",
  "source": {
    "blob": "7e51816e0cdfc444a0e6c337c2c24240c185670a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc5b34027bab368c2349d651d281d715b82b8e0c2de4a2d4e0ed8986a73ea28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0de5c0-88f3-d43f-6eff-68d41ee27b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_range_fExample : #(Set.range (fun x ↦ fExample x + fExample (-x))) = 2 := by
  have h : Set.range (fun x ↦ fExample x + fExample (-x)) = {0, -2} := by
    ext x
    simp only [Set.mem_range, Set.mem_insert_iff, Set.mem_singleton_iff]
    refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
    · rcases h with ⟨y, rfl⟩
      rw [← Int.floor_add_fract (fExample y), ← Int.floor_add_fract (fExample (-y))]
      by_cases h : Int.fract y = 0
      · simp [fract_fExample, floor_fExample, h]
      · refine .inr ?_
        simp only [fract_fExample, floor_fExample, h, ite_false, sub_add_sub_cancel,
                   Int.fract_neg_eq_zero]
        rw [Int.fract_neg h, Int.floor_neg, Int.cast_neg, Int.ceil_eq_add_one_sub_fract h,
            ← Int.self_sub_fract]
        abel_nf
        simp
    · rcases h with rfl | rfl
      · refine ⟨0, by simp [fExample]⟩
      · refine ⟨1 / 2, ?_⟩
        rw [(by norm_num : (-(1 / 2) : ℚ) = (-1 : ℤ) + (1 / 2 : ℚ)), fExample_intCast_add,
            fExample_of_mem_Ico ⟨by simp, by norm_num⟩]
        norm_num
  rw [h]
  simp

/-- The answer 2 is to be determined by the solver of the original problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e51816e0cdfc444a0e6c337c2c24240c185670a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
