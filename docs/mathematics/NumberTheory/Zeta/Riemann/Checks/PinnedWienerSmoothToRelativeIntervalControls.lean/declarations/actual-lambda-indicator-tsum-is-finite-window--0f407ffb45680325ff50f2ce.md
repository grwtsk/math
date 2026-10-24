# actual_lambda_indicator_tsum_is_finite_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ba2ca0-5e11-ffdc-9854-8c95397c8ad7",
  "kind": "theorem",
  "lexical_name": "actual_lambda_indicator_tsum_is_finite_window",
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
  "slug": "actual-lambda-indicator-tsum-is-finite-window--0f407ffb45680325ff50f2ce",
  "source": {
    "blob": "1117a82c75489816511e948d7ff53689a73dec4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f407ffb45680325ff50f2cec0d32b27a43194960f8b51ab19f4dfa679d9a789",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ba2ca0-5e11-ffdc-9854-8c95397c8ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_lambda_indicator_tsum_is_finite_window
    {a b T : ℝ} (hT : 0 < T) :
    (∑' n : ℕ,
      pinnedTauberianLambda n *
        (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) =
      ∑ n ∈ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊,
        pinnedTauberianLambda n :=
  smoothWiener_tsum_indicator_eq_interval pinnedTauberianLambda hT

/-- Positivity and summability are sourced, not guessed from an
infinite-sum inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1117a82c75489816511e948d7ff53689a73dec4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
