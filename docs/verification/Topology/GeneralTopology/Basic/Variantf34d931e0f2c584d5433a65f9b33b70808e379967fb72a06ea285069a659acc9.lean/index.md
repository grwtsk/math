# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ce3eaafc83f855a5e72a446254f7a183d0eca4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ce3eaafc83f855a5e72a446254f7a183d0eca4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/continuousorderhom--25597a6ac1be7fd54c49905e.md) | 34 | `declaration-track:25597a6ac1be7fd54c49905ede3c2d6ba09d5913aacaba426fd304f806325539` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/continuousorderhomclass--c693ceafb2a9708e3efe2f55.md) | 45 | `declaration-track:c693ceafb2a9708e3efe2f55afa7f8134a8696bd58c213231d1c4baf4ba8ac26` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--50f7f796f05a928d6f749384.md) | 56 | `declaration-track:50f7f796f05a928d6f7493842d106382c5691c6f3d6076742711a556e77cf8fd` |
| 4 | `def` | [toContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/tocontinuousorderhom--87ceea3004732c18e986316b.md) | 64 | `declaration-track:87ceea3004732c18e986316b0abf59ea2759659282a0af083d05c6b6e6722736` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--a8eba93c710c6acc74f1b8d7.md) | 69 | `declaration-track:a8eba93c710c6acc74f1b8d7232a66bc3d668f6303b12d8e1076dd7fd4c22d6a` |
| 6 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/tocontinuousmap--da4fcd1d1ab0edca2bce331f.md) | 85 | `declaration-track:da4fcd1d1ab0edca2bce331fc06b536d74cb7c942ca117902eac447a910e38f9` |
| 7 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instfunlike--0d5a40f5953f29f4aac59b5b.md) | 88 | `declaration-track:0d5a40f5953f29f4aac59b5beb977b560136398e10ffa352630b62f25011a687` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--f8311b8c28a8fb068dca7eab.md) | 95 | `declaration-track:f8311b8c28a8fb068dca7eabf7aa9b0a0fc310d7e8c9e3640e627def2458fe82` |
| 9 | `theorem` | [coe_toOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/coe-toorderhom--dd749dd572492bc1b91d306b.md) | 99 | `result-track:dd749dd572492bc1b91d306bc3431c131d01a78f45f1fa338a9c2c6b7722305c` |
| 10 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/tofun-eq-coe--abb4b627a6e249077d2f1516.md) | 101 | `result-track:abb4b627a6e249077d2f1516e19b6e6770216c8576bb72c71aa64416c432d2da` |
| 11 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/ext--fd29636390ef4b085a4ca587.md) | 104 | `result-track:fd29636390ef4b085a4ca5870973a4875478b2c711e70902751cd4413b7cd02c` |
| 12 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/copy--588246eabf89eb51a0570327.md) | 109 | `declaration-track:588246eabf89eb51a0570327531ccac04b83fb029de473fce5fc886310311417` |
| 13 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/coe-copy--fb44b2fc6b2ef685ee00665c.md) | 113 | `result-track:fb44b2fc6b2ef685ee00665ca4dbcb8f37620b57e8bcae95015815e6a9c41240` |
| 14 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/copy-eq--18d6b0582067db50c6d698e7.md) | 116 | `result-track:18d6b0582067db50c6d698e799154f25d41b3d055e46b91a673277556a2a18ef` |
| 15 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/id--b303568cecbada8f6fcebc25.md) | 122 | `declaration-track:b303568cecbada8f6fcebc254e3f29744b8fb97d02d08ebb08bab959deead084` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--953e74ab9a0c05b40730790b.md) | 125 | `declaration-track:953e74ab9a0c05b40730790bc3fc0f59cb810dabe6dc82224da96c16bbd53cb5` |
| 17 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/coe-id--14e15a7aefc112e57877ad11.md) | 129 | `result-track:14e15a7aefc112e57877ad117af13943bbab600e5935c8db62e49eef28b733c7` |
| 18 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/id-apply--0bb574a23164cd0846a58483.md) | 135 | `result-track:0bb574a23164cd0846a58483617130ad2eea9a0dbe667a307cbcaaa30d6b3603` |
| 19 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/comp--a0ee1a4394f39da0155d8792.md) | 139 | `declaration-track:a0ee1a4394f39da0155d879239e883331fdce4e69657707e005618569ef8f0c8` |
| 20 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/coe-comp--b13cb84755043bfc5670e7aa.md) | 143 | `result-track:b13cb84755043bfc5670e7aa631c5b4e7cd079fb6d6072dd53b1bb2e3d313e7e` |
| 21 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/comp-apply--e9e5d75d8df72f17e73a82d9.md) | 147 | `result-track:e9e5d75d8df72f17e73a82d96074466bcbf1374fc6f2a6408ad0a1124aa3d73b` |
| 22 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/comp-assoc--3c6d9e0257b580d5d74e0c09.md) | 151 | `result-track:3c6d9e0257b580d5d74e0c0928c1f0f231523285e1fef96de48a064d99d9a2e6` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/comp-id--aa9529322cb74bbe2f2b0a49.md) | 156 | `result-track:aa9529322cb74bbe2f2b0a4928e7164506fed38d05b0072bcaacca9e74245dd3` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/id-comp--dbfa764d6102b561ababfdc2.md) | 160 | `result-track:dbfa764d6102b561ababfdc2070daecd6202985793bf408b315e08bdb8698e83` |
| 25 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/cancel-right--31e2bf2a0acc6dac853ca1f0.md) | 164 | `result-track:31e2bf2a0acc6dac853ca1f01afac21345e33fa800983647aef4e1fd70bec095` |
| 26 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/cancel-left--3ce467d899fced12edd8d411.md) | 169 | `result-track:3ce467d899fced12edd8d411325fd6362ffecc8cbbf7c9c5593f30e23cb2343b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--1a3669deadbce8d6379872eb.md) | 173 | `declaration-track:1a3669deadbce8d6379872eb3d6a00aea94960e239250015a3300ec6281afdbf` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf34d931e0f2c584d5433a65f9b33b70808e379967fb72a06ea285069a659acc9.lean/declarations/instance--9c164215a13a15212e88fbbb.md) | 178 | `declaration-track:9c164215a13a15212e88fbbbdcdaa97161fbb3f7e95ec73dda15a7063fd9c678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
