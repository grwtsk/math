# fibRec_charPoly_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c34b37e-81ae-e5d5-32f1-8419bdee1660",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f528c8d7-6bc4-175a-a92b-b32d6055e638",
  "kind": "theorem",
  "lexical_name": "fibRec_charPoly_eq",
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
  "slug": "fibrec-charpoly-eq--12c2477a17a7bb15e6fa4b92",
  "source": {
    "blob": "41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c2477a17a7bb15e6fa4b920cefe9beac1430b85cdcc14000fb75c3fedbb783",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f528c8d7-6bc4-175a-a92b-b32d6055e638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fibRec_charPoly_eq {β : Type*} [CommRing β] :
    fibRec.charPoly = X ^ 2 - (X + (1 : β[X])) := by
  rw [fibRec, LinearRecurrence.charPoly]
  simp [Finset.sum_fin_eq_sum_range, Finset.sum_range_succ', ← smul_X_eq_monomial]

end Poly

/-- As expected, the Fibonacci sequence is a solution of `fibRec`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
