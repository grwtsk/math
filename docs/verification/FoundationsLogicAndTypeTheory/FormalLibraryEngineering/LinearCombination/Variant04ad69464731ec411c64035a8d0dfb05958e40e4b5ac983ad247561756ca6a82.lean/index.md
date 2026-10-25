# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearCombination.Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd3d44c1922b1dfbc2896e7cc0eae897748279db",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd3d44c1922b1dfbc2896e7cc0eae897748279db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_add_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/pf-add-c--d4ab34165323e171ffb3802c.md) | 47 | `result-track:d4ab34165323e171ffb3802c2ef0a2dd28ab0e4f59e18d1438c6b6e4146f6a4c` |
| 2 | `theorem` | [c_add_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/c-add-pf--7be2e5a5a59bfc68ae5c4913.md) | 48 | `result-track:7be2e5a5a59bfc68ae5c4913d2dcae0435cd9233b05b8d5fc06fd35e944e1859` |
| 3 | `theorem` | [add_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/add-pf--cb34a8c4b607305c8b06624a.md) | 49 | `result-track:cb34a8c4b607305c8b06624a3a18e7d4199dc8a656d7e362abb58de9d4152b72` |
| 4 | `theorem` | [pf_sub_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/pf-sub-c--56b444c68ed017f1b835730f.md) | 50 | `result-track:56b444c68ed017f1b835730f4dda231a231f4b245356f338c875d8e5004db765` |
| 5 | `theorem` | [c_sub_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/c-sub-pf--049991efbeb4a1fe103f9b44.md) | 51 | `result-track:049991efbeb4a1fe103f9b44aed82e095f0910f6efde63d1e25d009bf5cb2eb4` |
| 6 | `theorem` | [sub_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/sub-pf--52881ed458cb1cecf8080905.md) | 52 | `result-track:52881ed458cb1cecf80809050e3c1ee1c86350e1d009d5596f525128fb4fb2c4` |
| 7 | `theorem` | [neg_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/neg-pf--f3b9796621086a0881e09d60.md) | 53 | `result-track:f3b9796621086a0881e09d60bce736d82722e97e2540bdc1e3315373de321fde` |
| 8 | `theorem` | [pf_mul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/pf-mul-c--9e1798df7406bfcd9c468db3.md) | 54 | `result-track:9e1798df7406bfcd9c468db332cb6ccfea4b0d7e749b6a3a55210ae1920dc938` |
| 9 | `theorem` | [c_mul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/c-mul-pf--91d43388df556a60c067627f.md) | 55 | `result-track:91d43388df556a60c067627fd6318ae4e19fe1df443b2e0d15566686e72f0a2f` |
| 10 | `theorem` | [mul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/mul-pf--118c0f422064b87878b77eec.md) | 56 | `result-track:118c0f422064b87878b77eecc5929f2f0c1138e4e0deaf8240c8c4424909cd15` |
| 11 | `theorem` | [inv_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/inv-pf--080d22a347bfb72d0687d0ce.md) | 57 | `result-track:080d22a347bfb72d0687d0ce35117dad85e34b249d9ef8628986aa6359338457` |
| 12 | `theorem` | [pf_div_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/pf-div-c--6d6ff9b286cfe0e6b0bb6504.md) | 58 | `result-track:6d6ff9b286cfe0e6b0bb6504c5ce4a44de743efe901e13353ac18f91c2da42d3` |
| 13 | `theorem` | [c_div_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/c-div-pf--1791384db0280fd475f9a7c1.md) | 59 | `result-track:1791384db0280fd475f9a7c13bf306b698493e6623e6f5e6a49673fcc27446c5` |
| 14 | `theorem` | [div_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/div-pf--744741905a46748444570568.md) | 60 | `result-track:744741905a46748444570568afcbd824f3e704a4cef9f949f0b502ad16858b10` |
| 15 | `def` | [expandLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/expandlinearcombo--3ede2cdb4048a5bbb77fcd9c.md) | 71 | `declaration-track:3ede2cdb4048a5bbb77fcd9cfb198e2264eff25561e2330f49f5bac07a9ea534` |
| 16 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/config--978d4e4ce38c7a16fe65d4ab.md) | 118 | `declaration-track:978d4e4ce38c7a16fe65d4ab97902b333c3e9a527ff001da1ff4c98b7d85c88a` |
| 17 | `theorem` | [eq_trans₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/eq-trans--0109a2b5c1686736bb4d23e5.md) | 131 | `result-track:0109a2b5c1686736bb4d23e523775cda21cf42c683c73d64d977784d4f0bb908` |
| 18 | `theorem` | [eq_of_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/eq-of-add--8a461bd7ee1606846f6a603b.md) | 133 | `result-track:8a461bd7ee1606846f6a603b6c7089a99fe7319acff6ff84f1df2051f5af9b58` |
| 19 | `def` | [elabLinearCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/elablinearcombination--4cf4234eff018b2aaff2a07b.md) | 137 | `declaration-track:4cf4234eff018b2aaff2a07b090ddbcce6ebd29a6c76a6da8f790afed10d9dd7` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/syntax--fd0f70773dcfb22526bbd32a.md) | 160 | `declaration-track:fd0f70773dcfb22526bbd32a227c9d9dcb0565ac401aeaf18f4d3aebfc1fdb19` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/syntax--c294330e5395cc5d44b24de4.md) | 229 | `declaration-track:c294330e5395cc5d44b24de47df350611abd1ab56ef5568ef7c54ba31b6ee61d` |
| 22 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/elab-rules--19f187aaac4b74ef1384eb2c.md) | 230 | `declaration-track:19f187aaac4b74ef1384eb2cc93c1333126cca4bc0f90ded3e7718942ac1c1d4` |
| 23 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/syntax--3aef34052b1edc7589a58f0d.md) | 234 | `declaration-track:3aef34052b1edc7589a58f0d579b07743b04cb466ceefbc6e6dad058f3b3a538` |
| 24 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/declarations/elab-rules--7b628c198b3623d1e8b3fb23.md) | 235 | `declaration-track:7b628c198b3623d1e8b3fb23c4a003bb1d4e1454695e3f309b4778e69569f66e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
