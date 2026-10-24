# solver_difference_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b204fd8c1476eb12a3b6ee193c711ff4251f960",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0e0836151c8c68fe3fa6feb9298ec72436e6b727d8e4de505de04c7aeaa2f2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:512723fc-7624-ac9f-c218-7c55892f5219",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5688fb65-03b6-77c7-62fe-27ea7d8d4935",
  "kind": "theorem",
  "lexical_name": "solver_difference_null",
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
  "slug": "solver-difference-null--94a5d5f36d780be4dcff32ef",
  "source": {
    "blob": "8b204fd8c1476eb12a3b6ee193c711ff4251f960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 51,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variantc0e0836151c8c68fe3fa6feb9298ec72436e6b727d8e4de505de04c7aeaa2f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94a5d5f36d780be4dcff32efc440e753e311293d5c48fb02120781747c22eedb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variantc0e0836151c8c68fe3fa6feb9298ec72436e6b727d8e4de505de04c7aeaa2f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5688fb65-03b6-77c7-62fe-27ea7d8d4935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solver_difference_null
    (S T : BlockSchurSolver G) (u : U) :
    G.form
        (provenanceInclusion (S.solve u - T.solve u))
        (provenanceInclusion (S.solve u - T.solve u)) = 0 := by
  let d : P := S.solve u - T.solve u
  have hS := S.provenance_pairing_eq_cross d u
  have hT := T.provenance_pairing_eq_cross d u
  have hpair :
      G.form (provenanceInclusion d) (provenanceInclusion (S.solve u)) =
        G.form (provenanceInclusion d) (provenanceInclusion (T.solve u)) := by
    exact hS.trans hT.symm
  have hzero :
      G.form (provenanceInclusion d)
        (provenanceInclusion (S.solve u) -
          provenanceInclusion (T.solve u)) = 0 := by
    rw [form_sub_right]
    linarith
  simpa [d] using hzero

/-- The difference between two solver corrections is orthogonal to every
ambient direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variantc0e0836151c8c68fe3fa6feb9298ec72436e6b727d8e4de505de04c7aeaa2f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variantc0e0836151c8c68fe3fa6feb9298ec72436e6b727d8e4de505de04c7aeaa2f2a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b204fd8c1476eb12a3b6ee193c711ff4251f960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
