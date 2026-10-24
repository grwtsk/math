# factor_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e57560c49f628749ee1b5da6a0737600f44340d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:397b3151-5aa0-41af-a3dd-1732a661bc2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eabf4842-8ca9-d4f0-e371-723e4220f2bf",
  "kind": "theorem",
  "lexical_name": "factor_apply",
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
  "slug": "factor-apply--8337729cffaa95e1f2868f8c",
  "source": {
    "blob": "3e57560c49f628749ee1b5da6a0737600f44340d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8337729cffaa95e1f2868f8c7e48b38229ffec1ffeb355a41f9dd84849cdcc87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabf4842-8ca9-d4f0-e371-723e4220f2bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factor_apply
    {A : (ι → ℝ) →ₗ[ℝ] (ι → ℝ)}
    {B : (κ → ℝ) →ₗ[ℝ] (ι → ℝ)}
    (F : LinearRangeFactorization A B) (u : κ → ℝ) :
    A (F.solve u) = B u := by
  have h := LinearMap.congr_fun F.factor u
  simpa using h

end LinearRangeFactorization

/-- Positive block geometry canonically yields a linear provenance solver. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e57560c49f628749ee1b5da6a0737600f44340d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
