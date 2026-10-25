# sum_Icc_eq_range_zero_branch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df666f22-eb2d-54fa-0732-0ae8e1536ffe",
  "kind": "theorem",
  "lexical_name": "sum_Icc_eq_range_zero_branch",
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
  "slug": "sum-icc-eq-range-zero-branch--81424fb57ad3f12f76ab6e00",
  "source": {
    "blob": "4ef1f0c2cc17a7961631b08d1272b1ad8ce5000c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81424fb57ad3f12f76ab6e00a12a36a575d28aa0fcdc90e5e4061376a593dda9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df666f22-eb2d-54fa-0732-0ae8e1536ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_eq_range_zero_branch (g : ℝ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, g n) =
      ∑ n ∈ Finset.range (N + 1), if n = 0 then 0 else g n := by
  have hset : Finset.range (N + 1) = Finset.Icc 0 N := by
    ext n
    simp only [Finset.mem_range, Finset.mem_Icc]
    omega
  rw [hset]
  symm
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, if n = 0 then 0 else g n := by
      symm
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn0 : n = 0 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have := (Finset.mem_Icc.mp hn).1
        omega
      simp [hn0]

#print axioms negative_axis_counterexample
#print axioms lower_endpoint_regression
#print axioms constant_uncentered_regression
#print axioms constant_centered_regression
#print axioms integer_terminal_regression
#print axioms linear_noninteger_regression
#print axioms positive_terminal_formula_false
#print axioms zero_endpoint_polynomial_regression
#print axioms sum_Icc_eq_range_zero_branch
end CenteredAbelRegressions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef1f0c2cc17a7961631b08d1272b1ad8ce5000c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
