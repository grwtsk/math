# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunInd.Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20587c35412e3313846c39603df036e01503a5eb",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20587c35412e3313846c39603df036e01503a5eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.MatcherApp.Transform` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.Rewrite` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Injective` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.ArgsPacker` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.WF.Eqns` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.Structural.Eqns` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.Structural.FindRecArg` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.FunIndInfo` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Data.Array` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Replace` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lambdaTelescope1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/lambdatelescope1--def2d1d212876b213d85e82b.md) | 216 | `declaration-track:def2d1d212876b213d85e82b6e72d0e6fafeb672eac3f1d01a5a13c2afdd0711` |
| 2 | `def` | [elimTypeAnnotations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/elimtypeannotations--97b44580bb98f2fd8b3fa900.md) | 223 | `declaration-track:97b44580bb98f2fd8b3fa900b5267106a7962854b0fdcdf44de46eab1e4b42bd` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/m--d5036dad064eba1506c274f9.md) | 239 | `declaration-track:d5036dad064eba1506c274f90d06bb85293b97db4e873d12a510f57e90782bdc` |
| 4 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/run--d29262fb01debd5a596e4e5a.md) | 245 | `declaration-track:d29262fb01debd5a596e4e5a668731f419f3f6a9887b11006bea2d0e8083b2d8` |
| 5 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/eval--e8e52b3701e39fd10c969ebe.md) | 246 | `declaration-track:e8e52b3701e39fd10c969ebe0af4825475ef2500d13c404abf5dfe2964d3ac1f` |
| 6 | `def` | [exec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/exec--c3c81b9d4327cd9f403200ae.md) | 247 | `declaration-track:c3c81b9d4327cd9f403200aefa56bb9b8aa4a91c6491d4d5d9d32bec4169c3d9` |
| 7 | `def` | [tell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/tell--246b3e517bc8590d1a47ae31.md) | 249 | `declaration-track:246b3e517bc8590d1a47ae31e2b7663531e867fd6c0fb28f3501a00e7c363373` |
| 8 | `def` | [localM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/localm--5c0746562a4c6191535e39d5.md) | 251 | `declaration-track:5c0746562a4c6191535e39d51e80de5ad4dfcb5f46d260b14e16f680674ecffb` |
| 9 | `def` | [localMapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/localmapm--f4315f3e13131ff533458101.md) | 256 | `declaration-track:f4315f3e13131ff533458101bfc4119d63c83944752fd368315897d3ebf7a11c` |
| 10 | `def` | [ask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/ask--35f117271febf0ac4034b36b.md) | 259 | `declaration-track:35f117271febf0ac4034b36b4c8ba9513ea61a9dcaad1a06224d0e39cf3df2ee` |
| 11 | `def` | [branch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/branch--4505f20011062f67d3e49a1f.md) | 261 | `declaration-track:4505f20011062f67d3e49a1f3f9b54faad098329c57347dfa1f7c315a66b29e1` |
| 12 | `def` | [foldAndCollect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/foldandcollect--6e6b0fcf59b3c472c57ed0ee.md) | 295 | `declaration-track:6e6b0fcf59b3c472c57ed0eefdb82b56355d4a587f50a42c3d3100693d39e361` |
| 13 | `def` | [deduplicateIHs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/deduplicateihs--e5010c7e2e93c217993e9e20.md) | 427 | `declaration-track:e5010c7e2e93c217993e9e2080e5cbb6658c3017a96d3ff59a8cda5f613537ab` |
| 14 | `def` | [assertIHs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/assertihs--de57385b1e7917b26d4edc33.md) | 437 | `declaration-track:de57385b1e7917b26d4edc3354b94914ff6f0106ee66ea394096053889dfa7cc` |
| 15 | `def` | [cleanupAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/cleanupafter--2260d879cd55db3724325289.md) | 454 | `declaration-track:2260d879cd55db372432528950cd4ee1a72243c9e338b9ba515d1c756fb986eb` |
| 16 | `abbrev` | [M2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/m2--ed56b5d530e7fcee165ac3ff.md) | 497 | `declaration-track:ed56b5d530e7fcee165ac3ff0557d6004fba6ea54fcc8152fd6891e364ca1ac1` |
| 17 | `def` | [M2.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/m2-run--2fdf70a37f3a84671b03e082.md) | 499 | `declaration-track:2fdf70a37f3a84671b03e0822432f4561951bb0ede75610c0257bf1b7895321a` |
| 18 | `def` | [M2.branch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/m2-branch--102149d80cfcfa640cbb4784.md) | 502 | `declaration-track:102149d80cfcfa640cbb478471d720671c80ab979c1e5f64ac39022834e8aad3` |
| 19 | `def` | [buildInductionCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/buildinductioncase--68533b83fdf1ecdd66a11376.md) | 507 | `declaration-track:68533b83fdf1ecdd66a113761a1142c2451a649d1721900a874ae9a5cb6c0aa4` |
| 20 | `def` | [mkLambdaFVarsMasked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/mklambdafvarsmasked--ede004d0dd4b4742575b7abc.md) | 539 | `declaration-track:ede004d0dd4b4742575b7abc0f70bab615f0bedfe70db93cb200c1646ac67f56` |
| 21 | `def` | [withRewrittenMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/withrewrittenmotive--5d3aa67468c2efb1ad3c44ca.md) | 558 | `declaration-track:5d3aa67468c2efb1ad3c44ca7fb3447f9f28b84269816da551a4e6372ba5f64c` |
| 22 | `def` | [inLastArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/inlastarg--00c89fcdf12b6fcbac14f0f6.md) | 563 | `declaration-track:00c89fcdf12b6fcbac14f0f6becff2dbcfa6722237624fe55afd9e0f0984f11f` |
| 23 | `def` | [withRewrittenMotiveArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/withrewrittenmotivearg--6ff80a3d0ed4583ba760dc47.md) | 576 | `declaration-track:6ff80a3d0ed4583ba760dc47043962c22da0912097a9d0fbc27625aa3e9cf893` |
| 24 | `def` | [inProdLambdaLastArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/inprodlambdalastarg--ece84e908b2c57e54afd555c.md) | 582 | `declaration-track:ece84e908b2c57e54afd555c3a92b03e98a3a9b969e9f83e4a29edaa1820134d` |
| 25 | `def` | [rwLetWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/rwletwith--30b4d52739f1c3e5dd482d84.md) | 594 | `declaration-track:30b4d52739f1c3e5dd482d84096d21eff804e7d2e8127c1cc358e4b0ce70cf95` |
| 26 | `def` | [rwMData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/rwmdata--feb3ea3e5ce58a4204ca3280.md) | 601 | `declaration-track:feb3ea3e5ce58a4204ca3280853929bd0a121d18fbbf8be264c7cfd4cb3819cb` |
| 27 | `def` | [rwFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/rwfun--2151d72728ede68a1bbce9e5.md) | 604 | `declaration-track:2151d72728ede68a1bbce9e50323a0cb003fce42c7c418bbb3da1bda5b5fecd5` |
| 28 | `def` | [buildInductionBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/buildinductionbody--e116eca33908553226c3f32e.md) | 621 | `declaration-track:e116eca33908553226c3f32e9d1ce3f2780db712b6d0b981552ab69b36b73f2a` |
| 29 | `def` | [abstractIndependentMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/abstractindependentmvars--39683c6b57f28363d53430e2.md) | 783 | `declaration-track:39683c6b57f28363d53430e2b8beeaacb622e9452543afed1b648e6d8aa27beb` |
| 30 | `def` | [deriveUnaryInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/deriveunaryinduction--e93da02e4a841ae0ede1a5e0.md) | 803 | `declaration-track:e93da02e4a841ae0ede1a5e05418765a0e92ba6d36957467757807bc90e82922` |
| 31 | `def` | [projectMutualInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/projectmutualinduct--48ba5ec1b11230cc0b22a92f.md) | 918 | `declaration-track:48ba5ec1b11230cc0b22a92f81356fc9176f423d3db5ac2f81d5c068a00b5f3e` |
| 32 | `def` | [setNaryFunIndInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/setnaryfunindinfo--7ff88e655633b0dee74fb5d3.md) | 939 | `declaration-track:7ff88e655633b0dee74fb5d38ed0f8d159549057612c9532093e04e5c74ec6b2` |
| 33 | `def` | [cleanPackedArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/cleanpackedargs--24c9ea60a2b408a6bf48003f.md) | 969 | `declaration-track:24c9ea60a2b408a6bf48003f97878e8c32a6de3f6b3fe876083d9ab8e12493bd` |
| 34 | `def` | [unpackMutualInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/unpackmutualinduction--66ddcf8bce4fe2c7dba2dcea.md) | 1046 | `declaration-track:66ddcf8bce4fe2c7dba2dcea0d6e15048f4ec4fb9529adbc8b0b9133386d2344` |
| 35 | `def` | [withLetDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/withletdecls--c2b4dd86c07ba2042f272e83.md) | 1093 | `declaration-track:c2b4dd86c07ba2042f272e8345aeb14bea4be97c7cfe99840f8f8c3a1736892e` |
| 36 | `def` | [deriveInductionStructural](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/deriveinductionstructural--4fd3ed7e8b85d58c4e60969d.md) | 1109 | `declaration-track:4fd3ed7e8b85d58c4e60969d23bb32b997744918b43cfc60b8fae883f1de7737` |
| 37 | `def` | [refinedArguments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/refinedarguments--293a9c14d0226e6ccb6845a9.md) | 1349 | `declaration-track:293a9c14d0226e6ccb6845a9b209e1e478b8c095d6e2f41a13b9729cd6a527bb` |
| 38 | `def` | [deriveCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/derivecases--8836037b30e00e1ba03e176b.md) | 1400 | `declaration-track:8836037b30e00e1ba03e176b8f93078199d8da11bcd215399c6f63fea993b853` |
| 39 | `def` | [deriveInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/deriveinduction--b94970fd05c1d2bd91adbf80.md) | 1487 | `declaration-track:b94970fd05c1d2bd91adbf80e585f623088e39ab91574df2b7b22fd721976eea` |
| 40 | `def` | [isFunInductName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/isfuninductname--7eff951f4aadb5544775c94e.md) | 1508 | `declaration-track:7eff951f4aadb5544775c94e7850ab23f7161bec64d6311f7f8c10646f434e93` |
| 41 | `def` | [isFunCasesName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/isfuncasesname--3144adee53fd2668a787ad78.md) | 1531 | `declaration-track:3144adee53fd2668a787ad7887c3d8a5f42315a39c9a62abdecd010d7e9784a7` |
| 42 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/builtin-initialize--688cff531fbd168b408a7416.md) | 1540 | `declaration-track:688cff531fbd168b408a74165f14ef32e0983cc554ce5aa723e5997dc9531273` |
| 43 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Varianteb3c0f75573dcff85fdd9b90745dfa9be129bd4509567b4d3300772d40845a37.lean/declarations/builtin-initialize--6b6ccc90c94d5fcd963b9565.md) | 1561 | `declaration-track:6b6ccc90c94d5fcd963b95657ab2d1997688de7b2d0a38456f5ed351c1f9c9b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
