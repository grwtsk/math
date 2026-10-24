# pairKernel_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89dc2294088afd8b8107b763b5b27b7577045035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3779ac81-8ebc-6c44-b741-54e16c887169",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:440c8170-a382-13d6-4a88-fcf8debccf15",
  "kind": "theorem",
  "lexical_name": "pairKernel_covariance",
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
  "slug": "pairkernel-covariance--480d03d426c53501595501c9",
  "source": {
    "blob": "89dc2294088afd8b8107b763b5b27b7577045035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:480d03d426c53501595501c923720b6f6efc7110e9929807896756987b64b059",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440c8170-a382-13d6-4a88-fcf8debccf15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairKernel_covariance (w x y : ι → ℝ) :
    jointVector x y ⬝ᵥ signedDilation (pairKernel w) *ᵥ jointVector x y =
      2 * ∑ i, x i * y i * w i := by
  rw [signedDilation_quadratic]
  simp only [pairKernel, dotProduct]
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  rw [Matrix.mulVec_diagonal]
  ring

/-- An arbitrary finite Mangoldt–signed-row covariance has an exact symmetric
operator representation. The pair type preserves any cutoff, cell partition,
and deleted diagonal already present in `P`; `beta` keeps its centering sign.
This theorem does not identify that finite operator with a Jacobi operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89dc2294088afd8b8107b763b5b27b7577045035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
