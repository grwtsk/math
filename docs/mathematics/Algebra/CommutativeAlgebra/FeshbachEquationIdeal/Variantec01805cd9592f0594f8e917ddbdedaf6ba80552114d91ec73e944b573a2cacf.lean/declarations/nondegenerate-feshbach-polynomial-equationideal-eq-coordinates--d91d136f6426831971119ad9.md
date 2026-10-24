# nondegenerate_feshbach_polynomial_equationIdeal_eq_coordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2263b753-2e52-fb89-92a0-1594d7b8d0b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54d2e95c-f1a0-c4af-c315-314b14a8d1ca",
  "kind": "theorem",
  "lexical_name": "nondegenerate_feshbach_polynomial_equationIdeal_eq_coordinates",
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
  "slug": "nondegenerate-feshbach-polynomial-equationideal-eq-coordinates--d91d136f6426831971119ad9",
  "source": {
    "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 295,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91d136f6426831971119ad9ec21f5713181a6e98772a188c85fc91e09b1ea49",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54d2e95c-f1a0-c4af-c315-314b14a8d1ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nondegenerate_feshbach_polynomial_equationIdeal_eq_coordinates
    [Fintype ι] [DecidableEq ι] [DecidableEq κ]
    (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) [Invertible B] [Invertible (Feshbach.schur A U C B)] :
    blockEquationIdeal
        ((A.map (MvPolynomial.C : R →+* MvPolynomial (ι ⊕ κ) R)).mulVec
            (fun i ↦ MvPolynomial.X (Sum.inl i)) +
          (U.map MvPolynomial.C).mulVec (fun j ↦ MvPolynomial.X (Sum.inr j)))
        ((C.map MvPolynomial.C).mulVec (fun i ↦ MvPolynomial.X (Sum.inl i)) +
          (B.map MvPolynomial.C).mulVec (fun j ↦ MvPolynomial.X (Sum.inr j))) =
      blockEquationIdeal
        (fun i ↦ (MvPolynomial.X (Sum.inl i) : MvPolynomial (ι ⊕ κ) R))
        (fun j ↦ MvPolynomial.X (Sum.inr j)) := by
  let f : R →+* MvPolynomial (ι ⊕ κ) R := MvPolynomial.C
  let : Invertible ((Feshbach.schur A U C B).map f) :=
    Invertible.map f.mapMatrix (Feshbach.schur A U C B)
  rw [feshbach_polynomial_equationIdeal_eq]
  rw [blockEquationIdeal_mulVec_left]
  simp only [Matrix.mulVec_mulVec]
  exact blockEquationIdeal_add_mulVec_right _ _ _

omit [Fintype κ] in
/-- The ideal of all coordinate variables is exactly the kernel of the constant
coefficient homomorphism. This records ideal equality, not a zero-locus claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
