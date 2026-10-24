# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac20becf070f5999e74454bfc92839a50486d438",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac20becf070f5999e74454bfc92839a50486d438`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proximity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity--17aff86c630862d3c98ecb27.md) | 58 | `declaration-track:17aff86c630862d3c98ecb27bfe8511c918bfbf6dd3f95f45aa8a1418ab7e499` |
| 2 | `lemma` | [proximity_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-coe--7abb3115874ea3f2fb4d12c9.md) | 64 | `result-track:7abb3115874ea3f2fb4d12c916fca955490c0b683dc9beaac6930480692d2954` |
| 3 | `lemma` | [proximity_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-zero--e1e187d74714cbfc1b4b1731.md) | 71 | `result-track:e1e187d74714cbfc1b4b1731b5e0745a2565b227af73eebf752c4307df17c92e` |
| 4 | `lemma` | [proximity_zero_of_complexValued](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-zero-of-complexvalued--1e418f1a0893025d2e6b5c3b.md) | 78 | `result-track:1e418f1a0893025d2e6b5c3b62741ca035fba7f6e8ecc2f652d284f4f3b57d4d` |
| 5 | `lemma` | [proximity_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-top--ad78a25cde1aa876bde63b59.md) | 85 | `result-track:ad78a25cde1aa876bde63b59b98bf4d9a0175e59d96c2eeeaa94b0a672409372` |
| 6 | `lemma` | [proximity_congr_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-congr-codiscretewithin--47b6a12407d3d4278356a891.md) | 96 | `result-track:47b6a12407d3d4278356a8918c53119e807656176210c805bc407919878a64a8` |
| 7 | `lemma` | [proximity_congr_codiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-congr-codiscrete--53239ab3f66be70d93377a75.md) | 109 | `result-track:53239ab3f66be70d93377a758c0fdf395fc101ecba72d4abeb2b413520591fe4` |
| 8 | `lemma` | [proximity_coe_eq_proximity_sub_const_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-coe-eq-proximity-sub-const-zero--da36aebb27314e05385d919a.md) | 118 | `result-track:da36aebb27314e05385d919abcf31c9360e84d4af09e047785cd798fd5c2c03b` |
| 9 | `theorem` | [proximity_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-inv--a66e3b96b0a6a4d8d12e9d88.md) | 126 | `result-track:a66e3b96b0a6a4d8d12e9d88ff176165dc490b3ba3210459df938333ad94e8e0` |
| 10 | `theorem` | [proximity_sub_proximity_inv_eq_circleAverage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-sub-proximity-inv-eq-circleaverage--6e0148321241a30f6c945c1b.md) | 133 | `result-track:6e0148321241a30f6c945c1b10880d3f71d22c0a062527c5ac86677424497913` |
| 11 | `theorem` | [proximity_even](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-even--1c134ec892b28bb093e3c77c.md) | 146 | `result-track:1c134ec892b28bb093e3c77c417ca50425948f49a8bbfe31339311918b1b5001` |
| 12 | `theorem` | [proximity_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-nonneg--c05213e579b56b894df00777.md) | 153 | `result-track:c05213e579b56b894df007774376ab7bb602e2a1f533d4b561022118d275f994` |
| 13 | `lemma` | [proximity_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-const--3ca43545b2a18f22148d2776.md) | 159 | `result-track:3ca43545b2a18f22148d2776d65aed9bd6c80793bbf9e898332c656aac771c50` |
| 14 | `theorem` | [continuous_proximity_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/continuous-proximity-top--172caabf0e81a99e4d03945d.md) | 166 | `result-track:172caabf0e81a99e4d03945df441adf684dab7e451614564ca7865c74b7ea20d` |
| 15 | `theorem` | [proximity_sum_top_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-sum-top-le--c36741ea9936427426685900.md) | 179 | `result-track:c36741ea99364274266859005133971cffa79b26aca043d9496dd52a5d891876` |
| 16 | `theorem` | [proximity_add_top_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-add-top-le--4946a63f392a36a781ddf07b.md) | 207 | `result-track:4946a63f392a36a781ddf07b94fe876e7ec4792050486478f4ab21ee33cb1d21` |
| 17 | `theorem` | [proximity_mul_top_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-mul-top-le--c4d1e26de1a027fd3b76a37e.md) | 217 | `result-track:c4d1e26de1a027fd3b76a37e986d6c4dea085a06d9dc1dfd23c67c5762680898` |
| 18 | `theorem` | [proximity_mul_zero_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-mul-zero-le--26c3b8b8fb53b712cd7d0bfb.md) | 242 | `result-track:26c3b8b8fb53b712cd7d0bfb55eec336488b30e70c5a3f9d9fd55b54c9155831` |
| 19 | `theorem` | [proximity_pow_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-pow-top--7cc99e6aafe2363e462bd0bc.md) | 255 | `result-track:7cc99e6aafe2363e462bd0bcc34386acd3b3b90289a5a36856acf8056d55eb13` |
| 20 | `theorem` | [proximity_pow_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/declarations/proximity-pow-zero--ab3cfc60eebf9b06e74ffcdc.md) | 264 | `result-track:ab3cfc60eebf9b06e74ffcdc8b4de50f5ddb18d676bb3ead9e181e8f57099614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
