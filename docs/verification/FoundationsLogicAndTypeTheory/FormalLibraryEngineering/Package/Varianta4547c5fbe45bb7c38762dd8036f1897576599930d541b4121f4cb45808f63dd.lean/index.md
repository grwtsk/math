# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Package.Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3ceb3c61c8b0bffb3035939baaa38f818d69ba",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3ceb3c61c8b0bffb3035939baaa38f818d69ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.IO` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Load.Lean` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Load.Toml` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/mkpackage--c5baa59a18620b30436cf224.md) | 35 | `declaration-track:c5baa59a18620b30436cf224ad31a2b3fb816166a6641e57336cc453da38e2bf` |
| 2 | `theorem` | [wsIdx_mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/wsidx-mkpackage--f5d087e587c573d695cfea6c.md) | 59 | `result-track:f5d087e587c573d695cfea6ca3ac374435785e4cd2617a787e9303c9367405eb` |
| 3 | `theorem` | [depIdxs_mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/depidxs-mkpackage--2ccd4c37547e4302ae4b3a48.md) | 60 | `result-track:2ccd4c37547e4302ae4b3a4827932c64dea22bf809971725f5c69d3145094836` |
| 4 | `def` | [configFileExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/configfileexists--b9754e82f37a8d499e2b8bcd.md) | 66 | `declaration-track:b9754e82f37a8d499e2b8bcd4a1dfb83ebe4b07cc48aa1765e3ee3e0798aeb01` |
| 5 | `def` | [realConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/realconfigfile--b2c9bba5ce9788425685717c.md) | 78 | `declaration-track:b2c9bba5ce9788425685717c32066f8f12a3eef308aabed610b070c7afbf6e4a` |
| 6 | `def` | [resolveConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/resolveconfigfile--4178d5be1a05b6c50e1bfefd.md) | 93 | `declaration-track:4178d5be1a05b6c50e1bfefdec0f4ef5c1f87aabb02962e06d5649a1ff242207` |
| 7 | `def` | [loadConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/loadconfigfile--dd5ad4ae5bea09b01a95af69.md) | 129 | `declaration-track:dd5ad4ae5bea09b01a95af6923382afb0138b76edddc9dc8cd17b8300909408e` |
| 8 | `def` | [loadPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Varianta4547c5fbe45bb7c38762dd8036f1897576599930d541b4121f4cb45808f63dd.lean/declarations/loadpackage--fa7ed59bf6ef817c90f9c974.md) | 135 | `declaration-track:fa7ed59bf6ef817c90f9c97464ebeffd125bbc6b6b7a9426f4bce426debb91d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
