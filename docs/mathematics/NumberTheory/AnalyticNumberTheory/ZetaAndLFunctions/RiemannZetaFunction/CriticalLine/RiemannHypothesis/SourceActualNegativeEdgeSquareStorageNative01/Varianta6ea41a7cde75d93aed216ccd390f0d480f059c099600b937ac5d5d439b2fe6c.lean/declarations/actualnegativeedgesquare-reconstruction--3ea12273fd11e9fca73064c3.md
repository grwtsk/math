# actualNegativeEdgeSquare_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5dd541b-e482-1aa9-1888-748f43d78e9e",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeSquare_reconstruction",
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
  "slug": "actualnegativeedgesquare-reconstruction--3ea12273fd11e9fca73064c3",
  "source": {
    "blob": "d1151e1b034330dde1bae5a1908f1f5295d21def",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeEdgeSquareStorageNative01/Varianta6ea41a7cde75d93aed216ccd390f0d480f059c099600b937ac5d5d439b2fe6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ea12273fd11e9fca73064c347a1b6d523a71c6e7403d21015067b125fe8b64e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeEdgeSquareStorageNative01/Varianta6ea41a7cde75d93aed216ccd390f0d480f059c099600b937ac5d5d439b2fe6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5dd541b-e482-1aa9-1888-748f43d78e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeSquare_reconstruction {A : ℝ} (hA : 0 < A) :
    actualNegativeEdgeMangoldtBlock A =
      actualNegativeEdgeSquareBaseline A - actualNegativeEdgeSquareStorage A := by
  unfold actualNegativeEdgeMangoldtBlock actualNegativeEdgeSquareBaseline
    actualNegativeEdgeSquareStorage
  have h := finiteMangoldt_reconstruction (actualNegativeEdgeWindow A) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro n _
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- The selected physical surplus is truly exponentially large; other deficits remain signed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeEdgeSquareStorageNative01/Varianta6ea41a7cde75d93aed216ccd390f0d480f059c099600b937ac5d5d439b2fe6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeEdgeSquareStorageNative01/Varianta6ea41a7cde75d93aed216ccd390f0d480f059c099600b937ac5d5d439b2fe6c.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1151e1b034330dde1bae5a1908f1f5295d21def` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
