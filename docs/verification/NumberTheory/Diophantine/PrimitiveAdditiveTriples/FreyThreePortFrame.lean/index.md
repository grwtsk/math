# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fcd23e798f4c139872f50308893055b2a36672b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fcd23e798f4c139872f50308893055b2a36672b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreySectionCoordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freysectioncoordinates--623a9bf5b44a9e9da213432a.md) | 15 | `declaration-track:623a9bf5b44a9e9da213432a7917ba53a7d0dbd37fe4344bcfa9e6452fb68489` |
| 2 | `abbrev` | [FreyThreePortValues](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportvalues--023c03329db54ccbc10b7424.md) | 18 | `declaration-track:023c03329db54ccbc10b7424743baf1692288d610d58ed5cc97c01d41edce2f4` |
| 3 | `abbrev` | [FreyTwoPortValues](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freytwoportvalues--bb00b6595f3491d267ca85d8.md) | 21 | `declaration-track:bb00b6595f3491d267ca85d8b66cf78a50976cb75a0f6dce5c0d5f0213a2cb59` |
| 4 | `def` | [freyThreePortEval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeporteval--877aef179e72e2691a54114e.md) | 26 | `declaration-track:877aef179e72e2691a54114ee29a59dd3837cfc817218041a885c9a04e0c45a3` |
| 5 | `theorem` | [freyThreePortEval_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeporteval-add--245f836ef4f7135fdac93116.md) | 30 | `result-track:245f836ef4f7135fdac93116d79438354174ac1bfa71abc49270bfe72571061e` |
| 6 | `theorem` | [freyThreePortEval_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeporteval-smul--c466623549d0a445b845f90c.md) | 37 | `result-track:c466623549d0a445b845f90cff97595942dd334e47406e98ec2c1466d0c1fe01` |
| 7 | `def` | [freyThreePortEvalLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportevallinear--5b420e1d54d507e768de7da0.md) | 44 | `declaration-track:5b420e1d54d507e768de7da0378299a2e8083bbfac64c7719ce77a34749ed8fe` |
| 8 | `def` | [freyThreePortRecover](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecover--d29c0a3e07f6318aedcb9223.md) | 52 | `declaration-track:d29c0a3e07f6318aedcb92230e5923bb9fa6ae43a5f6105acf4ec098e5fd360f` |
| 9 | `theorem` | [freyThreePortRecover_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecover-add--4eceb59ef21ee53de51c938a.md) | 56 | `result-track:4eceb59ef21ee53de51c938aaa9825e6561aff166feb49af397ea5defb76c262` |
| 10 | `theorem` | [freyThreePortRecover_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecover-smul--556595a44b467378a2168d6e.md) | 63 | `result-track:556595a44b467378a2168d6e0f178a6dc513e0c7066e1b7b57d922781a8245b8` |
| 11 | `def` | [freyThreePortRecoverLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecoverlinear--509c86ba8309419a8530a238.md) | 70 | `declaration-track:509c86ba8309419a8530a23819e150f51b5aa542566a2dde257f32624958cd71` |
| 12 | `theorem` | [freyThreePortRecover_leftInverse_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecover-leftinverse-of-bezout--978c564e72125b93b939c7d9.md) | 77 | `result-track:978c564e72125b93b939c7d933036c750aaad7333029ff55f6081f0784c2e17c` |
| 13 | `theorem` | [freyThreePortEval_injective_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeporteval-injective-of-bezout--2c830db4e49ea035cb652dfc.md) | 94 | `result-track:2c830db4e49ea035cb652dfccaa0fe4bbe1c77ec04dea7f734d321ec41ad0711` |
| 14 | `theorem` | [freyThreePortRecover_comp_eval_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportrecover-comp-eval-of-bezout--bff300fb706401d7a6f76ea9.md) | 101 | `result-track:bff300fb706401d7a6f76ea9514ce5c9243a64ede309c97ed495c93980e67a9d` |
| 15 | `def` | [FreyThreePortCompatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeportcompatible--907cb0cd07ce43c1be89f34e.md) | 110 | `declaration-track:907cb0cd07ce43c1be89f34ee4c0be56ed15a1d1573e9d3c28a2a3539e47f748` |
| 16 | `theorem` | [freyThreePortEval_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freythreeporteval-compatible--df1a6cc39940b6156870d74b.md) | 114 | `result-track:df1a6cc39940b6156870d74bd64c5c6159cd32f06726f1930b988d72bcd39064` |
| 17 | `def` | [freyTwoPortEval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freytwoporteval--0c65af4faf539665500fb9a5.md) | 122 | `declaration-track:0c65af4faf539665500fb9a5567aa05097ebbe250d0219a8742d6aa5ceeca0cf` |
| 18 | `theorem` | [freyTwoPort_difference](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freytwoport-difference--e1f95e033def91a7aabefc93.md) | 126 | `result-track:e1f95e033def91a7aabefc937ba988d475475b1b9d9f5f74d4c02e087f073735` |
| 19 | `def` | [freyXSection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/freyxsection--df5b0ee026c84bd124b4710e.md) | 133 | `declaration-track:df5b0ee026c84bd124b4710e2c5b7f1ccd560be4e463f39b0280520edcc24462` |
| 20 | `def` | [recoverABCValues](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/recoverabcvalues--fc831f4454bfca91a92108ee.md) | 136 | `declaration-track:fc831f4454bfca91a92108ee2a9a2e83d69c45ceca432e30535dce574c432f12` |
| 21 | `def` | [PrimitiveAdditiveTriple.bezoutA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-bezouta--8512b174d4981a9835e55f71.md) | 140 | `declaration-track:8512b174d4981a9835e55f71d9d535da27644f6383b765cc010755b8f5ca26e0` |
| 22 | `def` | [PrimitiveAdditiveTriple.bezoutB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-bezoutb--949e6de0ea539ccb652461a0.md) | 144 | `declaration-track:949e6de0ea539ccb652461a0a0d8273a6e54d9d3e362c1a76e91129c28ae59c7` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.bezout_identity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-bezout-identity--a3f8962429de29b801b8a17f.md) | 148 | `result-track:a3f8962429de29b801b8a17f6ed3e13242f4bd52c9f42413f6890e2cdfbea95e` |
| 24 | `def` | [PrimitiveAdditiveTriple.threePortEval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-threeporteval--43826e4dcdc04cfa88197666.md) | 157 | `declaration-track:43826e4dcdc04cfa8819766682c0e70d3b01fced2fda6c1c6009399e89d5718d` |
| 25 | `def` | [PrimitiveAdditiveTriple.threePortRecover](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-threeportrecover--eebcf39330baaefe1563cae9.md) | 163 | `declaration-track:eebcf39330baaefe1563cae9fac308900e2a7b1f1b23a9d4131f238c89174994` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.threePortRecover_comp_eval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-threeportrecover-comp-eval--ae440451af15ae5174bd5705.md) | 168 | `result-track:ae440451af15ae5174bd57052cd194c24197dd1b55092191281475a7f315069e` |
| 27 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-threeporteval-injective--859e27f1fd0ab78fffbd808d.md) | 174 | `result-track:859e27f1fd0ab78fffbd808dbbb15f34cc4adf3be6ef29c25e223985cf257af3` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-threeporteval-x--06748444c8ebaa1b44823ee7.md) | 180 | `result-track:06748444c8ebaa1b44823ee7dd5c65594e35ed7151d4e72ee5179e1218267f94` |
| 29 | `theorem` | [PrimitiveAdditiveTriple.recoverABC_threePortEval_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-recoverabc-threeporteval-x--0bc17c156fda61fd63fda8c8.md) | 190 | `result-track:0bc17c156fda61fd63fda8c8ab36fa71249696c4ea501ad8434ac9d6d6b8d843` |
| 30 | `theorem` | [PrimitiveAdditiveTriple.twoPort_x_difference](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/declarations/primitiveadditivetriple-twoport-x-difference--46f7005679a7ab8e9e74ff09.md) | 203 | `result-track:46f7005679a7ab8e9e74ff09678cc1d1e85824a27acf53df852a9963a579de5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
