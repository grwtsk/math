# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1a951e737900424bbc55a2cffd05834ba51301d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1a951e737900424bbc55a2cffd05834ba51301d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AnalyticWithinAt.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticwithinat-aeval-polynomial--43ab02ab229a404017a81f9d.md) | 26 | `result-track:43ab02ab229a404017a81f9d190a4bee75103f7ab7e40aed3f559de2bce7b865` |
| 2 | `theorem` | [AnalyticAt.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticat-aeval-polynomial--0088738d71d0e4517c618288.md) | 34 | `result-track:0088738d71d0e4517c618288a0089f52e67391182395e3f42926ef02c3ecf9f9` |
| 3 | `theorem` | [AnalyticOnNhd.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-aeval-polynomial--c7447321a7fb501db9d06b32.md) | 39 | `result-track:c7447321a7fb501db9d06b32074f856d4b2f1feb9d9cd95d597ff7b71c8d4030` |
| 4 | `theorem` | [AnalyticOn.aeval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticon-aeval-polynomial--25e74ab66e3ae69b1722a76b.md) | 42 | `result-track:25e74ab66e3ae69b1722a76b3eadff1a7cd833dfe64cf9fbaecd27d50feea307` |
| 5 | `theorem` | [AnalyticOnNhd.eval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-polynomial--00a7e22e979cb34b2ededf38.md) | 45 | `result-track:00a7e22e979cb34b2ededf3826dd7414309b793e9894675c2a31aa513cdf9eb9` |
| 6 | `theorem` | [AnalyticOn.eval_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticon-eval-polynomial--268e65cd3b6fd0f33da63710.md) | 48 | `result-track:268e65cd3b6fd0f33da637108e99dfc06b958cf1cc43af3158c8953c3d387ed8` |
| 7 | `theorem` | [AnalyticAt.aeval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticat-aeval-mvpolynomial--bbeb1593d59a17a80d79a15e.md) | 58 | `result-track:bbeb1593d59a17a80d79a15ebcb662ab0d9d1dff3bad81e7bb30ad2a59235f16` |
| 8 | `theorem` | [AnalyticOnNhd.aeval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-aeval-mvpolynomial--b1a01a9c80d361cd153f25dc.md) | 65 | `result-track:b1a01a9c80d361cd153f25dc392051214dfc0b2bbe683134f26c5edd9efe7fe8` |
| 9 | `theorem` | [AnalyticOnNhd.eval_continuousLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-continuouslinearmap--ee8b7f5c758462a346549924.md) | 69 | `result-track:ee8b7f5c758462a346549924b06009141ac9cb0b017df76f057ba80594ef2b9e` |
| 10 | `theorem` | [AnalyticOnNhd.eval_continuousLinearMap'](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-continuouslinearmap--17c648476db1311ad0654677.md) | 73 | `result-track:17c648476db1311ad065467795ec2a59c74973328dabfd83882c2248caafdbf3` |
| 11 | `theorem` | [AnalyticOnNhd.eval_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-linearmap--11b7ab2fb88630a40c66931d.md) | 79 | `result-track:11b7ab2fb88630a40c66931dc640470859f17ac235e8202d71a4c4a420fd727d` |
| 12 | `theorem` | [AnalyticOnNhd.eval_linearMap'](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-linearmap--ff3bbb78cdb43ba4ac414ea6.md) | 83 | `result-track:ff3bbb78cdb43ba4ac414ea694fd340cb841f956ce707f905029b0eaad142aa4` |
| 13 | `theorem` | [AnalyticOnNhd.eval_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8f87a097b7c8af44e5995d3b3ddb8346a8e291d7d1bda4585d0e80552340d4bc.lean/declarations/analyticonnhd-eval-mvpolynomial--37f68a2eb124190d2bc1c5cd.md) | 86 | `result-track:37f68a2eb124190d2bc1c5cdbf2f1319610d1e96022c696fea58c7cae31d36b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
