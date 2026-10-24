# centered_cell_mass_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7f5828afb01269d2448bfdd6ed91438dddde994",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdd634a0-7db9-07d5-ed87-ec72afda31f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf8adb9f-0ba0-a39e-754b-c0c3f1504959",
  "kind": "theorem",
  "lexical_name": "centered_cell_mass_budget",
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
  "slug": "centered-cell-mass-budget--5292bebc8d76c05da1f04f2a",
  "source": {
    "blob": "c7f5828afb01269d2448bfdd6ed91438dddde994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5292bebc8d76c05da1f04f2a2d6e4fcc56136a7e2874f14e1c1abf8db452ba7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf8adb9f-0ba0-a39e-754b-c0c3f1504959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_cell_mass_budget (U K : ℕ) (hU : 1 ≤ U) :
    (∑ k ∈ Finset.Ico (U + 1) K,
      |∑ n ∈ Finset.Ioc U k, centeredBeta U n| * cellMass (k : ℝ)) ≤
      2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ) := by
  calc
    _ ≤ ∑ k ∈ Finset.Ico (U + 1) K, (U : ℝ) * cellMass (k : ℝ) := by
      apply Finset.sum_le_sum
      intro k hk
      have hUk : U ≤ k := by have := (Finset.mem_Ico.mp hk).1; omega
      have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
      exact mul_le_mul_of_nonneg_right (centered_beta_prefix_abs_le_cutoff U k hU hUk)
        (cell_mass_nonneg hk0)
    _ = (U : ℝ) * ∑ k ∈ Finset.Ico (U + 1) K, cellMass (k : ℝ) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (U : ℝ) * (2 / Real.sqrt ((U + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (cell_mass_sum_le (U + 1) K (by omega)) (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1345f728b044e07b264d71d690237d2812f2bcd45789ea3b95b6b3f4994df56b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f5828afb01269d2448bfdd6ed91438dddde994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
