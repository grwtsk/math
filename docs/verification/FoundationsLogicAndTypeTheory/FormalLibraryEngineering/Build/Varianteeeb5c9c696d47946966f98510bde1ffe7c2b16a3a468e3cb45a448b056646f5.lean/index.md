# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Build.Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97d73984053ff23eec2032ac0b80d4576dbee791",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97d73984053ff23eec2032ac0b80d4576dbee791`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Infos` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Monad` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Util.IO` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/buildspec--dd56f472b5589e8d153c119f.md) | 31 | `declaration-track:dd56f472b5589e8d153c119f86b9a54e7a6cb3eb8c72f0b0baa3d9e3f7ea297b` |
| 2 | `def` | [mkBuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/mkbuildspec--d26ae15210955990dc402cca.md) | 36 | `declaration-track:d26ae15210955990dc402cca86b63d9d18d6fcef7d980b5c0ee97c202e24a83e` |
| 3 | `def` | [mkConfigBuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/mkconfigbuildspec--424e2fff07a19f44c91865bc.md) | 43 | `declaration-track:424e2fff07a19f44c91865bc85a1a2e78f83ae3cc3c5c5741941124043707b99` |
| 4 | `def` | [BuildSpec.fetch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/buildspec-fetch--6f1355df1916c3dc89e50cca.md) | 52 | `declaration-track:6f1355df1916c3dc89e50cca5f3ad2c022e9378ab73df4f487c158d0514846ba` |
| 5 | `def` | [BuildSpec.build](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/buildspec-build--ce5a450016802b02f419ef35.md) | 55 | `declaration-track:ce5a450016802b02f419ef3586c3b56d451e39bdcf613f941b5d0bfad3340c64` |
| 6 | `def` | [BuildSpec.query](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/buildspec-query--0a1ad88872c9a55bd95320bb.md) | 58 | `declaration-track:0a1ad88872c9a55bd95320bb6ee5d1c1da58ce78b3abe89a3a2d74f0d664de0a` |
| 7 | `def` | [buildSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/buildspecs--b566e1c9e299864fc8e85402.md) | 62 | `declaration-track:b566e1c9e299864fc8e854027dd63ed6031ece75950c0d8278ec4f72e337a9bc` |
| 8 | `def` | [querySpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/queryspecs--3afd201f7b66015b0fab48f2.md) | 65 | `declaration-track:3afd201f7b66015b0fab48f20e26fd5e81fb30769334b20a302fa900c528a98e` |
| 9 | `def` | [parsePackageSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/parsepackagespec--d4c3d0134ac451a46d478a96.md) | 70 | `declaration-track:d4c3d0134ac451a46d478a963e676c3d19eba2854cd5bd03280554b47cc757bc` |
| 10 | `def` | [resolveModuleTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvemoduletarget--6ae20021521177cad85c764b.md) | 78 | `declaration-track:6ae20021521177cad85c764bd5443e9a044a3346d99d5c16b5484a7a697be22c` |
| 11 | `def` | [resolveCustomTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvecustomtarget--601b0c25917bc686e2dd5d53.md) | 89 | `declaration-track:601b0c25917bc686e2dd5d5337d44223de21eb3ca6438e33a578ecf1b203e5a5` |
| 12 | `def` | [resolveConfigDeclTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolveconfigdecltarget--ed6e0a2605e95336fd4b224e.md) | 97 | `declaration-track:ed6e0a2605e95336fd4b224e2b632bfbce1ccbc795f4ac05793d17115d90b19c` |
| 13 | `def` | [resolveTargetInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvetargetinpackage--acd0eb73341e2f6f4009e422.md) | 113 | `declaration-track:acd0eb73341e2f6f4009e4220fb8c529e9ad540965bab1ae11001e822bd97ed1` |
| 14 | `def` | [resolveDefaultPackageTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvedefaultpackagetarget--8ddb3b6841232938966c51d6.md) | 123 | `declaration-track:8ddb3b6841232938966c51d65bd6e51f684c019a48c5dcdb1b6d08c7dc9addde` |
| 15 | `def` | [resolvePackageTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvepackagetarget--348cd925776e326ecb49c543.md) | 128 | `declaration-track:348cd925776e326ecb49c543ace4b8d06d4d3170093f921767acfb56ec8a1354` |
| 16 | `def` | [resolveTargetInWorkspace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvetargetinworkspace--b1a78b264d897282afe66c82.md) | 139 | `declaration-track:b1a78b264d897282afe66c8248abbf129ba5d43bc945a2c93c5c0afeadd1481b` |
| 17 | `def` | [resolveTargetLikeSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvetargetlikespec--5ce3574124378175cd0ffe41.md) | 151 | `declaration-track:5ce3574124378175cd0ffe41052915707c33ad69100c42f8d3e22b4bdbf36eb5` |
| 18 | `def` | [resolveTargetBaseSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/resolvetargetbasespec--074c6ae61fe2c1744d969cd1.md) | 180 | `declaration-track:074c6ae61fe2c1744d969cd1317df76bf7de2efe2cca8df535a17c7d547dadb9` |
| 19 | `def` | [parseExeTargetSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/parseexetargetspec--d05b5b80691f468891a757d2.md) | 202 | `declaration-track:d05b5b80691f468891a757d2ffb47254a76df91a35bc2fb84096b5bf73deacab` |
| 20 | `def` | [parseTargetSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/parsetargetspec--ed48aedfa5487b6029f960fd.md) | 221 | `declaration-track:ed48aedfa5487b6029f960fd903c412478c1d5a394ae03c92dcc13d11a2d31d7` |
| 21 | `def` | [parseTargetSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/declarations/parsetargetspecs--367d174980b676b483f1f1c0.md) | 232 | `declaration-track:367d174980b676b483f1f1c026c0d499cf2baf60c653986cff6c2a9b73aa066d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
