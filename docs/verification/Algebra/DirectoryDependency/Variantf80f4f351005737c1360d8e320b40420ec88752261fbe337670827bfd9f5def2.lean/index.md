# Verification target: GRWTSK.Algebra.DirectoryDependency.Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61f54db22b5a978f4338feb1a68be8e7b643821d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61f54db22b5a978f4338feb1a68be8e7b643821d`.

Source path: `GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Name.findPrefix](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/lean-name-findprefix--275b60c0de4fa8437a3e1aba.md) | 24 | `declaration-track:275b60c0de4fa8437a3e1abaab53f754f8b268f2f56538cfb88179deb0f1d26f` |
| 2 | `def` | [Lean.Name.prefixes](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/lean-name-prefixes--1e09a2b7ae6586708806ddfb.md) | 31 | `declaration-track:1e09a2b7ae6586708806ddfb4be16407fe576daac6cad2a2a855d7ef61e3b0ee` |
| 3 | `def` | [Lean.Name.collectPrefixes](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/lean-name-collectprefixes--756f5d563dc7306d96ab7932.md) | 38 | `declaration-track:756f5d563dc7306d96ab793216f4a143d30cb866d2479dfa6cb972b80c7dc08e` |
| 4 | `def` | [Lean.Name.prefixToName](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/lean-name-prefixtoname--987129ae52b0cea08dd2817e.md) | 42 | `declaration-track:987129ae52b0cea08dd2817e8b4fffa01ea8e68845a817b76387207362c2dd34` |
| 5 | `def` | [Lean.Environment.importPath](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/lean-environment-importpath--f9eb26961583a96c996735fb.md) | 50 | `declaration-track:f9eb26961583a96c996735fb1709e83fb291a3cf06dc489af3ffe4d18af4ed51` |
| 6 | `register_option` | [linter.directoryDependency](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/linter-directorydependency--f93f5681595f42798bd27f65.md) | 70 | `declaration-track:f93f5681595f42798bd27f65ec9efd47ef7e95186ca59853ab061ef41d756671` |
| 7 | `def` | [NamePrefixRel](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/nameprefixrel--2fdc87148db51da607111fa6.md) | 85 | `declaration-track:2fdc87148db51da607111fa6c5858f0653e7f175a4972b5dd24b650f0d5af701` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/instance--450bd0f7e7f1a4c76fd46469.md) | 89 | `declaration-track:450bd0f7e7f1a4c76fd46469d13c2c1dde6adc86e327a52d4ace2a3cf940e994` |
| 9 | `def` | [insert](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/insert--db4b67c8af503d197fe1da34.md) | 92 | `declaration-track:db4b67c8af503d197fe1da34b7d5462f86c72df445099528b7d72e5e4c1d3092` |
| 10 | `def` | [ofArray](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/ofarray--0f083fb8ae6603b3bd4861e9.md) | 98 | `declaration-track:0f083fb8ae6603b3bd4861e905796ba5124ba9e7809d7ae45eb3fa16874de208` |
| 11 | `def` | [find](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/find--759679eba173416b1e9a2370.md) | 103 | `declaration-track:759679eba173416b1e9a2370aed2c78d677c4a7027e67858a40f0a894ab6047d` |
| 12 | `def` | [findAny](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/findany--07b410af0aaef86110f7c1f0.md) | 117 | `declaration-track:07b410af0aaef86110f7c1f0c9a54e512c46ed459916f958faea26197ad390ec` |
| 13 | `def` | [contains](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/contains--d73e84503cac7e30ae38b363.md) | 129 | `declaration-track:d73e84503cac7e30ae38b363c19b7ae6b6149e7e9387b52f20eddde478a3adeb` |
| 14 | `def` | [forbiddenImportDirs](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/forbiddenimportdirs--81910418e4293e9d3608ea97.md) | 142 | `declaration-track:81910418e4293e9d3608ea97549d1f6ec67929e2e412e452cb4863c12bdc05d7` |
| 15 | `def` | [overrideAllowedImportDirs](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/overrideallowedimportdirs--eac2cdcaab2fcec5ed325707.md) | 472 | `declaration-track:eac2cdcaab2fcec5ed3257078e18b63899379ca8616a18842da08b1f4de42a5f` |
| 16 | `def` | [directoryDependencyCheck](../../../../mathematics/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/declarations/directorydependencycheck--ffb4fcca71d8ecbaf453b922.md) | 484 | `declaration-track:ffb4fcca71d8ecbaf453b922a00f6644b63c3313593a6a7a97b9ca23ba3d5cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
