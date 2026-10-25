# integer_terminal_regression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368fc32f-1138-1414-dc8b-ac630497a0fb",
  "kind": "theorem",
  "lexical_name": "integer_terminal_regression",
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
  "slug": "integer-terminal-regression--d303d1dbeeb79499b0d99f18",
  "source": {
    "blob": "443be1a035a6ca74e2dc28f51b3aa46397941eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d303d1dbeeb79499b0d99f18deddf76388907033e9fffef1a2c5c3679588928d",
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

Occurrence: `result:368fc32f-1138-1414-dc8b-ac630497a0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_terminal_regression (N : ℕ) (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 1 N, ((n : ℝ) - 1)) =
      (∫ y in (1 : ℝ)..(N : ℝ), y - 1) +
      (∫ y in (1 : ℝ)..(N : ℝ), fracPlus y * deriv (fun t : ℝ => t - 1) y) := by
  have hg : ContDiff ℝ 1 (fun y : ℝ => y - 1) := contDiff_id.sub contDiff_const
  have h := sum_eq_integral_add_frac hg (show (1 : ℝ) ≤ N by exact_mod_cast hN)
  simpa only [Nat.floor_natCast, fracPlus, sub_self, mul_zero,
    add_zero, sub_zero, zero_mul] using h

/-- The corrected noninteger identity has the negative terminal contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443be1a035a6ca74e2dc28f51b3aa46397941eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
