# boundaryResidual_succ_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f077a3d4f8262e9463c578fb115720ed12db58b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b15a064-1d56-5d08-1078-e348f1fa92ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5dc717c-840a-7670-8516-98819b3ea5d1",
  "kind": "theorem",
  "lexical_name": "boundaryResidual_succ_sub",
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
  "slug": "boundaryresidual-succ-sub--e2564899a64b90be9e51e7dd",
  "source": {
    "blob": "f077a3d4f8262e9463c578fb115720ed12db58b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2564899a64b90be9e51e7dd94d4d2c00e914c0ec4d6e2d7df8122f70da5ad37",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5dc717c-840a-7670-8516-98819b3ea5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryResidual_succ_sub (N : ℕ) (hN : 1 ≤ N) (ε h t : ℝ) :
    boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t =
      -(mobiusReciprocalSum N : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  have he := correctedNumerator_succ_sub N hN ((ε : ℂ) + (t : ℂ) * Complex.I)
  unfold boundaryResidual
  linear_combination -(boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) * he

/-- Every off-diagonal increment product keeps both signed prefixes and both complex phases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f077a3d4f8262e9463c578fb115720ed12db58b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
