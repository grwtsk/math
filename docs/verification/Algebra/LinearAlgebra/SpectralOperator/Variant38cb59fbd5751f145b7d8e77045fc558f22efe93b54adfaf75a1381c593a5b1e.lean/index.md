# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralOperator.Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce081495ce84f018bbc93e30f8511df8ce3b237",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce081495ce84f018bbc93e30f8511df8ce3b237`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.ConnesBitfield.System` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitfieldOperatorExpansion](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/bitfieldoperatorexpansion--688c915c0270745e0d23e506.md) | 24 | `declaration-track:688c915c0270745e0d23e5065a5e0b6c0bcaf827c66800c0e543566b6a6e707f` |
| 2 | `def` | [BitfieldOperatorExpansion.operator](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/bitfieldoperatorexpansion-operator--e3aeed0d10cc397e4cb09f6d.md) | 38 | `declaration-track:e3aeed0d10cc397e4cb09f6de0656894260175baa257b64b43f9f090711afbe1` |
| 3 | `structure` | [BitfieldSpectralOperator](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/bitfieldspectraloperator--c902770011e1ed15c9d1778c.md) | 49 | `declaration-track:c902770011e1ed15c9d1778cbc8f2b5742157aca7d859ef15ed67c6e62cdd606` |
| 4 | `structure` | [BitfieldOperatorRealization](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/bitfieldoperatorrealization--a229bb0994a251ecfebe88ce.md) | 70 | `declaration-track:a229bb0994a251ecfebe88cec307fa070a6700af69dbd0e537e80d2be5427e81` |
| 5 | `def` | [operatorEnsembleExpectation](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/operatorensembleexpectation--8463d7d81f68648444fd3c21.md) | 81 | `declaration-track:8463d7d81f68648444fd3c21d10ab62b101f52fcec893c7fec042502388390b4` |
| 6 | `def` | [spectralParameter](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/spectralparameter--00f811f195de3fd9a297d0ba.md) | 91 | `declaration-track:00f811f195de3fd9a297d0bab0011feb9b287a5557ef9c257ea77da094f12f72` |
| 7 | `theorem` | [spectralParameter_realPart](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/spectralparameter-realpart--05cf169f3381132a7014b227.md) | 94 | `result-track:05cf169f3381132a7014b2271987464d184a30ffe23762abbd2d87336e5c8ccb` |
| 8 | `theorem` | [spectralParameter_neg](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/spectralparameter-neg--4f1dedb539c1db98a7908b07.md) | 103 | `result-track:4f1dedb539c1db98a7908b076c760e2bb738a69764f39366c201d55406bfc971` |
| 9 | `theorem` | [spectralParameter_neg_eq_one_sub](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/spectralparameter-neg-eq-one-sub--e5167dcbac846dfd8c265d30.md) | 110 | `result-track:e5167dcbac846dfd8c265d307af46d493f866c587f5ca801cff03eba9e9d3f56` |
| 10 | `theorem` | [spectralParameter_functional_fixed](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/spectralparameter-functional-fixed--3ab01b40c0b1833babd07fbb.md) | 121 | `result-track:3ab01b40c0b1833babd07fbbbc39d29aa86ad171e80f864247da3cbfc8194a48` |
| 11 | `def` | [finiteSpectralDeterminant](../../../../../mathematics/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/declarations/finitespectraldeterminant--853d3049000e0cb4956cdf8e.md) | 128 | `declaration-track:853d3049000e0cb4956cdf8e8294a31e49ffcdf4c4f225f7d9100593b5a8c6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
