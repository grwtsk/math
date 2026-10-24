# reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus

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
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37e97ce0-f9c0-d816-5f5b-fef00d922c5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f588b28d-5f73-af26-5e7e-69bc4f084f7f",
  "kind": "theorem",
  "lexical_name": "reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus",
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
  "slug": "reducedfeshbachpolynomialequationideal-eq-vanishingideal-zerolocus--b81c607aa25f0f176c76092a",
  "source": {
    "blob": "9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 254,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b81c607aa25f0f176c76092a5234e1bc0f48a758e6f11a616a224a5151ce9efc",
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

Occurrence: `result:f588b28d-5f73-af26-5e7e-69bc4f084f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
    [IsAlgClosed K] [Fintype ι] [DecidableEq κ]
    (A : Matrix ι ι K) (U : Matrix ι κ K) (C : Matrix κ ι K)
    (B : Matrix κ κ K) [Invertible B] :
    reducedFeshbachPolynomialEquationIdeal A U C B =
      MvPolynomial.vanishingIdeal K
        (MvPolynomial.zeroLocus K (reducedFeshbachPolynomialEquationIdeal A U C B)) := by
  have heq : feshbachPolynomialEquationIdeal A U C B =
      reducedFeshbachPolynomialEquationIdeal A U C B :=
    feshbach_polynomial_equationIdeal_eq A U C B
  rw [← heq]
  exact feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus A U C B

/-- The origin solves this homogeneous full polynomial system over every field.
This is an existence statement only for the defined finite linear system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantec01805cd9592f0594f8e917ddbdedaf6ba80552114d91ec73e944b573a2cacf.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9072c7b6c2aefd9ed36033c905a7ce4fbb5ad545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
