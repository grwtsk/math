# of_symmDiff_compl_positive_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdb01cb1-48a0-fc90-7892-6db678557894",
  "kind": "theorem",
  "lexical_name": "of_symmDiff_compl_positive_negative",
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
  "slug": "of-symmdiff-compl-positive-negative--04015ef6c7ce942ed24bb296",
  "source": {
    "blob": "d35ce7228c562473fe663a5734df636fd62216c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 424,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04015ef6c7ce942ed24bb2964f92edf018d9543bad154b8a724ee8702b5027a8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdb01cb1-48a0-fc90-7892-6db678557894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_symmDiff_compl_positive_negative {s : SignedMeasure α} {i j : Set α}
    (hi : MeasurableSet i) (hj : MeasurableSet j) (hi' : 0 ≤[i] s ∧ s ≤[iᶜ] 0)
    (hj' : 0 ≤[j] s ∧ s ≤[jᶜ] 0) : s (i ∆ j) = 0 ∧ s (iᶜ ∆ jᶜ) = 0 := by
  rw [restrict_le_restrict_iff s 0, restrict_le_restrict_iff 0 s] at hi' hj'
  constructor
  · rw [Set.symmDiff_def, Set.sdiff_eq_compl_inter, Set.sdiff_eq_compl_inter, of_union,
      le_antisymm (hi'.2 (hi.compl.inter hj) Set.inter_subset_left)
        (hj'.1 (hi.compl.inter hj) Set.inter_subset_right),
      le_antisymm (hj'.2 (hj.compl.inter hi) Set.inter_subset_left)
        (hi'.1 (hj.compl.inter hi) Set.inter_subset_right), zero_apply, zero_apply, zero_add]
    · exact
        Set.disjoint_of_subset_left Set.inter_subset_left
          (Set.disjoint_of_subset_right Set.inter_subset_right
            (disjoint_comm.1 (IsCompl.disjoint isCompl_compl)))
    · exact hj.compl.inter hi
    · exact hi.compl.inter hj
  · rw [Set.symmDiff_def, Set.sdiff_eq_compl_inter, Set.sdiff_eq_compl_inter, compl_compl,
      compl_compl, of_union,
      le_antisymm (hi'.2 (hj.inter hi.compl) Set.inter_subset_right)
        (hj'.1 (hj.inter hi.compl) Set.inter_subset_left),
      le_antisymm (hj'.2 (hi.inter hj.compl) Set.inter_subset_right)
        (hi'.1 (hi.inter hj.compl) Set.inter_subset_left), zero_apply, zero_apply, zero_add]
    · exact
        Set.disjoint_of_subset_left Set.inter_subset_left
          (Set.disjoint_of_subset_right Set.inter_subset_right
            (IsCompl.disjoint isCompl_compl))
    · exact hj.inter hi.compl
    · exact hi.inter hj.compl
  all_goals measurability

end SignedMeasure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variant35809e13841c49626140d191acbbbe9408a080bff957ca1960a6a7eb5d6aae62.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35ce7228c562473fe663a5734df636fd62216c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
