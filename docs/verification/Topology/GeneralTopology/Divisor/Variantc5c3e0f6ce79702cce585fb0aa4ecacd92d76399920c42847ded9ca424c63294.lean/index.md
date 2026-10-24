# Verification target: GRWTSK.Topology.GeneralTopology.Divisor.Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "507efea28ee514d9c1202a5f23c09e192048c30b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `507efea28ee514d9c1202a5f23c09e192048c30b`.

Source path: `GRWTSK/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisor](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor--211f82684e3381c6a24eefa8.md) | 42 | `declaration-track:211f82684e3381c6a24eefa8262130fa2f56ddf38e89b45de1062c30df492144` |
| 2 | `theorem` | [divisor_def](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-def--1638798386238b59f1f34f82.md) | 63 | `result-track:1638798386238b59f1f34f825cbc4894cba212b5146e25d41d4ba5ef5b0ab12d` |
| 3 | `lemma` | [divisor_apply](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-apply--183b44901a507d078bd2a89d.md) | 72 | `result-track:183b44901a507d078bd2a89dfb06ced6a50f001406e8cd4015713d0585adc4f2` |
| 4 | `theorem` | [divisor_congr_codiscreteWithin_of_eqOn_compl](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-congr-codiscretewithin-of-eqon-compl--167b554695f23ac7158997b6.md) | 83 | `result-track:167b554695f23ac7158997b6ec59fbcefece90ed910ead683f844c1e3c7e210d` |
| 5 | `theorem` | [divisor_congr_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-congr-codiscretewithin--714e06c9097af838425a306b.md) | 102 | `result-track:714e06c9097af838425a306b5d1ca45e724d1fd7837ae16dbd3360b1349797c3` |
| 6 | `theorem` | [AnalyticOnNhd.divisor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/analyticonnhd-divisor-nonneg--9fbf32362b98eec80851ba74.md) | 125 | `result-track:9fbf32362b98eec80851ba74c3714179c072160ee0137176ae627aec71fdc75b` |
| 7 | `theorem` | [divisor_smul](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-smul--86d111d62a0b684ac22a941b.md) | 144 | `result-track:86d111d62a0b684ac22a941bf512cc60d2b7b8d565071a72e66705ae53574d33` |
| 8 | `theorem` | [divisor_mul](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-mul--8695c66936f03aebc718eb0e.md) | 164 | `result-track:8695c66936f03aebc718eb0e26f6a1e00bd92c6741e90a282c26b47c2bd6cbf5` |
| 9 | `theorem` | [divisor_inv](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-inv--5157f5a546869ec6d3e0c2ae.md) | 172 | `result-track:5157f5a546869ec6d3e0c2aec1b35fae5005eaae17a3bd6fb20d32480829589e` |
| 10 | `theorem` | [divisor_restrict](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/divisor-restrict--8af30ac1cc4f32ae4d2f41ec.md) | 183 | `result-track:8af30ac1cc4f32ae4d2f41ec33b0440000e86ba544863a71d2cd824036313a57` |
| 11 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_right](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/negpart-divisor-add-of-analyticnhdon-right--e4dac2cac8a3ff6ce01e73d9.md) | 192 | `result-track:e4dac2cac8a3ff6ce01e73d9273b8d0061c02bbd3336811ef288424a87db8d5b` |
| 12 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_left](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/declarations/negpart-divisor-add-of-analyticnhdon-left--dce7c7841cbb1f94f445b4d5.md) | 214 | `result-track:dce7c7841cbb1f94f445b4d5cd784ecc17aae76fd8ae26c35e853ca7580a8f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
