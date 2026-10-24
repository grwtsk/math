# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntPolynomial.Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcd16ec9e5c76428535f777a459ffabfcf980ac6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcd16ec9e5c76428535f777a459ffabfcf980ac6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polynomial.int](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/polynomial-int--442f07e640ee50930766adcb.md) | 35 | `declaration-track:442f07e640ee50930766adcb9ea0d1e23d045e53074cfb028f082e50ae5078b0` |
| 2 | `theorem` | [int_coeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/int-coeff-eq--90b330e4e72d6a8359902c06.md) | 47 | `result-track:90b330e4e72d6a8359902c0677b5d151b7f614f2159c07f55b8d6614efbaa3a6` |
| 3 | `theorem` | [int_leadingCoeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/int-leadingcoeff-eq--b3ad69baecccc100557a5b60.md) | 50 | `result-track:b3ad69baecccc100557a5b60507f3dae5ce9f91c4b589b588e0d5c6cd0003b2f` |
| 4 | `theorem` | [int_monic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/int-monic-iff--e65b1be0c7292468a1bd561b.md) | 53 | `result-track:e65b1be0c7292468a1bd561b0cca1bf78af5cddae21ea0399bd1bbf8635c2cc3` |
| 5 | `theorem` | [int_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/int-natdegree--1b4b117019649048d5c97620.md) | 57 | `result-track:1b4b117019649048d5c9762028ba5379eeb9ee00a0603bd095fbe9e20177acc6` |
| 6 | `theorem` | [int_eval₂_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IntPolynomial/Variantcd220c7b229a13f78f94d5392c5dc7f507e471c805b483f043d743cbc0ca22b1.lean/declarations/int-eval-eq--27d24008d2352a575de8e509.md) | 62 | `result-track:27d24008d2352a575de8e509dc347128fd7572f785e129d3190f7b1faf4298ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
