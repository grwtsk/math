# Verification target: GRWTSK.Algebra.PUnit.Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70dfe6abf830ed73e46cb51e23ea12ec7328fed",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/index.md) · [Full source](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70dfe6abf830ed73e46cb51e23ea12ec7328fed`.

Source path: `GRWTSK/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/smul--2a6711aa3c9f7ef2a9745f2a.md) | 29 | `declaration-track:2a6711aa3c9f7ef2a9745f2a9cd18af979e3cd0faeeced24c9fc4e405b84a7aa` |
| 2 | `theorem` | [smul_eq](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/smul-eq--bb959c1293d46ea9f61e8b4c.md) | 33 | `result-track:bb959c1293d46ea9f61e8b4c20b9fc0ad0f65c9767ea3c68b30543a6df5b6e68` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--52e88d7de312bb057d3c12cf.md) | 37 | `declaration-track:52e88d7de312bb057d3c12cfc0febb43bbfdd007eaa412a312b9374f23aa1ca8` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--364a5cab6d504977e52705f6.md) | 41 | `declaration-track:364a5cab6d504977e52705f60d11f9076f8dc5a2c37f148cb4300dc8dbb8c9ec` |
| 5 | `instance` | [instIsScalarTowerOfSMul](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instisscalartowerofsmul--ad15b04cc147058cd3445e40.md) | 45 | `declaration-track:ad15b04cc147058cd3445e4036fa686c766b39dee0528385b80154473fe79098` |
| 6 | `instance` | [smulWithZero](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/smulwithzero--dbc125b13b726a84b16046d9.md) | 48 | `declaration-track:dbc125b13b726a84b16046d96cc3080886c51f3170cae36fc9bd90afd5077229` |
| 7 | `instance` | [mulAction](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/mulaction--2967ca33361b0b86ea3f8803.md) | 53 | `declaration-track:2967ca33361b0b86ea3f88035761b055706a69e8ca7fefc805107f386a07ecee` |
| 8 | `instance` | [distribMulAction](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/distribmulaction--e979818e9b6f9c0029303dab.md) | 58 | `declaration-track:e979818e9b6f9c0029303dab14279240f1fb19469f1dd9ac42e7e5d184ecb510` |
| 9 | `instance` | [mulDistribMulAction](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/muldistribmulaction--40ffdfc83b64c4250af78101.md) | 63 | `declaration-track:40ffdfc83b64c4250af781015a6e9ac830136bd99c155344fae1ebfb352cdef5` |
| 10 | `instance` | [mulSemiringAction](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/mulsemiringaction--3df94fa90e9fc5bf2c1e5216.md) | 68 | `declaration-track:3df94fa90e9fc5bf2c1e5216f1e4c39930e6c27502564d26f6ad757ad2242106` |
| 11 | `instance` | [mulActionWithZero](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/mulactionwithzero--695702da8a3c1255e51933f0.md) | 71 | `declaration-track:695702da8a3c1255e51933f0dc2cececc8625ca0b92d1082f77a05249382d857` |
| 12 | `instance` | [module](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/module--8ff3480fea1a71e864c84c17.md) | 74 | `declaration-track:8ff3480fea1a71e864c84c17d05429d9a420552ff46d09fda4fbe47a34329c6f` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--928bc1a5aadc4caf3cb702d8.md) | 80 | `declaration-track:928bc1a5aadc4caf3cb702d8280cd8e338ee99fbb108e96004ace8ce40db184c` |
| 14 | `lemma` | [smul_eq'](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/smul-eq--0acdac1d1cb4fa02a9dccbc4.md) | 84 | `result-track:0acdac1d1cb4fa02a9dccbc47217be57f333b66aa4a92d9958964bb588bb3f4e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--598a6a1f65aa0ad153b97f71.md) | 86 | `declaration-track:598a6a1f65aa0ad153b97f7109695121ceb83f4c31ec8a1ad0f5efb6a0998d55` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--1473e7420770f1ceb4f1cb71.md) | 87 | `declaration-track:1473e7420770f1ceb4f1cb71fc9fc5a21a75308623f219584928ddc1c0b3ddbc` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--c54673b3e2fb29e2dd2a14ab.md) | 89 | `declaration-track:c54673b3e2fb29e2dd2a14abb83b8582c0969093d7b4fd1b10b1a888210c5733` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--be9ebc1ed2ce142765feecfa.md) | 94 | `declaration-track:be9ebc1ed2ce142765feecfa79769fa58e9bb1ed5000b72b8107241e2fedde17` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant89b6395eaf53d6f8a140fc317020832636ca57ad35a057098700a959ef115d58.lean/declarations/instance--6bd97d0be0bed1ef55f2975a.md) | 98 | `declaration-track:6bd97d0be0bed1ef55f2975ad0a8da4caed746c484ddc5585e429c277ea815e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
