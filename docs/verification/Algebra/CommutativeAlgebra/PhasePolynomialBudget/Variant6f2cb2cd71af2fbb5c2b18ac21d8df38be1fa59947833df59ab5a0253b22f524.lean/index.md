# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialBudget.Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "132a90078bf76c23b3e26c4469827dad6e677d80",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `132a90078bf76c23b3e26c4469827dad6e677d80`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Prototype` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/phasepolynomialcoefficient--10756d5453948d7a023df209.md) | 22 | `declaration-track:10756d5453948d7a023df209caccdf36fed37bcb717525d533ea2fd08bbf7b3e` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/phasepolynomialcoefficient-pos--8d43bb9fc37ca4e54125c219.md) | 25 | `result-track:8d43bb9fc37ca4e54125c219759f36229a33f3d8de33f481def1968881a47cfb` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/positivemass-ge-taylor--7d54dfa3bce3015d45c6e553.md) | 30 | `result-track:7d54dfa3bce3015d45c6e5533cd3975f7916b4f61e24cf3e4c64c974d0aabf9d` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/positivemass-gt-polynomial--ce399f0422c5a7a492b2b94f.md) | 44 | `result-track:ce399f0422c5a7a492b2b94f310dc382927fafa6bcbd86f74f4c655f5442612b` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/positivemass-eventually-gt-polynomial--8edab7f33f3e30b4efe579a1.md) | 61 | `result-track:8edab7f33f3e30b4efe579a1d7efbfa731edb43c7a99e51f2a540a1db42e6ac8` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant6f2cb2cd71af2fbb5c2b18ac21d8df38be1fa59947833df59ab5a0253b22f524.lean/declarations/positivemass-not-eventually-polynomial-bounded--587dbfc3a5a4baec8da5d4da.md) | 69 | `result-track:587dbfc3a5a4baec8da5d4da7428f31dbd237297d2ba128e93f5f1f254258bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
