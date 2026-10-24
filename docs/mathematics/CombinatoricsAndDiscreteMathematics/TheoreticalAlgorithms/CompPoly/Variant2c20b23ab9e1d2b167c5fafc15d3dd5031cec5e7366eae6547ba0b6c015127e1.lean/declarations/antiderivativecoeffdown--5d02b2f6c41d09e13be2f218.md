# antiderivativeCoeffDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d26ff7b85145190493643cf88a6391df9d4d7e3ee08efca4c6d18f0695e5d50",
  "kind": "def",
  "lexical_name": "antiderivativeCoeffDown",
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
  "slug": "antiderivativecoeffdown--5d02b2f6c41d09e13be2f218",
  "source": {
    "blob": "9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d02b2f6c41d09e13be2f218271bdc04b710e2b47d0bcdd4de3cc931ff402ba1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d26ff7b85145190493643cf88a6391df9d4d7e3ee08efca4c6d18f0695e5d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def antiderivativeCoeffDown (c : Dy) (i : ℕ) (prec : Int) : Dy :=
  -- c / (i+1), rounding down
  let num := c
  let _denom := LeanCert.Core.Dyadic.ofInt (i + 1 : Int)
  -- Compute as Dyadic: c * (1/(i+1)) ≈ c.mantissa * 2^c.exponent / (i+1)
  -- Rounding down: use shiftDown on the result
  let result := LeanCert.Core.Dyadic.mul num (LeanCert.Core.Dyadic.ofInt 1)  -- just c
  -- Actually divide mantissa by (i+1)
  let newMantissa := result.mantissa / (i + 1 : Int)
  LeanCert.Core.Dyadic.shiftDown ⟨newMantissa, result.exponent⟩ prec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
