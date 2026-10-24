# physical_full_value_eq_offDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7de1d7e6-004f-bfb9-6560-8b75b80572ba",
  "kind": "theorem",
  "lexical_name": "physical_full_value_eq_offDiagonal",
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
  "slug": "physical-full-value-eq-offdiagonal--7862baf834df8cc0b87cd9e7",
  "source": {
    "blob": "20e7eac44dd20c0c4063cebb5735a4282c7e8456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmeticReview/Variantab8751eba319cd02ac3d788ee1d342b3540d734ad4dd4e96692577aee17abda8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7862baf834df8cc0b87cd9e7ab3c8051ca96325f704d1068c66865283739bca0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmeticReview/Variantab8751eba319cd02ac3d788ee1d342b3540d734ad4dd4e96692577aee17abda8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de1d7e6-004f-bfb9-6560-8b75b80572ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physical_full_value_eq_offDiagonal :
    FormalResearch.PositiveAtlas.QuadraticDefect.value physicalMixedMatrixTwo Finset.univ =
      ∑ m ∈ longInventory 2, ∑ n ∈ longInventory 2,
        if m = n then 0 else weightedAtomInteraction 2 (by norm_num) 4 m n := by
  rw [physicalMixedMatrixTwo_eq_native, complete_matrix_value_eq_atoms]
  have hc : (∑ i : ↥(arithmeticInventory 2), ∑ j : ↥(arithmeticInventory 2),
      if i = j then 0 else expandedAtom 2 4 i j) =
      ∑ m ∈ arithmeticInventory 2, ∑ n ∈ arithmeticInventory 2,
        if m = n then 0 else expandedAtom 2 4 m n := by
    simp only [Subtype.ext_iff]
    calc
      _ = ∑ i : ↥(arithmeticInventory 2), ∑ n ∈ arithmeticInventory 2,
          if (i : ℕ) = n then 0 else expandedAtom 2 4 i n := by
        apply Finset.sum_congr rfl
        intro i _
        exact Finset.sum_coe_sort (s := arithmeticInventory 2)
          (f := fun n => if (i : ℕ) = n then 0 else expandedAtom 2 4 i n)
      _ = _ := Finset.sum_coe_sort (s := arithmeticInventory 2)
        (f := fun m => ∑ n ∈ arithmeticInventory 2,
          if m = n then 0 else expandedAtom 2 4 m n)
  rw [hc, arithmeticInventory_eq_longInventory]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · simp only [hmn, ↓reduceIte]
    have hn4 : 4 < n := by
      have hh := (Finset.mem_Ioc.mp hn).1
      rw [actual_cutoff_two] at hh
      exact hh
    exact (weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 m n (by norm_num) hn4).symm

/-- At its full mask this matrix is the unchanged main-subtracted arithmetic readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmeticReview/Variantab8751eba319cd02ac3d788ee1d342b3540d734ad4dd4e96692577aee17abda8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmeticReview/Variantab8751eba319cd02ac3d788ee1d342b3540d734ad4dd4e96692577aee17abda8.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e7eac44dd20c0c4063cebb5735a4282c7e8456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
