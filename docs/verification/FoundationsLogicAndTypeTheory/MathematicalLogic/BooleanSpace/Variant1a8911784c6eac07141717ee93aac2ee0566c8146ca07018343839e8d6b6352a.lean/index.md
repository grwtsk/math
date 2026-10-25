# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BooleanSpace.Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f556fc89a447c35d472b48aed39fa4d93d410faf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f556fc89a447c35d472b48aed39fa4d93d410faf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitStream](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/bitstream--b86f3504abb911a8f381b707.md) | 24 | `declaration-track:b86f3504abb911a8f381b70748b12516d7d4203689e83c4c8ea66dcc1b461269` |
| 2 | `abbrev` | [BooleanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/booleanstate--c69e24b6e68246d136633c67.md) | 27 | `declaration-track:c69e24b6e68246d136633c6750d5d2dde6a8df86d915de672ac97b687c66ea5d` |
| 3 | `def` | [xorBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/xorbit--37484bddc0c0ab9d90b400f9.md) | 30 | `declaration-track:37484bddc0c0ab9d90b400f9546a02f650e28ff4210a9541d9e5779f62121a46` |
| 4 | `theorem` | [xorBit_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/xorbit-self--f7a65af3895c83257d895316.md) | 33 | `result-track:f7a65af3895c83257d895316daf9bfefa39ccd0e6f52864ee23f69d9ad071053` |
| 5 | `theorem` | [xorBit_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/xorbit-false-right--e46daba59a1686dcd3f95f57.md) | 37 | `result-track:e46daba59a1686dcd3f95f57b8d1168f370748e3071c31423d849110cb613320` |
| 6 | `theorem` | [xorBit_cancel_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/xorbit-cancel-left--20e058aa4bb35118e5c9840f.md) | 41 | `result-track:20e058aa4bb35118e5c9840fc60707ad55843b7d068a5aecabc9fd00970dece1` |
| 7 | `structure` | [DesignatedCantorRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/designatedcantorrepresentation--d4782f2a37e3ebe9de5e2b64.md) | 50 | `declaration-track:d4782f2a37e3ebe9de5e2b64df85bcc441ce33e400b9ef6ac9819b9dea99a84f` |
| 8 | `def` | [symbolicCantorRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/symboliccantorrepresentation--2fbe05b8400464512efa68ed.md) | 60 | `declaration-track:2fbe05b8400464512efa68ed93319f28ff2ae9951d5a1dec47d7ff68fa0c9abb` |
| 9 | `theorem` | [symbolicCantorRepresentation_theta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/symboliccantorrepresentation-theta--e0d8409cb88161275b1f5a5c.md) | 65 | `result-track:e0d8409cb88161275b1f5a5c7ee8de2598ab0d06d3614521e24253723b8bb611` |
| 10 | `def` | [digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/digits--084784b8d0ee424c313daf92.md) | 72 | `declaration-track:084784b8d0ee424c313daf924bebe2ccc53d82bd1f4b606dccaea18ccdd65942` |
| 11 | `theorem` | [theta_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/theta-injective--940441c97d25bac238ec03a6.md) | 76 | `result-track:940441c97d25bac238ec03a6dc2276c67f73db2e7bc54e3c78e9f0c2af3d1117` |
| 12 | `theorem` | [theta_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/theta-surjective--8eccc1f82b46f5ffbd8f5122.md) | 80 | `result-track:8eccc1f82b46f5ffbd8f51227d2808d28918d9373980c6ecdbce226e71a42288` |
| 13 | `theorem` | [digits_theta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/digits-theta--6aa40addae3dbd470b273b59.md) | 85 | `result-track:6aa40addae3dbd470b273b5987d577161e9c26d46872382bdde14860da9bb037` |
| 14 | `theorem` | [theta_digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/theta-digits--80dc4f0d5086ce871ed0d75c.md) | 92 | `result-track:80dc4f0d5086ce871ed0d75c106c3bc0e40909fed2be54c7f8fee980bcb47be6` |
| 15 | `def` | [zeroScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/zeroscalar--1b09b441b5a630967a2fa7ff.md) | 105 | `declaration-track:1b09b441b5a630967a2fa7ff30183e6da14a4fda7453cd237425b8d04016fb3e` |
| 16 | `theorem` | [DesignatedCantorRepresentation.digits_zeroScalar](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/designatedcantorrepresentation-digits-zeroscalar--0db6c93bb48f0ec9cbf6de81.md) | 110 | `result-track:0db6c93bb48f0ec9cbf6de8147e6ae1e1793415cbae467a04bc4bdb59fcee588` |
| 17 | `def` | [distinguishedInterpreter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/distinguishedinterpreter--741f01b217ed2a6b6d43c3d4.md) | 116 | `declaration-track:741f01b217ed2a6b6d43c3d49f55a6870c84e42c7efe20e999119f8d2208e411` |
| 18 | `def` | [discrepancy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/discrepancy--8feec9ee7d2c9f9b202d8131.md) | 128 | `declaration-track:8feec9ee7d2c9f9b202d8131a5aa100f131fb76159b594aa7d4a6be2a5cfdf0b` |
| 19 | `def` | [baselineEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/baselineequiv--3ab340d29c522037a44d63e7.md) | 140 | `declaration-track:3ab340d29c522037a44d63e7d72d768305d0fa8cea161fce0211121ea8fce6b4` |
| 20 | `theorem` | [baselineEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/baselineequiv-apply--ca0756c0fb72cfd3f850a739.md) | 165 | `result-track:ca0756c0fb72cfd3f850a7394a48af49ded8fc3d1ee984b148116d3f94a32786` |
| 21 | `theorem` | [baselineEquiv_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/baselineequiv-symm-apply--64c4494a6293dc0d597d3579.md) | 176 | `result-track:64c4494a6293dc0d597d357945cf4ca363d8af8ca343a2d21151ebdece12155e` |
| 22 | `theorem` | [distinguishedInterpreter_eq_baseline_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/declarations/distinguishedinterpreter-eq-baseline-iff--720f69fb7d8587cbfc53156a.md) | 190 | `result-track:720f69fb7d8587cbfc53156a82ccfc5254462488180ea5591d34b987d461c632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
