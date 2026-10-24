# mul_single_apply_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:611afa62-ea29-e3da-db49-7b8303571bcf",
  "kind": "theorem",
  "lexical_name": "mul_single_apply_of_ne",
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
  "slug": "mul-single-apply-of-ne--d97f25a6092fd4e83802cf01",
  "source": {
    "blob": "07957742821bda64244649c77b9328c2578e56c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 280,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d97f25a6092fd4e83802cf01f68f0f45099e4dfab4490bcc8591d0eaaf06f6f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:611afa62-ea29-e3da-db49-7b8303571bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_single_apply_of_ne (i : m) (j : n) (a : l) (b : n) (hbj : b ≠ j) (M : Matrix l m α) :
    (M * single i j c) a b = 0 := by simp [mul_apply, hbj.symm]

@[deprecated (since := "2025-05-05")]
alias StdBasisMatrix.mul_right_apply_of_ne := mul_single_apply_of_ne

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07957742821bda64244649c77b9328c2578e56c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
