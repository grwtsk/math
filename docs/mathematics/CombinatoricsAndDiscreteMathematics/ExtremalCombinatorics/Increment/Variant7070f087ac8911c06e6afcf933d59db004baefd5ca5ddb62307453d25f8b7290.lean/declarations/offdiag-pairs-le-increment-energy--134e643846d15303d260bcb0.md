# offDiag_pairs_le_increment_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aab5772c-0fd4-08d9-06ab-dfa0e17fef74",
  "kind": "theorem",
  "lexical_name": "offDiag_pairs_le_increment_energy",
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
  "slug": "offdiag-pairs-le-increment-energy--134e643846d15303d260bcb0",
  "source": {
    "blob": "c2265ceab33d1a519aa764a7f457b590c3852dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:134e643846d15303d260bcb0c3a2d5bc9fedad0093cb58f57fffb77c091cef4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aab5772c-0fd4-08d9-06ab-dfa0e17fef74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem offDiag_pairs_le_increment_energy :
    ∑ x in P.parts.offDiag.attach, pairContrib G ε hP x / ((increment hP G ε).parts.card : ℚ) ^ 2 ≤
    (increment hP G ε).energy G := by
  simp_rw [pairContrib, ← sum_div]
  refine' div_le_div_of_le_of_nonneg (α := ℚ) _ (sq_nonneg _)
  rw [← sum_biUnion]
  · exact sum_le_sum_of_subset_of_nonneg distinct_pairs_increment fun i _ _ => sq_nonneg _
  simp only [Set.PairwiseDisjoint, Function.onFun, disjoint_left, inf_eq_inter, mem_inter,
    mem_product]
  rintro ⟨⟨s₁, s₂⟩, hs⟩ _ ⟨⟨t₁, t₂⟩, ht⟩ _ hst ⟨u, v⟩ huv₁ huv₂
  rw [mem_offDiag] at hs ht
  obtain ⟨a, ha⟩ := Finpartition.nonempty_of_mem_parts _ huv₁.1
  obtain ⟨b, hb⟩ := Finpartition.nonempty_of_mem_parts _ huv₁.2
  exact hst (Subtype.ext_val <| Prod.ext
    (P.disjoint.elim_finset hs.1 ht.1 a (Finpartition.le _ huv₁.1 ha) <|
      Finpartition.le _ huv₂.1 ha) <|
        P.disjoint.elim_finset hs.2.1 ht.2.1 b (Finpartition.le _ huv₁.2 hb) <|
          Finpartition.le _ huv₂.2 hb)
#align szemeredi_regularity.off_diag_pairs_le_increment_energy SzemerediRegularity.offDiag_pairs_le_increment_energy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Increment/Variant7070f087ac8911c06e6afcf933d59db004baefd5ca5ddb62307453d25f8b7290.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2265ceab33d1a519aa764a7f457b590c3852dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
