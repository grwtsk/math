# slope_of_Y_ne_eq_evalEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6716181c817363552d3c7a08e54663163a935b5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4cbbecd-35fe-37c4-0db2-1b8387bf5346",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ef77c19-1142-b243-9654-deab04e1b765",
  "kind": "lemma",
  "lexical_name": "slope_of_Y_ne_eq_evalEval",
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
  "slug": "slope-of-y-ne-eq-evaleval--52f9586996c45fc56b16364d",
  "source": {
    "blob": "6716181c817363552d3c7a08e54663163a935b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f9586996c45fc56b16364dbdeb8a2931c92f4f5d0e59f40bc0e74ca96c4369",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef77c19-1142-b243-9654-deab04e1b765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma slope_of_Y_ne_eq_evalEval {x₁ x₂ y₁ y₂ : F} (hx : x₁ = x₂) (hy : y₁ ≠ W.negY x₂ y₂) :
    W.slope x₁ x₂ y₁ y₂ = -W.polynomialX.evalEval x₁ y₁ / W.polynomialY.evalEval x₁ y₁ := by
  rw [slope_of_Y_ne hx hy, evalEval_polynomialX, neg_sub]
  congr 1
  rw [negY, evalEval_polynomialY]
  ring1

@[deprecated (since := "2025-03-05")] alias slope_of_Y_ne_eq_eval := slope_of_Y_ne_eq_evalEval

/-! ## Addition formulae in affine coordinates -/

variable (W') in
/-- The addition polynomial obtained by substituting the line `Y = ℓ(X - x) + y` into the polynomial
`W(X, Y)` associated to a Weierstrass curve `W`. If such a line intersects `W` at another
nonsingular affine point `(x', y')` on `W`, then the roots of this polynomial are precisely `x`,
`x'`, and the `X`-coordinate of the addition of `(x, y)` and `(x', y')`.

This depends on `W`, and has argument order: `x`, `y`, `ℓ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716181c817363552d3c7a08e54663163a935b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
