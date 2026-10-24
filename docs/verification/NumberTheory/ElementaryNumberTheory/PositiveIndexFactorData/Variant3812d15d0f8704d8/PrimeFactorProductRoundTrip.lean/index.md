# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8.PrimeFactorProductRoundTrip

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b71eb946913080c87de7530d0509c267c339ff8c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b71eb946913080c87de7530d0509c267c339ff8c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.FundamentalTheorem` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8.PositiveIndexData`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PositiveIndexData.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorTreeLayerIndex.factorMap](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/declarations/factortreelayerindex-factormap--88392fd49da7a1a4af40635f.md) | 39 | `declaration-track:88392fd49da7a1a4af40635fc5657f4b2dce4b9e2b04a183d14a5b3b8640a51c` |
| 2 | `theorem` | [factorTreeLayerIndex_decodes](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/declarations/factortreelayerindex-decodes--4af6b55eb316993646eaad76.md) | 44 | `result-track:4af6b55eb316993646eaad76d201da1ec4f2df592bb023a424c76ca137af1547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
