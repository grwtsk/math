# Verification target: GRWTSK.Topology.AlgebraicTopology.Contractible.Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "185af95eef07d6d4866f0cd66eab44e78a241fd3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `185af95eef07d6d4866f0cd66eab44e78a241fd3`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/nullhomotopic--62152461433125f1ee5f5244.md) | 25 | `declaration-track:62152461433125f1ee5f5244fc81cb402b1810128669ac8ad4d01937f329ad4e` |
| 2 | `theorem` | [nullhomotopic_of_constant](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/nullhomotopic-of-constant--584f8c2b3ad4dcf3c41c84c5.md) | 29 | `result-track:584f8c2b3ad4dcf3c41c84c556969ff2a1166d4a6837eb76f9dbb8aa88bcc303` |
| 3 | `theorem` | [Nullhomotopic.comp_right](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/nullhomotopic-comp-right--aff94e5fd9439bdd96480e1f.md) | 33 | `result-track:aff94e5fd9439bdd96480e1f74e2f64489c3f5e6fcc0a6edd693f598718080ee` |
| 4 | `theorem` | [Nullhomotopic.comp_left](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/nullhomotopic-comp-left--0f743f43ec97b6216fa9ae56.md) | 40 | `result-track:0f743f43ec97b6216fa9ae56bc95b8297eec41f4d18b8bf024542aaecf12e2dc` |
| 5 | `class` | [ContractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/contractiblespace--af5e0be9d7c5ffc650361491.md) | 52 | `declaration-track:af5e0be9d7c5ffc6503614918d12fca6e9318408afffc2dfdf5abf8b8605641b` |
| 6 | `theorem` | [ContractibleSpace.hequiv_unit](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/contractiblespace-hequiv-unit--f0ddc15db332c67b54852284.md) | 57 | `result-track:f0ddc15db332c67b54852284c0662761f208ad379263df491b3c8f8b29103fe0` |
| 7 | `theorem` | [id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/id-nullhomotopic--a9513377536bda931db991d4.md) | 62 | `result-track:a9513377536bda931db991d4b01b8c9334d06e768e6bb8fd90816329516c1353` |
| 8 | `theorem` | [contractible_iff_id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/contractible-iff-id-nullhomotopic--eb43005f1f86163e28692f7f.md) | 69 | `result-track:eb43005f1f86163e28692f7fb10ae65adc32bbd32ec8b56531a07ac9e95cab56` |
| 9 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/continuousmap-homotopyequiv-contractiblespace--e6e335532564799b88f8563f.md) | 87 | `result-track:e6e335532564799b88f8563ff5cb41ad563a5f1d8d0a2587f0813a1728a82f76` |
| 10 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/continuousmap-homotopyequiv-contractiblespace-iff--6e3aa53a0cecf2925a1fc618.md) | 92 | `result-track:6e3aa53a0cecf2925a1fc618becdac0909c6fb27853cda83149f4aef21ea945e` |
| 11 | `theorem` | [Homeomorph.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/homeomorph-contractiblespace--d57f498cf6d8f5668217d5ca.md) | 97 | `result-track:d57f498cf6d8f5668217d5ca894c3baf1085beea5b46bd70708de25e20b1f2fb` |
| 12 | `theorem` | [Homeomorph.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/homeomorph-contractiblespace-iff--861bd26790be089eec590682.md) | 102 | `result-track:861bd26790be089eec5906821de3a4f8a8aa9d26c174cfcd0e0986251bdf9744` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant50e6acf1ca2ebf1fb72a935cab528f98b617b24c65a7e212f69292a176a91a30.lean/declarations/instance--e1ac942b54b664a8628f4d74.md) | 109 | `declaration-track:e1ac942b54b664a8628f4d742a6fa4d64dd02339e429e824e4134a6cf56776da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
