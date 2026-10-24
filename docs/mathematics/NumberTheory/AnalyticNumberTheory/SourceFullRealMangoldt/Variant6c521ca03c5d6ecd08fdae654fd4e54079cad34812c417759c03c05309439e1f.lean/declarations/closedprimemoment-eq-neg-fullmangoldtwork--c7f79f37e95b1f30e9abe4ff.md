# closedPrimeMoment_eq_neg_fullMangoldtWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e0daf6f-8072-1d33-a22e-f98ee83f7729",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_neg_fullMangoldtWork",
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
  "slug": "closedprimemoment-eq-neg-fullmangoldtwork--c7f79f37e95b1f30e9abe4ff",
  "source": {
    "blob": "a7605dc64f622bb6bd84ee202e95cdf22484981a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f79f37e95b1f30e9abe4ff5c2fad18a9de9106e2e3c742dd37f45608039660",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0daf6f-8072-1d33-a22e-f98ee83f7729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_neg_fullMangoldtWork {A : ℝ} (hA : 1 ≤ A) :
    closedPrimeMoment A = -fullMangoldtWork A := by
  rw [closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA,
    fullMangoldtWork_eq_positive_sub_continuous hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant6c521ca03c5d6ecd08fdae654fd4e54079cad34812c417759c03c05309439e1f.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7605dc64f622bb6bd84ee202e95cdf22484981a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
