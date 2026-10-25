# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ReducedProduct.Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36d237243ba4791c956bfa2f6d12edb9dc9a6c19",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36d237243ba4791c956bfa2f6d12edb9dc9a6c19`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountableInter` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReducedOrdinalLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedordinallt--fb34216d90084d668c126c1c.md) | 21 | `declaration-track:fb34216d90084d668c126c1cbee0e94c8d3349a59734785cb43992ba4c8963f6` |
| 2 | `theorem` | [reducedOrdinalLT_wellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedordinallt-wellfounded--6230a40c4b99ebbe2a7503f0.md) | 25 | `result-track:6230a40c4b99ebbe2a7503f05d8f887aacffe6900d72ad7fab1b2449cabca59a` |
| 3 | `theorem` | [reducedOrdinalLT_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedordinallt-congr--e934c313c6c4aa9e2c86822b.md) | 36 | `result-track:e934c313c6c4aa9e2c86822b50ec7d7ee4334a84933199f4a652842cf77e599e` |
| 4 | `def` | [reducedOrdinalSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedordinalsetoid--c352097c473cc32c2f5c26b8.md) | 48 | `declaration-track:c352097c473cc32c2f5c26b861297a63c25eb5791dd3c867404206dc2e8e0efb` |
| 5 | `abbrev` | [ReducedOrdinalProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedordinalproduct--229738592ae3edfa2559c626.md) | 54 | `declaration-track:229738592ae3edfa2559c626869ec5fdbdf5ceafb9d4027df2bed7a68a30b674` |
| 6 | `def` | [ReducedProductLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedproductlt--ac99b2700ff3435f8ccbaece.md) | 58 | `declaration-track:ac99b2700ff3435f8ccbaeceeabbde083d2d411f4e572187c34d86e5eb16d672` |
| 7 | `theorem` | [reducedProductLT_wellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/ReducedProduct/Variant06f8ee2f990672d3411f7ec431069db5dedb93251f6aeb16f866d04a57e7c856.lean/declarations/reducedproductlt-wellfounded--767cedba52121a6159aa1529.md) | 65 | `result-track:767cedba52121a6159aa15291f59ae40dd4d8459262642cb89b7e69fb8c1fa22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
