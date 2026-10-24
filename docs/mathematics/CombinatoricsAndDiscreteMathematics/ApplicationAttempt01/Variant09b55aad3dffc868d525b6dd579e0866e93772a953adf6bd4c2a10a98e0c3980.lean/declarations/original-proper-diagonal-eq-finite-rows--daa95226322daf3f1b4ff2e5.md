# original_proper_diagonal_eq_finite_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8ec28e-a008-ef69-45e2-8521f8188484",
  "kind": "theorem",
  "lexical_name": "original_proper_diagonal_eq_finite_rows",
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
  "slug": "original-proper-diagonal-eq-finite-rows--daa95226322daf3f1b4ff2e5",
  "source": {
    "blob": "a5d0e5e6a02c2036155bfbb790cd9324fe49054c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApplicationAttempt01/Variant09b55aad3dffc868d525b6dd579e0866e93772a953adf6bd4c2a10a98e0c3980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa95226322daf3f1b4ff2e50942b81657d9eb09d52e544b3bb161da463300ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ApplicationAttempt01/Variant09b55aad3dffc868d525b6dd579e0866e93772a953adf6bd4c2a10a98e0c3980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8ec28e-a008-ef69-45e2-8521f8188484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_proper_diagonal_eq_finite_rows (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A =
      properLargePowerDiagonal A (vaughanCutoff A) (sourceKernelCutoff A) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let w := fun n : ℕ => vonMangoldt n / (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))
  have hsub : properLargePowerInventory U N ⊆ actualProperDiagonalInventory A := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hi, _, hmin, hnp⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_filter.mpr ⟨hi, hmin⟩, hnp⟩
  have hz (n : ℕ) (hn : n ∈ actualProperDiagonalInventory A)
      (hnot : n ∉ properLargePowerInventory U N) : w n = 0 := by
    rcases Finset.mem_filter.mp hn with ⟨hbase, hnp⟩
    rcases Finset.mem_filter.mp hbase with ⟨hi, hmin⟩
    have hp : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hi, hp, hmin, hnp⟩)
    simp only [w, vonMangoldt_eq_zero_iff.mpr hp, zero_div, zero_mul]
  have hs := Finset.sum_subset hsub hz
  rw [actual_proper_diagonal_eq A hA]
  unfold properLargePowerDiagonal
  congr 1
  exact hs.symm

/-- Actual source application: keep favorable core terms and charge only the clipped finite tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ApplicationAttempt01/Variant09b55aad3dffc868d525b6dd579e0866e93772a953adf6bd4c2a10a98e0c3980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ApplicationAttempt01/Variant09b55aad3dffc868d525b6dd579e0866e93772a953adf6bd4c2a10a98e0c3980.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d0e5e6a02c2036155bfbb790cd9324fe49054c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
