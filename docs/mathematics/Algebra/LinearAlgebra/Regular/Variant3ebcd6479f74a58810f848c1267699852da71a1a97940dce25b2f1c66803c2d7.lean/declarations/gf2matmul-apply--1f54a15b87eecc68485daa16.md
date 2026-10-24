# gf2MatMul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3d68b3e45981d8f9dfe1cd423370b25fa42385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:107945f5-b492-3a8c-3a18-bab309114255",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49634e69-019e-ae39-a2a7-9fe6e9b57bd3",
  "kind": "theorem",
  "lexical_name": "gf2MatMul_apply",
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
  "slug": "gf2matmul-apply--1f54a15b87eecc68485daa16",
  "source": {
    "blob": "ab3d68b3e45981d8f9dfe1cd423370b25fa42385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f54a15b87eecc68485daa16646f929d9d7947e6d006b63a72f2e95f7ac99208",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49634e69-019e-ae39-a2a7-9fe6e9b57bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gf2MatMul_apply (A B : BitMatrix r r) (i j : Fin r) :
    boolGF2Equiv (gf2MatMul A B i j) =
      ∑ k, boolGF2Equiv (A i k) * boolGF2Equiv (B k j) := by
  calc
    boolGF2Equiv (gf2MatMul A B i j) =
        boolMatrixGF2Equiv r r (gf2MatMul A B) i j :=
      (boolMatrixGF2Equiv_apply (gf2MatMul A B) i j).symm
    _ = (boolMatrixGF2Equiv r r A * boolMatrixGF2Equiv r r B) i j := by
      rw [show boolMatrixGF2Equiv r r (gf2MatMul A B) =
          boolMatrixGF2Equiv r r A * boolMatrixGF2Equiv r r B by
        simp [gf2MatMul]]
    _ = ∑ k, boolGF2Equiv (A i k) * boolGF2Equiv (B k j) := by
      simp [Matrix.mul_apply]

/-! ## Left regular representation -/

variable {F : Type u} [Field F] [Algebra GF2 F]

/-- Left multiplication by `a` as a `GF2`-linear endomorphism of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3d68b3e45981d8f9dfe1cd423370b25fa42385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
