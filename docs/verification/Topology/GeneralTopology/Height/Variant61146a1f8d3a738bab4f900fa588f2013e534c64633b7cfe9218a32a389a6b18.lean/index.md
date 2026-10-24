# Verification target: GRWTSK.Topology.GeneralTopology.Height.Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "823e7a3865e49d6c4b650563037c0c00e1772da1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `823e7a3865e49d6c4b650563037c0c00e1772da1`.

Source path: `GRWTSK/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/subchain--3bfc0c2956a4a99fddf9fae7.md) | 59 | `declaration-track:3bfc0c2956a4a99fddf9fae75a4f3d935cb6452891b6ea337ea176d4d7314b4a` |
| 2 | `theorem` | [nil_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/nil-mem-subchain--c7190ddf345cd3be15ab6504.md) | 63 | `result-track:c7190ddf345cd3be15ab65046197c3a654134ff3735345aceeb9fb69cea8d3f1` |
| 3 | `theorem` | [cons_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/cons-mem-subchain-iff--c69d2759d9996984aa6adf82.md) | 67 | `result-track:c69d2759d9996984aa6adf82160d881d3b3e4fc6ba0d65c01a51c6620862d84d` |
| 4 | `theorem` | [singleton_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/singleton-mem-subchain-iff--d3250b20209830ef4cfacb1f.md) | 73 | `result-track:d3250b20209830ef4cfacb1f0ab2c9113f0c0f1b72e74c1a5187db49f597f1c7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/instance--e9ff64ae30bf39ff6f65d1c2.md) | 75 | `declaration-track:e9ff64ae30bf39ff6f65d1c2869ce2a758f3954e3834686fc22dbbd256fe6101` |
| 6 | `def` | [chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight--11b25e990e8a92f80815e7e0.md) | 81 | `declaration-track:11b25e990e8a92f80815e7e053878a70a918aa507e2d685cb81391b4970b21e3` |
| 7 | `theorem` | [chainHeight_eq_iSup_subtype](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-eq-isup-subtype--a9c895d03077b402dfdd45cb.md) | 84 | `result-track:a9c895d03077b402dfdd45cbfadfed4e47211436b55c249c4f8aa372f98baae5` |
| 8 | `theorem` | [exists_chain_of_le_chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/exists-chain-of-le-chainheight--44ca9047d14566abbf27f0bb.md) | 87 | `result-track:44ca9047d14566abbf27f0bb484ebdb816db1ab686cc85a7a8f2646b02354833` |
| 9 | `theorem` | [le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/le-chainheight-tfae--97cf240b4294efae2f5967c5.md) | 102 | `result-track:97cf240b4294efae2f5967c5b5d7884758741f57c646bc75f1f6351dd9bf3c0e` |
| 10 | `theorem` | [le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/le-chainheight-iff--f4322a309b7390c3838ebe07.md) | 111 | `result-track:f4322a309b7390c3838ebe07a8ce1a9c14d211bc12621d0e49da2adcd40b155f` |
| 11 | `theorem` | [length_le_chainHeight_of_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/length-le-chainheight-of-mem-subchain--377ab4f711a5002646ebed95.md) | 114 | `result-track:377ab4f711a5002646ebed958a421b8e34eac5fdfb22ec2449f892f0104a3541` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-eq-top-iff--925167b0136e0123c48885b2.md) | 117 | `result-track:925167b0136e0123c48885b2d7dddd5f06aa353514c4fd2a9058297f1630ade5` |
| 13 | `theorem` | [one_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/one-le-chainheight-iff--d8e6b6a90621dcf4dd315a2a.md) | 124 | `result-track:d8e6b6a90621dcf4dd315a2a23713021e907d11927a0253eeab421b30ae5346a` |
| 14 | `theorem` | [chainHeight_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-eq-zero-iff--b2ffd93deb75fe804cb31cc6.md) | 130 | `result-track:b2ffd93deb75fe804cb31cc65bb5708aef02c08322849c755ed811693c74b750` |
| 15 | `theorem` | [chainHeight_empty](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-empty--2d52b7a3a9308cae60c6f2b2.md) | 135 | `result-track:2d52b7a3a9308cae60c6f2b20e43ff41842e3d3463507ee9d00bb65888a8e559` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-of-isempty--e59dcd22faa610885ccb5fe1.md) | 139 | `result-track:e59dcd22faa610885ccb5fe10db93b5e553d8de4d1e1bd96c540429c2ac10fe4` |
| 17 | `theorem` | [le_chainHeight_add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/le-chainheight-add-nat-iff--bdbbd2b6a28a0aa2107fc163.md) | 142 | `result-track:bdbbd2b6a28a0aa2107fc163bab87d098bc057519950fc358fc4ba4199a38177` |
| 18 | `theorem` | [chainHeight_add_le_chainHeight_add](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-add-le-chainheight-add--f57d2613769d343b6749acf4.md) | 146 | `result-track:f57d2613769d343b6749acf4245847876c0ae30286254f4f0d8a40433d57ec6b` |
| 19 | `theorem` | [chainHeight_le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-le-chainheight-tfae--2b1bae13e8503d0c3844beaf.md) | 170 | `result-track:2b1bae13e8503d0c3844beaf665a4a90d35be8af8fbd76bccef17ed9d6a33719` |
| 20 | `theorem` | [chainHeight_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-le-chainheight-iff--4737916c3619a0eb15604af7.md) | 180 | `result-track:4737916c3619a0eb15604af74aa08a4091f6ce1806e573e4ca8d0c257d807e52` |
| 21 | `theorem` | [chainHeight_le_chainHeight_iff_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-le-chainheight-iff-le--26ddf04a0f9e23982a4b5e6f.md) | 184 | `result-track:26ddf04a0f9e23982a4b5e6f4d9763a0b3ec1afddaa0caa30a21ce02ba71ce29` |
| 22 | `theorem` | [chainHeight_mono](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-mono--5f7c6ec1e59cc6c0ee85fa30.md) | 188 | `result-track:5f7c6ec1e59cc6c0ee85fa307fe0e4dc45c46481786d37680e5320fa04385489` |
| 23 | `theorem` | [chainHeight_image](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-image--f072c851de171dcb0ec57d08.md) | 191 | `result-track:f072c851de171dcb0ec57d0809673f453b6057eb2d6b05119a092141cff55181` |
| 24 | `theorem` | [chainHeight_dual](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-dual--628dce7e86ce4cbe95592e27.md) | 222 | `result-track:628dce7e86ce4cbe95592e271b5da8ff581a2065c794572e3bdf7eda81bb2789` |
| 25 | `theorem` | [chainHeight_eq_iSup_Ici](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-eq-isup-ici--2cd2f1372bc00f3face2d069.md) | 235 | `result-track:2cd2f1372bc00f3face2d0695de4c27a94c6bf1b509bb6d855afe7c1c560e574` |
| 26 | `theorem` | [chainHeight_eq_iSup_Iic](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-eq-isup-iic--e49f105b987604a76f875723.md) | 250 | `result-track:e49f105b987604a76f875723d81acb9a9dcffcfb56a8acacbf46d4ea617807b3` |
| 27 | `theorem` | [chainHeight_insert_of_forall_gt](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-insert-of-forall-gt--6ea7c49993f1fe44ce057e80.md) | 257 | `result-track:6ea7c49993f1fe44ce057e80d76249fd9889eff5d12c34919dc8a03b2234d228` |
| 28 | `theorem` | [chainHeight_insert_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-insert-of-forall-lt--d9513c53b12ebef59d8cccd9.md) | 278 | `result-track:d9513c53b12ebef59d8cccd9f66aefa42eacf082b05840e5165610312d55b63d` |
| 29 | `theorem` | [chainHeight_union_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-union-le--5d1e5682c2306bd0a3bc80d2.md) | 283 | `result-track:5d1e5682c2306bd0a3bc80d234436638e5500d9c80e71d7da2b04d2ab71429b4` |
| 30 | `theorem` | [chainHeight_union_eq](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/chainheight-union-eq--2cef93b88ffb2573b69cdeb9.md) | 300 | `result-track:2cef93b88ffb2573b69cdeb99af95afd3bbdc68d5941b7e9b0e76be7279eddd8` |
| 31 | `theorem` | [wellFoundedGT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/wellfoundedgt-of-chainheight-ne-top--692c399fb5683bf10f208ae4.md) | 318 | `result-track:692c399fb5683bf10f208ae4e3be05988c76e6b0fc34059d08c40305e9021c51` |
| 32 | `theorem` | [wellFoundedLT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variant61146a1f8d3a738bab4f900fa588f2013e534c64633b7cfe9218a32a389a6b18.lean/declarations/wellfoundedlt-of-chainheight-ne-top--4719382454077bdedb65e43d.md) | 332 | `result-track:4719382454077bdedb65e43d63da0517a7d0ea813dda901674510aa8e09f9019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
