# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BooleanSpace.Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c229a3c8a292ab0935cf8832fe1ecef70b876d97",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c229a3c8a292ab0935cf8832fe1ecef70b876d97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitStream](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/bitstream--1c6865f47ba4e7f31d60ec40.md) | 16 | `declaration-track:1c6865f47ba4e7f31d60ec40a6535461b7adf3a7c3a61a91a39133d3aa27fee3` |
| 2 | `abbrev` | [BooleanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/booleanstate--9ee98a1fe9fc5d4d44fe064b.md) | 19 | `declaration-track:9ee98a1fe9fc5d4d44fe064b656f2f0bfa322cf2b4283f2e40d137d3dc20831e` |
| 3 | `def` | [xorBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/xorbit--e51f5c75e67d51d91fa31aca.md) | 22 | `declaration-track:e51f5c75e67d51d91fa31aca8c522e09b5bcd8f7ce14d64bbb0b6bf6030734f6` |
| 4 | `theorem` | [xorBit_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/xorbit-self--523591cf45f5d5de371927f6.md) | 25 | `result-track:523591cf45f5d5de371927f692489f094bd224e7b1a39104a8e9fdb254328494` |
| 5 | `theorem` | [xorBit_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/xorbit-false-right--407a1d0dca0970a52d4e710e.md) | 29 | `result-track:407a1d0dca0970a52d4e710e0b40c517d7435926acea19a79872c5b4691a4b5d` |
| 6 | `theorem` | [xorBit_cancel_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/xorbit-cancel-left--1360e1198daeecf70e123cc2.md) | 33 | `result-track:1360e1198daeecf70e123cc24456eb0d6c8f05ecb7a564c25860e0421940b9e1` |
| 7 | `structure` | [DesignatedCantorRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/designatedcantorrepresentation--7019d089881f4a80c0ea4071.md) | 42 | `declaration-track:7019d089881f4a80c0ea4071a72facd97308838dd0a4e363c7d78a38fa8c5bdd` |
| 8 | `def` | [digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/digits--d7ce4a22922aabb8cf5ab3e6.md) | 49 | `declaration-track:d7ce4a22922aabb8cf5ab3e69eff9ba36bf8a3c5b25f07f77aae42828d177d19` |
| 9 | `theorem` | [theta_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/theta-injective--b77fc2a55301f6683166ea6d.md) | 53 | `result-track:b77fc2a55301f6683166ea6d6b8d6f24aac6c12afb3edf80e880b081c549e6d1` |
| 10 | `theorem` | [theta_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/theta-surjective--2cdffb956b619e99fde1fd4e.md) | 57 | `result-track:2cdffb956b619e99fde1fd4e6028ffabc74dbeae80f5c8cfb55d667c5bc75f4b` |
| 11 | `theorem` | [digits_theta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/digits-theta--a75ebe67fbd585f524f5e26f.md) | 62 | `result-track:a75ebe67fbd585f524f5e26f4e56a4822bfe65dda9c424174544251ded7601c7` |
| 12 | `theorem` | [theta_digits](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/theta-digits--69ec466e4549936976c4a1cd.md) | 69 | `result-track:69ec466e4549936976c4a1cd605c9223544c1ee846f07ad65d323f7be0e59352` |
| 13 | `def` | [distinguishedInterpreter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/distinguishedinterpreter--c89158f5e016f525625dfeb1.md) | 78 | `declaration-track:c89158f5e016f525625dfeb1cf4a5df20f5d5154e7571b15ec0138d96588db06` |
| 14 | `def` | [discrepancy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/discrepancy--18c8d81bbceebd22513cd648.md) | 90 | `declaration-track:18c8d81bbceebd22513cd64894cc8e1f2befcac41fde9bfc9d93d3908d8e246c` |
| 15 | `def` | [baselineEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/baselineequiv--f38dbcfaf67b69979c2b7555.md) | 102 | `declaration-track:f38dbcfaf67b69979c2b755575ab839d709b58ec71abd8c65b875c090510b8b8` |
| 16 | `theorem` | [baselineEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/baselineequiv-apply--30ceec4c836028ce80a48a90.md) | 127 | `result-track:30ceec4c836028ce80a48a90b16f8b3aa4e4d71ef2ebd78541e7c7af738c5bff` |
| 17 | `theorem` | [baselineEquiv_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant7e3e3b463b1366c08cd9f1480d99e5f1818fd18167476c658f9e40fb88960615.lean/declarations/baselineequiv-symm-apply--6aba76294e2712026f5e7a48.md) | 138 | `result-track:6aba76294e2712026f5e7a48f8fa34226d2e9765504d49bf99b80aea28a30155` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
