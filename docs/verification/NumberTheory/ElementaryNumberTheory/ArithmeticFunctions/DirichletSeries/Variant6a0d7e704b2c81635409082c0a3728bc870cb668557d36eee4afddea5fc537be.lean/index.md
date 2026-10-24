# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc0b7069c6c63c9c7acd404b311ca2d2b78aba6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc0b7069c6c63c9c7acd404b311ca2d2b78aba6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfPlane](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/halfplane--a2dfa6c743634e6068c7c2d8.md) | 17 | `declaration-track:a2dfa6c743634e6068c7c2d8f23a18beb81f8326e2526d7dc268ca3ff8775c62` |
| 2 | `structure` | [DirichletSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/dirichletseries--7d19be3b3c81887936b88287.md) | 22 | `declaration-track:7d19be3b3c81887936b88287279f3137a423392f75e49499766fa75c38a770ac` |
| 3 | `structure` | [AbsoluteConvergenceCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/absoluteconvergencecertificate--117634413728fca5c52df0aa.md) | 27 | `declaration-track:117634413728fca5c52df0aa5eaee2cfb3f0229860db91b69dda0b1c2e7ebd21` |
| 4 | `structure` | [CauchyProductCertificate](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/cauchyproductcertificate--4c7549c45091b511ca41bb63.md) | 36 | `declaration-track:4c7549c45091b511ca41bb637bc6e1a48563d9f2389f14b61521548b103fedf8` |
| 5 | `theorem` | [absolute_convergence_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/absolute-convergence-sound--29a9a27f1514a7f318fcdce3.md) | 45 | `result-track:29a9a27f1514a7f318fcdce3a957dd75a8e0901db0c1992c31778f1912ef835b` |
| 6 | `theorem` | [cauchy_product_sound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/cauchy-product-sound--07322a0c1092663fd08df8bc.md) | 52 | `result-track:07322a0c1092663fd08df8bc639c7e53f08d668ac70d598a475f1c5e367c9903` |
| 7 | `def` | [DirichletSeriesOwnsConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/dirichletseriesownsconvergence--66378f5e4c720abc0ebff7c8.md) | 63 | `declaration-track:66378f5e4c720abc0ebff7c8a31862059ba837fec8e362d3ded5a90038af3791` |
| 8 | `theorem` | [dirichlet_series_not_convergence_authority](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean/declarations/dirichlet-series-not-convergence-authority--81799954e5f11633d892773c.md) | 67 | `result-track:81799954e5f11633d892773cad32b875c8048c82bd1a2ecfdfa7683e63fd6354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
