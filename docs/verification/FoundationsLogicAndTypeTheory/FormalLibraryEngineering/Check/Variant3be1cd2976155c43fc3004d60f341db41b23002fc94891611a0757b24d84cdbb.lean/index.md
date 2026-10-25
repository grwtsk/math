# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd7d38b80b555b456edbfa5bd0a6a5126e839adf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd7d38b80b555b456edbfa5bd0a6a5126e839adf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/context--39cc4b5088d64c434540c6a0.md) | 97 | `declaration-track:39cc4b5088d64c434540c6a0626b72fce79923ae98d44a4d244cda7a0cfda862` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/state--4c09a0b3c5a0f50910fa2892.md) | 103 | `declaration-track:4c09a0b3c5a0f50910fa28924e8e23c72d0f3262a7fc97097bdf7c1b5013f282` |
| 3 | `abbrev` | [CheckM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkm--df56a3a3c52240f0d69ca64a.md) | 107 | `declaration-track:df56a3a3c52240f0d69ca64afff13063bb8c48e9bb038bb6a5547ced8e6769a7` |
| 4 | `def` | [checkTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checktypes--e4e529d875f094b9b9178dc1.md) | 109 | `declaration-track:e4e529d875f094b9b9178dc1fb233ffa9a5b9ccb3bcfa5bc52d2d6a772032956` |
| 5 | `def` | [checkFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkfvar--5dddaeca855883c302023291.md) | 112 | `declaration-track:5dddaeca855883c30202329184e1f93f6febb8155833c1180f51aab5b606d958` |
| 6 | `def` | [isCtorParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/isctorparam--164c07c06f7c692fef6bdc8f.md) | 117 | `declaration-track:164c07c06f7c692fef6bdc8fa8abe72045da0566d892152d46d51ab614709f09` |
| 7 | `def` | [checkAppArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkappargs--cebc014d0a2cbf33499fa303.md) | 122 | `declaration-track:cebc014d0a2cbf33499fa3031ba637c839dcf6fcd46b9d52a2cb2a2b1498383f` |
| 8 | `def` | [checkLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkletvalue--9885065e48a3c4064f06c32c.md) | 145 | `declaration-track:9885065e48a3c4064f06c32cdd0b557432e1095a8c0a300b15f75fd56cbb4ca6` |
| 9 | `def` | [checkJpInScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkjpinscope--873c4ac7a22897d54d6cc6f2.md) | 152 | `declaration-track:873c4ac7a22897d54d6cc6f252391e9982eda8a96803111be1a2b0eb6c08cdb3` |
| 10 | `def` | [checkParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkparam--ec160b0963bbc9afa1c285e4.md) | 166 | `declaration-track:ec160b0963bbc9afa1c285e4efec31f229340aa42bf579a313a3161043aae9db` |
| 11 | `def` | [checkParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkparams--963868649919d484d26133de.md) | 170 | `declaration-track:963868649919d484d26133de3c4a122b4442692404a72a8de013c38be745ad2e` |
| 12 | `def` | [checkLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkletdecl--30c7f793592960574f998a1f.md) | 173 | `declaration-track:30c7f793592960574f998a1feefdb2a8c1a7f4f2c18be8fd88d619d820d171fa` |
| 13 | `def` | [addFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/addfvarid--43a4201fb1b34a96bc305525.md) | 182 | `declaration-track:43a4201fb1b34a96bc3055259bad7b57960ab65328f622a959b5fa464db5cf01` |
| 14 | `def` | [withFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/withfvarid--fea7e441ccb574ab181d0d92.md) | 187 | `declaration-track:fea7e441ccb574ab181d0d924cf861fb256fafefa70c4c9b67bc36396a3a01da` |
| 15 | `def` | [withJp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/withjp--083dca8e27e8fc56b851fa09.md) | 191 | `declaration-track:083dca8e27e8fc56b851fa09544f55a5a2b5987f522fcbaebf22db6f5b3dac44` |
| 16 | `def` | [withParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/withparams--4a1778833aa0dc46988828d4.md) | 195 | `declaration-track:4a1778833aa0dc46988828d40a96de4e782627dbabceef4ba2bf1dd547cc6981` |
| 17 | `def` | [checkFunDeclCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkfundeclcore--2dba96e89bcf0d788653f729.md) | 204 | `declaration-track:2dba96e89bcf0d788653f729e2c1b5d256a08377d7f0a64f314b173a46b56459` |
| 18 | `def` | [checkFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkfundecl--a8fb617af303d10b8e97be21.md) | 213 | `declaration-track:a8fb617af303d10b8e97be21133d9550a022713153b8b44c0a5f44a130af4781` |
| 19 | `def` | [checkCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/checkcases--dd6c4c070c2b1de82dcf0731.md) | 223 | `declaration-track:dd6c4c070c2b1de82dcf0731642d0995493de6b167d225376515dd22e535631f` |
| 20 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/check--6fde303185455a003c0044d7.md) | 242 | `declaration-track:6fde303185455a003c0044d7e6195655b769bbf7d03b3f7b1a28568229bc042a` |
| 21 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/run--85394e53d03532d17299661b.md) | 263 | `declaration-track:85394e53d03532d17299661bcc26c2951556040b60a5fa9287ca88dfb206691c` |
| 22 | `def` | [Decl.check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant3be1cd2976155c43fc3004d60f341db41b23002fc94891611a0757b24d84cdbb.lean/declarations/decl-check--3c61744a6bb7c9897f8f06cf.md) | 269 | `declaration-track:3c61744a6bb7c9897f8f06cff8062c4d9db0348ec315982f529c7fe95094762d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
