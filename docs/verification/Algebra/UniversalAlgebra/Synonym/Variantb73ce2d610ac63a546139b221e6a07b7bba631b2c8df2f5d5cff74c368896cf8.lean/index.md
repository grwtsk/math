# Verification target: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c39fc07efd6885963d2a7e97ac715e1610848e34",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c39fc07efd6885963d2a7e97ac715e1610848e34`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Synonym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instsmulwithzero--4da3da8d86b2249533e9e0c9.md) | 34 | `declaration-track:4da3da8d86b2249533e9e0c9e046fa3b30d60c9e9e4bc8cb2f2afdfb0c4f3337` |
| 2 | `instance` | [instSMulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instsmulwithzero--7618de23ab31a706ca94bba5.md) | 37 | `declaration-track:7618de23ab31a706ca94bba5d6213ed6f3fa6af3e5dd994978a72bd9e2405e6d` |
| 3 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribsmul--c1d88c5b7c19ec488566567b.md) | 40 | `declaration-track:c1d88c5b7c19ec488566567bdf4b13e288c1fc0c87ed1f9e7f52120881a64eec` |
| 4 | `instance` | [instDistribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribsmul--b7e9300a9383f328e0fd69ac.md) | 43 | `declaration-track:b7e9300a9383f328e0fd69acd84aabb0cd906f6c5c8b2927488e204fa3fb1b5b` |
| 5 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribmulaction--bf506eac968a26cb10478fb6.md) | 46 | `declaration-track:bf506eac968a26cb10478fb6577a93be7f3d10d8ccd442e9525f696d09edd058` |
| 6 | `instance` | [instDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribmulaction--7779d83fd5a8b7deb8b2fecb.md) | 49 | `declaration-track:7779d83fd5a8b7deb8b2fecb657f52c76bfa253fa49512b56c63803ea9114de2` |
| 7 | `instance` | [instMulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instmulactionwithzero--b526b71459079383ae451d10.md) | 52 | `declaration-track:b526b71459079383ae451d1004d93fb9022d768975b7eb3cd12e0f2203220c33` |
| 8 | `instance` | [instMulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instmulactionwithzero--0ee46de7117d7352494912a9.md) | 55 | `declaration-track:0ee46de7117d7352494912a9792473ba48276f35eaa2cc1bd9aae9124fe6b63d` |
| 9 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instsmulwithzero--e371b7822dc3d7a379d7bba1.md) | 62 | `declaration-track:e371b7822dc3d7a379d7bba15edf5f03d540a25465220ca5594d670955fa2da5` |
| 10 | `instance` | [instSMulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instsmulwithzero--f2621dc00002080713bfef2f.md) | 65 | `declaration-track:f2621dc00002080713bfef2ff9caeb6321a6b4a6a2c0f8f4accc3ed3fa299b3b` |
| 11 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribsmul--b053132ead251c3da66f8e5d.md) | 68 | `declaration-track:b053132ead251c3da66f8e5ddd3a02a5944036b2da8480e732f456ce6ff815ef` |
| 12 | `instance` | [instDistribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribsmul--77ca3952ebdc72004f471efb.md) | 71 | `declaration-track:77ca3952ebdc72004f471efb617c5429a58d38535f47ae88aedf2d8b088c39c0` |
| 13 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribmulaction--c3fa7c37929e8b8320e53017.md) | 74 | `declaration-track:c3fa7c37929e8b8320e53017eb3abe8414db7200e498179112189da4d1a75e8b` |
| 14 | `instance` | [instDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instdistribmulaction--2d161559e7ee2380be5bc4fc.md) | 77 | `declaration-track:2d161559e7ee2380be5bc4fcd2e1be4ad64072797f5f7204ffd3d99caa36bd53` |
| 15 | `instance` | [instMulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instmulactionwithzero--57dc53dab4711a6b22dcac65.md) | 80 | `declaration-track:57dc53dab4711a6b22dcac65aeb595b72fec458258dc7483509ee1d28778145a` |
| 16 | `instance` | [instMulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/declarations/instmulactionwithzero--a0219ff6ad2c0aecceae134a.md) | 83 | `declaration-track:a0219ff6ad2c0aecceae134aace34aa790e3bdf837280307cc48e5b1db2b9f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
