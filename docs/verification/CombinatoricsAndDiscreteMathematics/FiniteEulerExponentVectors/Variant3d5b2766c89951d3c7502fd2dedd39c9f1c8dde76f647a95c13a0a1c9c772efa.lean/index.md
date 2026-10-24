# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerExponentVectors.Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a6720731a3e5409cd5549da583b90e404e223e9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a6720731a3e5409cd5549da583b90e404e223e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExponentVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/exponentvector--ce675931cd739eb968ea7d08.md) | 24 | `declaration-track:ce675931cd739eb968ea7d08a33933c193492cfe1d1e66756c017751b08cfb25` |
| 2 | `instance` | [exponentVectorFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/exponentvectorfintype--8820706815cf143ab397f722.md) | 29 | `declaration-track:8820706815cf143ab397f722baa26cf31d76cc08390c75bab41e6150c1177a05` |
| 3 | `instance` | [exponentVectorDecidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/exponentvectordecidableeq--824656bf60006a422b6bc901.md) | 36 | `declaration-track:824656bf60006a422b6bc90105da71eb4d06a5aec01f8c147b2061e103ed5d55` |
| 4 | `def` | [exponentVectorWeightReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/exponentvectorweightreal--e655f36bb7faaca31b3fe25a.md) | 43 | `declaration-track:e655f36bb7faaca31b3fe25aa1cda24f50dbe37c551994df1bba73e21fa29397` |
| 5 | `theorem` | [finiteZetaEulerFactorReal_eq_fin_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/finitezetaeulerfactorreal-eq-fin-sum--04d6e5d9b652c9882a532816.md) | 51 | `result-track:04d6e5d9b652c9882a53281658c38ac4633fa731abdb9771d49d1d6ac818398a` |
| 6 | `theorem` | [finite_product_sum_expansion_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/finite-product-sum-expansion-subtype--62e21f4df9825d1eb209d7a4.md) | 60 | `result-track:62e21f4df9825d1eb209d7a40af587d8812f8cf8885901c5495f79a4d47cdcf4` |
| 7 | `theorem` | [finiteZetaEulerProductReal_expands_exponent_vectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/declarations/finitezetaeulerproductreal-expands-exponent-vectors--aff69d08676a4b5cc785f20a.md) | 84 | `result-track:aff69d08676a4b5cc785f20a12e998f61dae0d3655765ffd3a93a6532d6756e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
