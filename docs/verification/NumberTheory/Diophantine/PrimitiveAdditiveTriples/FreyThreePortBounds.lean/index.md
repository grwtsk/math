# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "becae935ce2f0f952cd11851aa75141b8674c2fe",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `becae935ce2f0f952cd11851aa75141b8674c2fe`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freyMaxNorm2](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/freymaxnorm2--94d98c6d98ba616d635ede72.md) | 15 | `declaration-track:94d98c6d98ba616d635ede72e8d29cd08d9e70c3dbfafd17590e5a87959cc6ea` |
| 2 | `def` | [freyMaxNorm3](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/freymaxnorm3--845268a4bd4c2a412ff2be4c.md) | 19 | `declaration-track:845268a4bd4c2a412ff2be4cca3dff20b9334e51314bc7be235d1f904183bb2d` |
| 3 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_norm_lower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/primitiveadditivetriple-freyaffineporteval-norm-lower--e9fd5dcea3cc72a90bd35ae6.md) | 25 | `result-track:e9fd5dcea3cc72a90bd35ae6955a65589734b53c6681c0a859b7c7817f03fac0` |
| 4 | `theorem` | [freyThreePort_commonDivisor_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/freythreeport-commondivisor-iff--e9a381c7181bac7c297199f9.md) | 62 | `result-track:e9a381c7181bac7c297199f9d75bd6dda93712217dccf31ff9f779cb90344db5` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.threePort_commonDivisor_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/primitiveadditivetriple-threeport-commondivisor-iff--be5f9e4f764dcad3af106bc2.md) | 86 | `result-track:be5f9e4f764dcad3af106bc2a9278f23212516e93849d6feb3590791bbc578b6` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_x_norm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/primitiveadditivetriple-freyaffineporteval-x-norm--b78854b2164c650884a1dbf9.md) | 92 | `result-track:b78854b2164c650884a1dbf9c1725a8831d206378e8b0746bf283ed4a0b6683d` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_x_size_comparison](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/primitiveadditivetriple-freyaffineporteval-x-size-comparison--34e4c1e2b55ecb5715ced34f.md) | 106 | `result-track:34e4c1e2b55ecb5715ced34fa4e1323d47d1567a0af29f085d16f872e000f138` |
| 8 | `def` | [freyBoundFixture235](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/freyboundfixture235--f81e4fb39273a22c074c52ec.md) | 122 | `declaration-track:f81e4fb39273a22c074c52ec767e6fc1b97f7016f1481c6312e596132f224dd4` |
| 9 | `theorem` | [freyBoundFixture235_x_norm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/declarations/freyboundfixture235-x-norm--61e3f3ecc9daa22c7f5698dd.md) | 132 | `result-track:61e3f3ecc9daa22c7f5698ddad56441561f59b57ae117431c86ad5ae726a4f04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
