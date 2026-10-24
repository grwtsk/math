# actualLowMixedWorkDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd25103e-ef39-3465-df4a-978d88e159b7",
  "kind": "theorem",
  "lexical_name": "actualLowMixedWorkDensity_integrable",
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
  "slug": "actuallowmixedworkdensity-integrable--fca65d02980a2f937fe2071b",
  "source": {
    "blob": "9c5690d5b9e64426b793e2ad499cd03e175d97a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 409,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca65d02980a2f937fe2071bffa01e1c4bd729831ad93ddaa2aa549f7e7fb535",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd25103e-ef39-3465-df4a-978d88e159b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowMixedWorkDensity_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualLowMixedWorkDensity A) := by
  have hp : 0 < A := by linarith
  exact (low_sector_integrable _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp)).add
      ((low_sector_integrable _ (normalizedTest_contDiff A hp).continuous hA
        (SourceActualMixedWorkFubini.source_tsupport_subset hp)).const_mul (1 / 4 : ℝ))

/-- Each spatial restriction of low-time work has its own budget; no global-sign inference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5690d5b9e64426b793e2ad499cd03e175d97a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
