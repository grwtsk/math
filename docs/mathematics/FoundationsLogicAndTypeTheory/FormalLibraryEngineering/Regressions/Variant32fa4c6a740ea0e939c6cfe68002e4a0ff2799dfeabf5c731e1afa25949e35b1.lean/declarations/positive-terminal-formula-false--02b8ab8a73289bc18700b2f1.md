# positive_terminal_formula_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e6484bb-64e8-395a-a8bd-d92ea0d75699",
  "kind": "theorem",
  "lexical_name": "positive_terminal_formula_false",
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
  "slug": "positive-terminal-formula-false--02b8ab8a73289bc18700b2f1",
  "source": {
    "blob": "4ef1f0c2cc17a7961631b08d1272b1ad8ce5000c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02b8ab8a73289bc18700b2f1cbbfc76e434b85fb74cc640c1293a84322edd004",
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

Occurrence: `result:1e6484bb-64e8-395a-a8bd-d92ea0d75699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_terminal_formula_false :
    ¬ ((∑ n ∈ Finset.Icc 1 ⌊(3 / 2 : ℝ)⌋₊, ((n : ℝ) - 1)) =
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), y - 1) +
      (∫ y in (1 : ℝ)..(3 / 2 : ℝ), fracPlus y * deriv (fun t : ℝ => t - 1) y) +
      ((1 : ℝ) - 1) + fracPlus (3 / 2 : ℝ) * ((3 / 2 : ℝ) - 1)) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => y - 1) := contDiff_id.sub contDiff_const
  have hc := sum_eq_integral_add_frac hg (by norm_num : (1 : ℝ) ≤ 3 / 2)
  have hf : ⌊(3 / 2 : ℝ)⌋₊ = 1 :=
    (Nat.floor_eq_iff (by norm_num)).mpr ⟨by norm_num, by norm_num⟩
  have hfrac : fracPlus (3 / 2 : ℝ) = 1 / 2 := by norm_num [fracPlus, hf]
  intro hw
  rw [hfrac] at hc hw
  linarith

/-- For a polynomial with both endpoints zero the centered identity loses no boundary terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Variant32fa4c6a740ea0e939c6cfe68002e4a0ff2799dfeabf5c731e1afa25949e35b1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef1f0c2cc17a7961631b08d1272b1ad8ce5000c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
