# Verification target: GRWTSK.AlgebraicGeometry.Hodge.RationalSubspaceDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10ffbd317e467321e17e429416b14d0b2edd1744",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10ffbd317e467321e17e429416b14d0b2edd1744`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent`](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AllConjugatesSubspaceWitness](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/declarations/allconjugatessubspacewitness--1bef935b5537db5d6fab2d72.md) | 27 | `declaration-track:1bef935b5537db5d6fab2d721b79e5a2a9ec9770b4d5b1ad01cf47d20eb3ba63` |
| 2 | `theorem` | [AllConjugatesSubspaceWitness.descends](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/declarations/allconjugatessubspacewitness-descends--4f7253b7575396b1e1d9d39b.md) | 37 | `result-track:4f7253b7575396b1e1d9d39bddacc8a2b9950aebfd2e65ed5b1cb843ac10dced` |
| 3 | `structure` | [RationalSubspaceWitness](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/declarations/rationalsubspacewitness--412a76820fb66a381b4a69a5.md) | 47 | `declaration-track:412a76820fb66a381b4a69a58670751c1edc260c8d39c937a523ac5c50581ca7` |
| 4 | `def` | [AllConjugatesSubspaceWitness.toRationalWitness](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/RationalSubspaceDescent.lean/declarations/allconjugatessubspacewitness-torationalwitness--abf9ab8962d458db82afa176.md) | 54 | `declaration-track:abf9ab8962d458db82afa1769509b710f0a34aa729d7d3793f6b799d33363fc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
