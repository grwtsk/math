# Verification target: GRWTSK.Topology.GeneralTopology.OmegaCompletePartialOrder.Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95199ebb6d38f26e3f8c2069275d03a02caa7989",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95199ebb6d38f26e3f8c2069275d03a02caa7989`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ScottTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Topology.IsScott.ωscottContinuous_iff_continuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/topology-isscott-scottcontinuous-iff-continuous--b2a6387bd87ce7264ef08898.md) | 26 | `result-track:b2a6387bd87ce7264ef08898f87990a090be9198013988dcaa5ef77dd9a3c7db` |
| 2 | `def` | [IsωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/is-sup--b3146ef40533a6ba28d1c5f8.md) | 37 | `declaration-track:b3146ef40533a6ba28d1c5f84e652feb8721f9046c0dab97fdcbb8c0a4599eaf` |
| 3 | `theorem` | [isωSup_iff_isLUB](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/is-sup-iff-islub--1baf888f66cf57888faee6ae.md) | 40 | `result-track:1baf888f66cf57888faee6ae313e260ff60815c750677d7c78ec25950734f5b3` |
| 4 | `def` | [IsOpen](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen--96eebb087ad99c7b7704f545.md) | 48 | `declaration-track:96eebb087ad99c7b7704f545aa5b505b81d3a26534ada0777301eb11ddb77b0c` |
| 5 | `theorem` | [isOpen_univ](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen-univ--98c5646a85824d162c9bc691.md) | 51 | `result-track:98c5646a85824d162c9bc691f80c6b5e449b7cfb3fe8786582973308ab259bd7` |
| 6 | `theorem` | [IsOpen.inter](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen-inter--3226a3a4491f504db7147a9b.md) | 53 | `result-track:3226a3a4491f504db7147a9b6f4949e66c86861b20899fadc46f73641fc7983d` |
| 7 | `theorem` | [isOpen_sUnion](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen-sunion--84efe05107b18185ac3b4f35.md) | 56 | `result-track:84efe05107b18185ac3b4f35b349e84b542a15307b6cf0cfd4750d816472e214` |
| 8 | `theorem` | [IsOpen.isUpperSet](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen-isupperset--e2db9ac96a4589036aa3c66d.md) | 61 | `result-track:e2db9ac96a4589036aa3c66d91e0b6ad35141d9cab237ac253133a8b021c1eff` |
| 9 | `abbrev` | [Scott](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/scott--75bf264860f943b85d76cb0b.md) | 68 | `declaration-track:75bf264860f943b85d76cb0bca4e56eef03f128e1c8b27003c955217a7ca372e` |
| 10 | `instance` | [Scott.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/scott-topologicalspace--8e7a0221613a32ce77ea5594.md) | 70 | `declaration-track:8e7a0221613a32ce77ea559448d6b675d1a626cb99ed31b24a29d0f0a482c249` |
| 11 | `lemma` | [isOpen_iff_ωScottContinuous_mem](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/isopen-iff-scottcontinuous-mem--82aca8d0a7d1af76e068505d.md) | 77 | `result-track:82aca8d0a7d1af76e068505d710ff009d46e2fc7c8ca3864f1fbe5376d08c5b7` |
| 12 | `lemma` | [scott_eq_Scott](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/scott-eq-scott--d7bb39c10fd30ab33954cbef.md) | 80 | `result-track:d7bb39c10fd30ab33954cbef5d02080daf81b49d6793fd52e9345b7e60ea1b81` |
| 13 | `def` | [notBelow](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/notbelow--f265ef0fcb9633fe3db74ae8.md) | 94 | `declaration-track:f265ef0fcb9633fe3db74ae8b772ce1ab01c748060fa9e3b70fcf107a328bf0a` |
| 14 | `theorem` | [notBelow_isOpen](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/notbelow-isopen--0461cd4078f6281cea74fc67.md) | 97 | `result-track:0461cd4078f6281cea74fc676a4b506feac4b60ed0c2ba430772f84d85bb7e65` |
| 15 | `theorem` | [isωSup_ωSup](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/is-sup-sup--226c9b7b8bd60f022fb73737.md) | 111 | `result-track:226c9b7b8bd60f022fb73737de893f56cb4668bbec2c8f4ea9813923b386b216` |
| 16 | `theorem` | [scottContinuous_of_continuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/scottcontinuous-of-continuous--049950bf99b5394f294bb416.md) | 116 | `result-track:049950bf99b5394f294bb416e47ac4e7ea2e012c38fa3ac36e1267c6e800ef9e` |
| 17 | `theorem` | [continuous_of_scottContinuous](../../../../../mathematics/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/declarations/continuous-of-scottcontinuous--aed6c112a8364f2948c2b02c.md) | 133 | `result-track:aed6c112a8364f2948c2b02c7e9945ff3c708f3305e160f28caca44d1e871f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
