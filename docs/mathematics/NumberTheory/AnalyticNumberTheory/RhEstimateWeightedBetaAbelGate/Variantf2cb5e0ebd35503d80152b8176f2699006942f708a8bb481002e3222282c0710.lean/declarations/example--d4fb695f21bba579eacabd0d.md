# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8b631e9d493d4ea8dbd512011b2518f78adacea5c517aa8ce49cbbcaa4d0f09",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--d4fb695f21bba579eacabd0d",
  "source": {
    "blob": "865336c5747110ff64729ceb2573c18cab3f4c6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4fb695f21bba579eacabd0df1d25775931a4e1aed64fbc0e85a2d846ac9cab5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8b631e9d493d4ea8dbd512011b2518f78adacea5c517aa8ce49cbbcaa4d0f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) :
    weightedCenteredInterval A m U L H =
      -rowWeight A m (H : ℝ) * discrepancyPrefix U L (H : ℝ) +
        ∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x :=
  weightedCenteredInterval_eq_abel A m U L H hA hm hU hUL hLH

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865336c5747110ff64729ceb2573c18cab3f4c6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
