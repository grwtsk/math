# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictInitial.Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d85d797eedcda287eb4feb0cb62f197dbf0b5992",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d85d797eedcda287eb4feb0cb62f197dbf0b5992`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasStrictInitialObjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/hasstrictinitialobjects--5b258b2bc16aa78828c24c7b.md) | 66 | `declaration-track:5b258b2bc16aa78828c24c7bb9241536d7693df1b8fc42ef260541abc3d83a48` |
| 2 | `theorem` | [IsInitial.isIso_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitial-isiso-to--76bbc37a9b6f22643c0dc734.md) | 75 | `result-track:76bbc37a9b6f22643c0dc7345dcc60d433e8718dadc1041fe1d35665d912836f` |
| 3 | `theorem` | [IsInitial.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitial-strict-hom-ext--659c9bd256f653a0aecc0ff8.md) | 78 | `result-track:659c9bd256f653a0aecc0ff8fbfec1d010b4dff29143ffb30f40903f4b4d23d9` |
| 4 | `theorem` | [IsInitial.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitial-subsingleton-to--a36b4367203ae7dfa1e441d9.md) | 83 | `result-track:a36b4367203ae7dfa1e441d92f49d372bfb9126dcef9da82c5cf05b9a9d6b423` |
| 5 | `def` | [IsInitial.ofStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitial-ofstrict--516d5441072fcad68956beac.md) | 88 | `declaration-track:516d5441072fcad68956beacce58982f6261fd23ac43a449ff857729a764221f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/instance--7160e57357456260f89d91de.md) | 93 | `declaration-track:7160e57357456260f89d91de98075e8482dc52fc34907c7383a3d8560efd7ab8` |
| 7 | `def` | [mulIsInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/mulisinitial--0eac3cb4cbb4c6226f2540dc.md) | 98 | `declaration-track:0eac3cb4cbb4c6226f2540dc54bdc4a8fdc752ea4b23cfd86d93b8001597be69` |
| 8 | `theorem` | [mulIsInitial_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/mulisinitial-inv--ae178a311d4a1332c42c420c.md) | 103 | `result-track:ae178a311d4a1332c42c420c229815d3bcffce4421fbcf77dff93e354df5b6ce` |
| 9 | `def` | [isInitialMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitialmul--2ed9f0a2821796fdc15a7054.md) | 109 | `declaration-track:2ed9f0a2821796fdc15a7054f4853deb59d7ce37c83c4226c646c77c18b66af3` |
| 10 | `theorem` | [isInitialMul_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isinitialmul-inv--e93ae7923661c5dfddc1b0e1.md) | 114 | `result-track:e93ae7923661c5dfddc1b0e198835aee31390bb69292732c5cc02276ee099380` |
| 11 | `instance` | [initial_isIso_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/initial-isiso-to--58c83385df82438dc62407ef.md) | 120 | `declaration-track:58c83385df82438dc62407ef3191f6156b07afb3d51e363c39faf7542e094a97` |
| 12 | `theorem` | [initial.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/initial-strict-hom-ext--c3c38dd1a05adbc2a43aa5e2.md) | 124 | `result-track:c3c38dd1a05adbc2a43aa5e29f131c5a89734f265f86d496956377421d6fece2` |
| 13 | `theorem` | [initial.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/initial-subsingleton-to--bedc9b7052d6056d4e572cf0.md) | 127 | `result-track:bedc9b7052d6056d4e572cf051640d3ef013bb5b8aa34d2e67b94df3037e6004` |
| 14 | `def` | [mulInitial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/mulinitial--0635b3da14f00356a92d658b.md) | 135 | `declaration-track:0635b3da14f00356a92d658bc138211a6a9892e2da923c9891db69b207106057` |
| 15 | `theorem` | [mulInitial_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/mulinitial-inv--14154401897b2f752da95d98.md) | 139 | `result-track:14154401897b2f752da95d983a318b0fc41283ba435dcd9c90271468c3fca25d` |
| 16 | `def` | [initialMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/initialmul--3eecc37f8ee92f6534821566.md) | 147 | `declaration-track:3eecc37f8ee92f6534821566bd657071cf6dea615bceb57401278cf06d77fff4` |
| 17 | `theorem` | [initialMul_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/initialmul-inv--6ceecc5d6cd19510a1ae2e95.md) | 151 | `result-track:6ceecc5d6cd19510a1ae2e95757837b5a3586850e21ec477bf0e6ee0b87dad87` |
| 18 | `theorem` | [hasStrictInitialObjects_of_initial_is_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/hasstrictinitialobjects-of-initial-is-strict--085c566ad0cc2f403fcad764.md) | 158 | `result-track:085c566ad0cc2f403fcad76499d0758dbb04cf277595d411c607fbd580bb4d98` |
| 19 | `class` | [HasStrictTerminalObjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/hasstrictterminalobjects--99e6c5ac0d2c6f296d6528b7.md) | 174 | `declaration-track:99e6c5ac0d2c6f296d6528b778080d17697c879dfe31ca8c2094461df9b760aa` |
| 20 | `theorem` | [IsTerminal.isIso_from](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isterminal-isiso-from--9d4752b0b766b6d849bb0538.md) | 183 | `result-track:9d4752b0b766b6d849bb05382432afd650c401401b5d1a2abb68d1a51bd82341` |
| 21 | `theorem` | [IsTerminal.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isterminal-strict-hom-ext--11aea9094c89b0bff398bc9c.md) | 186 | `result-track:11aea9094c89b0bff398bc9c5a912cf176fef65c3a89ee63cf6e330f2c8768b1` |
| 22 | `def` | [IsTerminal.ofStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isterminal-ofstrict--547566dc3fc7f2ca5a3c3fe3.md) | 193 | `declaration-track:547566dc3fc7f2ca5a3c3fe37298057a09e0ac9367f9bf1a8cd4dd093c07ea75` |
| 23 | `theorem` | [IsTerminal.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/isterminal-subsingleton-to--663cfee47cc67b1ec3f8e08c.md) | 198 | `result-track:663cfee47cc67b1ec3f8e08c2690f50fef105ac70ee21154a3d76ff0c5a39c7d` |
| 24 | `theorem` | [limit_π_isIso_of_is_strict_terminal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/limit-isiso-of-is-strict-terminal--e6c1107324dc679e63e9bf83.md) | 205 | `result-track:e6c1107324dc679e63e9bf8398916d42bc892c645dcc6cab35359a6c9f046fcd` |
| 25 | `instance` | [terminal_isIso_from](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/terminal-isiso-from--52e1aec7e78afdc30416a447.md) | 240 | `declaration-track:52e1aec7e78afdc30416a447f0fdc37716f2f39ae4560d20cdd37a65098197be` |
| 26 | `theorem` | [terminal.strict_hom_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/terminal-strict-hom-ext--266368cad006424062a9ce30.md) | 244 | `result-track:266368cad006424062a9ce3088e53a8f1e1ff1d707eb97619f44fc98ecb40140` |
| 27 | `theorem` | [terminal.subsingleton_to](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/terminal-subsingleton-to--65a9a2a1eeb2c67a122892f2.md) | 247 | `result-track:65a9a2a1eeb2c67a122892f2866c6148d7363ae70d19b6054f161e324caf91ad` |
| 28 | `theorem` | [hasStrictTerminalObjects_of_terminal_is_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant3784928ab3ec46ecdcf83e20b6750f39a6f5bb76a4e57150835e180d941449bb.lean/declarations/hasstrictterminalobjects-of-terminal-is-strict--ed11371bb9b29b788b7245b5.md) | 254 | `result-track:ed11371bb9b29b788b7245b52845838d384176c8c4cbd78e4171ff1800ba2436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
