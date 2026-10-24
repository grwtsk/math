# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd745f38b7578236a3b75376c3acc8cb2d724de2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd745f38b7578236a3b75376c3acc8cb2d724de2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/continuousorderhom--ef0bfb849e931f2e1659914a.md) | 36 | `declaration-track:ef0bfb849e931f2e1659914a5afd3b0c19a3734f34a6c620dbb5772cf3ce1a84` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/continuousorderhomclass--f62b266de9f168100da1d207.md) | 50 | `declaration-track:f62b266de9f168100da1d207d2b7e7ccc6ad5bd8daed2b23dccf825bf7d04231` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--fca02d7edea5ad0fba21f925.md) | 63 | `declaration-track:fca02d7edea5ad0fba21f925369f64ca39a2af62e2b1b313864a6198824a3094` |
| 4 | `def` | [toContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/tocontinuousorderhom--9ae44bcf7361c9f285c38139.md) | 76 | `declaration-track:9ae44bcf7361c9f285c38139a47e415a72c647b3da08cae504945d87317ebd45` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--18dc7397907d6362cca270c8.md) | 81 | `declaration-track:18dc7397907d6362cca270c8de869ceba91ed79089d7b86eabe830aec8d41d5c` |
| 6 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/tocontinuousmap--72815a20cd128c465c0b248b.md) | 97 | `declaration-track:72815a20cd128c465c0b248b4eb15725a0b3b3769700c3729fbbe4ff360f5971` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--65aca0a1e5d2e3625e56830e.md) | 101 | `declaration-track:65aca0a1e5d2e3625e56830e75097a6e48da2d847ec638559ea32400736719b2` |
| 8 | `theorem` | [coe_toOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/coe-toorderhom--0771649a1e0763f44731b754.md) | 111 | `result-track:0771649a1e0763f44731b754eb86616a2a85af4ce695f53e902ad24b2f45ba44` |
| 9 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/tofun-eq-coe--def312c32f74a31b5cb88289.md) | 113 | `result-track:def312c32f74a31b5cb8828981e24826f03bfe3b128dec4b1b36cdfa1a4a46bf` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/ext--4d1c7c7a67bcc03c449bce48.md) | 117 | `result-track:4d1c7c7a67bcc03c449bce483e1ea841076265049c0f3005c44046a2e9d7bdef` |
| 11 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/copy--a0472792a08b25f0df1c6571.md) | 123 | `declaration-track:a0472792a08b25f0df1c657151f846a808fd71a3740ab293e783b343af7c26a9` |
| 12 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/coe-copy--5ee4d5236a884e87785c38ba.md) | 128 | `result-track:5ee4d5236a884e87785c38bad45617ed9019ddc1fb025da12c51b1993123e362` |
| 13 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/copy-eq--c17cfcdc922b509f076b197b.md) | 132 | `result-track:c17cfcdc922b509f076b197bd6eb43c1fe4901dcb2fe89b45feda43badb0df0c` |
| 14 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/id--5ba099047cb2ae38d6e612d6.md) | 139 | `declaration-track:5ba099047cb2ae38d6e612d6a98cd0f15c339a68f0d1a213f662a059f75f32ab` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--f76667a3618f2b3d50b18a0a.md) | 143 | `declaration-track:f76667a3618f2b3d50b18a0a97634b562eace638ebf84ebe0fd3ee2b640cab60` |
| 16 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/coe-id--2657b25af14047e5ae03fff5.md) | 147 | `result-track:2657b25af14047e5ae03fff5b6266f8d9532e57521598ef4232b4cd74269c9ca` |
| 17 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/id-apply--a066c95642bb1f625dd6ae51.md) | 154 | `result-track:a066c95642bb1f625dd6ae517d009e7cf8a6d41f3293e3be628a27439a87c677` |
| 18 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/comp--31b44d5158f22f251dfe9025.md) | 159 | `declaration-track:31b44d5158f22f251dfe9025ac234ddda9220c3c394a0c0c8e0010fd7d13f9ab` |
| 19 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/coe-comp--55972367e48f9cc9162adb51.md) | 164 | `result-track:55972367e48f9cc9162adb51e2d0d1fde83baf5ceca68d65535cbd995c7def38` |
| 20 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/comp-apply--a51602807102384a98aa4443.md) | 169 | `result-track:a51602807102384a98aa444377877308e2a4c8578cc6f5a31b8d3226bfbd27ef` |
| 21 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/comp-assoc--205c3e9687e601d0ab13e538.md) | 174 | `result-track:205c3e9687e601d0ab13e5382c736a38c160a72f04c55ac889d0ca956471bba6` |
| 22 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/comp-id--be3b018d07f3ad9fb2374af7.md) | 180 | `result-track:be3b018d07f3ad9fb2374af700ecc4441394f323bd4aa5fce89596eb622e5f51` |
| 23 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/id-comp--beffb77316b17678f8815cb3.md) | 185 | `result-track:beffb77316b17678f8815cb3904c1cd6ceba23d9c1b326eb1a43d6f70a41cf55` |
| 24 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/cancel-right--e59ac5f5c19404592b473cb6.md) | 189 | `result-track:e59ac5f5c19404592b473cb62fe043b8365f2cce13c5d3cbc3d1d2c8feba6a46` |
| 25 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/cancel-left--f049d97373f699de4ca00139.md) | 194 | `result-track:f049d97373f699de4ca001397690b6576307e787ccadb56b897ad95eff59e802` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--96552d282e54fa1ac541879f.md) | 199 | `declaration-track:96552d282e54fa1ac541879f7f1e1526651df61b5e8e448adb24699e0e42243a` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/declarations/instance--86a85913a0bbf29b9819764d.md) | 204 | `declaration-track:86a85913a0bbf29b9819764d74e140b2f4a2182cbbd7bf1f0cf716a3a24a4a76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
