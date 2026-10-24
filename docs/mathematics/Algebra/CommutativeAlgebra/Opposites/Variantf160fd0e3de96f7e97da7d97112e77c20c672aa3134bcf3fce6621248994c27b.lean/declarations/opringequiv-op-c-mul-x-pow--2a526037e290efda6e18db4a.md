# opRingEquiv_op_C_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13eab19e5f3ce9134b9e5398a21dd0d70ec6da60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd2c7b54-9fc2-0edb-bcce-1dbf1f8236a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2605fa4c-b5ef-93ec-de39-cab7cee05e85",
  "kind": "theorem",
  "lexical_name": "opRingEquiv_op_C_mul_X_pow",
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
  "slug": "opringequiv-op-c-mul-x-pow--2a526037e290efda6e18db4a",
  "source": {
    "blob": "13eab19e5f3ce9134b9e5398a21dd0d70ec6da60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a526037e290efda6e18db4a7f96e8fb5560991fd13e6c9df4042466ad10bf49",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2605fa4c-b5ef-93ec-de39-cab7cee05e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opRingEquiv_op_C_mul_X_pow (r : R) (n : ℕ) :
    opRingEquiv R (op (C r * X ^ n : R[X])) = C (op r) * X ^ n := by
  simp only [X_pow_mul, op_mul, op_pow, map_mul, map_pow, opRingEquiv_op_X, opRingEquiv_op_C]

/-!  Lemmas to get started, using `(opRingEquiv R).symm` on the various expressions of
`Finsupp.single`: `monomial`, `C a`, `X`, `C a * X ^ n`. -/


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eab19e5f3ce9134b9e5398a21dd0d70ec6da60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
