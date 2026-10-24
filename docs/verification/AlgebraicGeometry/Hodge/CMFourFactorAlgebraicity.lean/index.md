# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorAlgebraicity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "268f18efd367104bf8e56cc8f24b452352e9b7a9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `268f18efd367104bf8e56cc8f24b452352e9b7a9`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines`](../../../../mathematics/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent`](../../../../mathematics/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AllConjugatesType22](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/allconjugatestype22--b6289c8d7cdd156dfd4b8329.md) | 40 | `declaration-track:b6289c8d7cdd156dfd4b832959c6abfb7f1fd1f189c4377131482740be98fd41` |
| 2 | `def` | [allConjugatesType22_of_fourBalance](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/allconjugatestype22-of-fourbalance--f7a0c109cb472f7c8bc9d3db.md) | 58 | `declaration-track:f7a0c109cb472f7c8bc9d3db922bd2347e6c1e5c3a2b1f62a8794a116e32edd0` |
| 3 | `structure` | [FourFactorTensorDescentData](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/fourfactortensordescentdata--010cf0c352c48e335a53401e.md) | 74 | `declaration-track:010cf0c352c48e335a53401e79913f5ea1ff294cb15564c37e4ac32df28d1bab` |
| 4 | `theorem` | [FourFactorTensorDescentData.rational_descent](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/fourfactortensordescentdata-rational-descent--345525f3349e919cd54b55e5.md) | 88 | `result-track:345525f3349e919cd54b55e5bbb5a3973e0c74820f25385304a104939ac9c9ec` |
| 5 | `structure` | [RationalFourFactorHodgeWitness](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/rationalfourfactorhodgewitness--1bf76ca0ab6a1d972c59f877.md) | 99 | `declaration-track:1bf76ca0ab6a1d972c59f8771aa8ccac8d561ee20e261226d0fb45b2534c5fc7` |
| 6 | `def` | [FourFactorTensorDescentData.toRationalWitness](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/fourfactortensordescentdata-torationalwitness--412efa9b741c0c0ed0d1c247.md) | 109 | `declaration-track:412efa9b741c0c0ed0d1c247998ed2380f74c8253d59b3ab255bf133d5a87e8a` |
| 7 | `structure` | [AlgebraicCycleWitness](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/algebraiccyclewitness--9e6d0823873a930e3399f52c.md) | 123 | `declaration-track:9e6d0823873a930e3399f52cd92a7fa3442f96f9c5654ce3acd68c1f016ece38` |
| 8 | `structure` | [FourFactorAlgebraicitySupplier](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/fourfactoralgebraicitysupplier--cc88000327f709c046981f41.md) | 138 | `declaration-track:cc88000327f709c046981f41c30df477333bc35ad1aefcd8241bb0ed642eadd6` |
| 9 | `def` | [realizeAlgebraicCycle](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/realizealgebraiccycle--4ba8dc942d1d73133c69069a.md) | 148 | `declaration-track:4ba8dc942d1d73133c69069a05f44d393541fcebcd223cd36b562f61ef01f62e` |
| 10 | `def` | [realizeAlgebraicCycle_of_descentData](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean/declarations/realizealgebraiccycle-of-descentdata--1dc9096be3c62f1cdd67e1ad.md) | 159 | `declaration-track:1dc9096be3c62f1cdd67e1ad5cfea41b3bd8b0124510b3efecdec55820eac876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
