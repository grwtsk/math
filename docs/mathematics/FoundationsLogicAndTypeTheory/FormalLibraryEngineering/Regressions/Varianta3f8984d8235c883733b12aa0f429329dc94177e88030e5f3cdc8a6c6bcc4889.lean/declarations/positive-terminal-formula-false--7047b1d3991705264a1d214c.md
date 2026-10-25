# positive_terminal_formula_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb6b724a-441c-370a-da89-5ad82bc59dd9",
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
  "slug": "positive-terminal-formula-false--7047b1d3991705264a1d214c",
  "source": {
    "blob": "443be1a035a6ca74e2dc28f51b3aa46397941eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7047b1d3991705264a1d214c352102decb438919aa88368f01905da2492efd45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6b724a-441c-370a-da89-5ad82bc59dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443be1a035a6ca74e2dc28f51b3aa46397941eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
