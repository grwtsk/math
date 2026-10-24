# actualShortSquare_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2edd7a5d-e715-3ee5-3d25-5dbb3e9ea428",
  "kind": "theorem",
  "lexical_name": "actualShortSquare_reconstruction",
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
  "slug": "actualshortsquare-reconstruction--b13392761c5e8e96d6cff846",
  "source": {
    "blob": "c6584b0191c45fd6d5fda3d090724d3f799cfefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13392761c5e8e96d6cff84644e3c91453114d16882c1a43d5e40b9057ab8f31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2edd7a5d-e715-3ee5-3d25-5dbb3e9ea428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortSquare_reconstruction {A : ℝ} (hA : 0 < A) :
    actualShortMangoldtBlock A = actualShortSquareBaseline A - actualShortSquareStorage A := by
  have h := closedPrimeMomentFixed_eq_baseline_sub_storage hA (vaughanCutoff A)
  exact h

/-- Every physical short storage term is a genuine nonnegative norm square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6584b0191c45fd6d5fda3d090724d3f799cfefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
