# det_integralMatrix_eq_one_or_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f841bdee90d7ae95296b6d7f1d5f7496ff764c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98271fed-0086-135c-162f-061296726598",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a73ec2ca-4c4c-c187-b26a-2bddf42532d2",
  "kind": "theorem",
  "lexical_name": "det_integralMatrix_eq_one_or_neg_one",
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
  "slug": "det-integralmatrix-eq-one-or-neg-one--57f536c784b1a27bfdf15a43",
  "source": {
    "blob": "8f841bdee90d7ae95296b6d7f1d5f7496ff764c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f536c784b1a27bfdf15a4340a2f8bdf17fa9dc88745df336cbfbd65a39cf3a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a73ec2ca-4c4c-c187-b26a-2bddf42532d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_integralMatrix_eq_one_or_neg_one :
    P.integralMatrix.det = 1 ∨ P.integralMatrix.det = -1 := by
  have hdet := congrArg Matrix.det P.integralMatrix_mul_self
  rw [Matrix.det_mul, Matrix.det_one] at hdet
  apply (sq_eq_one_iff).mp
  simpa [pow_two] using hdet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variant4694af98a3c046e2f1c4ce590f2f80be94d8953d0f884afe0754d58177d5b6ba.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f841bdee90d7ae95296b6d7f1d5f7496ff764c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
