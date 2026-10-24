# tensorVector_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89266a8aca0d5a85ea84b4e5a9072a4312ce3aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d69eef00-1667-594f-641e-a4d1aed1b8e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08ad00d7-8822-a840-f902-bbc7e94ef6ce",
  "kind": "theorem",
  "lexical_name": "tensorVector_norm_sq",
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
  "slug": "tensorvector-norm-sq--af0a755407c26092227abf38",
  "source": {
    "blob": "89266a8aca0d5a85ea84b4e5a9072a4312ce3aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0a755407c26092227abf38aab6cfcd37c8eaccc0aeb0c3b4cdfa17232089ac",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ad00d7-8822-a840-f902-bbc7e94ef6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorVector_norm_sq
    (left : FiniteHilbert Left) (right : FiniteHilbert Right) :
    ‖tensorVector left right‖ ^ 2 = ‖left‖ ^ 2 * ‖right‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq,
    EuclideanSpace.norm_sq_eq]
  simp_rw [tensorVector_apply, norm_mul, mul_pow]
  rw [Fintype.sum_prod_type]
  simp only []
  rw [← Fintype.sum_mul_sum]

/-- Tensoring unit vectors gives a unit vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89266a8aca0d5a85ea84b4e5a9072a4312ce3aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
