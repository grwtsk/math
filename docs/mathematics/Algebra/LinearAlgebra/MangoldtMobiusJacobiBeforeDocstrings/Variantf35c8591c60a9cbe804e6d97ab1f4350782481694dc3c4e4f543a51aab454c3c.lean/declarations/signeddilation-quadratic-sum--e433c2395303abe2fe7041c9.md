# signedDilation_quadratic_sum

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
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c2fbbc7-1ed6-5841-de34-7a5ab124eaf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90a1b4d0-7bc0-ce15-5e89-806cb5098bb4",
  "kind": "theorem",
  "lexical_name": "signedDilation_quadratic_sum",
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
  "slug": "signeddilation-quadratic-sum--e433c2395303abe2fe7041c9",
  "source": {
    "blob": "89dc2294088afd8b8107b763b5b27b7577045035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e433c2395303abe2fe7041c998ce759039637e769c339573754f85f34cc52c5f",
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

Occurrence: `result:90a1b4d0-7bc0-ce15-5e89-806cb5098bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedDilation_quadratic_sum (H : Matrix ι κ ℝ)
    (x : ι → ℝ) (y : κ → ℝ) :
    jointVector x y ⬝ᵥ signedDilation H *ᵥ jointVector x y =
      2 * ∑ i, ∑ j, x i * H i j * y j := by
  rw [signedDilation_quadratic]
  congr 1
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

variable [DecidableEq ι]

/-- A pair-index kernel retains the exact allowed/deleted pair set in its type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89dc2294088afd8b8107b763b5b27b7577045035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
