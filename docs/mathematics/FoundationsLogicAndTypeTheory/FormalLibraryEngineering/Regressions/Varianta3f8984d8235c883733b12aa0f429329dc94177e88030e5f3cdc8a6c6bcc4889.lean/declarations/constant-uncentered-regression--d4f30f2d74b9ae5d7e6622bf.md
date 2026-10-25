# constant_uncentered_regression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7875c601-f115-be7c-4682-17820ee0bb05",
  "kind": "theorem",
  "lexical_name": "constant_uncentered_regression",
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
  "slug": "constant-uncentered-regression--d4f30f2d74b9ae5d7e6622bf",
  "source": {
    "blob": "443be1a035a6ca74e2dc28f51b3aa46397941eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4f30f2d74b9ae5d7e6622bfb023e734003b24103ab65d433d230d9fd1691889",
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

Occurrence: `result:7875c601-f115-be7c-4682-17820ee0bb05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constant_uncentered_regression {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ _n ∈ Finset.Icc 1 ⌊Y⌋₊, (1 : ℝ)) =
      (∫ _y in (1 : ℝ)..Y, (1 : ℝ)) + 1 - fracPlus Y := by
  have h := sum_eq_integral_add_frac
    (show ContDiff ℝ 1 (fun _ : ℝ => (1 : ℝ)) from contDiff_const) hY
  simpa only [deriv_const, mul_zero, intervalIntegral.integral_zero,
    add_zero, mul_one] using h

/-- Centering retains half of the initial atom and half minus frac at the terminal atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Regressions/Varianta3f8984d8235c883733b12aa0f429329dc94177e88030e5f3cdc8a6c6bcc4889.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443be1a035a6ca74e2dc28f51b3aa46397941eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
