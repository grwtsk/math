# actual_psi_at_closed_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e495388b-d37c-f623-d35c-f5e5eb98fe29",
  "kind": "theorem",
  "lexical_name": "actual_psi_at_closed_seven",
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
  "slug": "actual-psi-at-closed-seven--8486f7104c3f77c5a8ffc6e7",
  "source": {
    "blob": "663f62ff65817f44a2afc18ba2b681245f88b7bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8486f7104c3f77c5a8ffc6e756349bef3a8cceae93d363a7b43b9bed741dea52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e495388b-d37c-f623-d35c-f5e5eb98fe29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_at_closed_seven : Chebyshev.psi (7 : ℝ) = Real.log (420 : ℝ) := by
  have hlcm : Nat.lcmUpto 7 = 420 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 7

/-- One actual real point disproves global nonnegativity of the shifted discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663f62ff65817f44a2afc18ba2b681245f88b7bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
