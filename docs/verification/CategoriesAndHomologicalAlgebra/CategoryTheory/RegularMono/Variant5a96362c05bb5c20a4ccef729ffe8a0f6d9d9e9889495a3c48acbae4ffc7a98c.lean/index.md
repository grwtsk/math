# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9b2f2adffe0b032141ce6c09aeeaaee17971415",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9b2f2adffe0b032141ce6c09aeeaaee17971415`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RegularMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularmono--5102409f3c74fa0cb9fc694b.md) | 44 | `declaration-track:5102409f3c74fa0cb9fc694b2414467360f9545451a4f51ec8627bd869a2844b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--95f16ff3537299f8ba6761bb.md) | 60 | `declaration-track:95f16ff3537299f8ba6761bb172b6de14681fe024c8e41b32ccc89dd8c99e3cf` |
| 3 | `instance` | [equalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/equalizerregular--1949dfd92cf2e4ea29f69a30.md) | 64 | `declaration-track:1949dfd92cf2e4ea29f69a3022667ca25b61e2715b27c6b7de01af21af0405d5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--7fee559a7c7e11d63d45b13d.md) | 77 | `declaration-track:7fee559a7c7e11d63d45b13da98d2412a285a245151f2d66464c5acd0f0a07ee` |
| 5 | `def` | [RegularMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularmono-lift--a61c7e48e01aacfe8ec4eda4.md) | 87 | `declaration-track:a61c7e48e01aacfe8ec4eda431b91a88213a9aa18ba4427c31b183b81a51a586` |
| 6 | `def` | [regularOfIsPullbackSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularofispullbacksndofregular--388dd8f2650ad059162de343.md) | 98 | `declaration-track:388dd8f2650ad059162de343c0af0dfd9edc34c9f73aa87309fbe95824fedb51` |
| 7 | `def` | [regularOfIsPullbackFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularofispullbackfstofregular--86e26df6d3b2fe91f89eefd9.md) | 129 | `declaration-track:86e26df6d3b2fe91f89eefd942471ea5f47026c8ddb31467266e08cb08f4a1b9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--816f96036108cf4a2b35324f.md) | 135 | `declaration-track:816f96036108cf4a2b35324f086a2cc647ce2247d1c4a3fe71d5e1bf04a8f969` |
| 9 | `theorem` | [isIso_of_regularMono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/isiso-of-regularmono-of-epi--5644741ea1ed400e27da21c1.md) | 148 | `result-track:5644741ea1ed400e27da21c17f17ac13713e6a4b59182951b541a4a4f32717b6` |
| 10 | `class` | [RegularMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularmonocategory--cd65d1100d23698e30302e0c.md) | 157 | `declaration-track:cd65d1100d23698e30302e0c4c7ece7ea3297f823f1086400aff6a7c70005dde` |
| 11 | `def` | [regularMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularmonoofmono--cbe5ebcbb6017d52d3485823.md) | 166 | `declaration-track:cbe5ebcbb6017d52d34858233394ead914dc34be57b3eb774f814ed19078139b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--30c503d420dd2ded2b9be533.md) | 170 | `declaration-track:30c503d420dd2ded2b9be533b5bfb6cd20e9ef4d606ddfefafc1606a7bbdd3fb` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--95b45d35f8de83b3a936e4ac.md) | 177 | `declaration-track:95b45d35f8de83b3a936e4ac2098532ec30cd9512fc3bf1cbcfb25bc8bed1601` |
| 14 | `class` | [RegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularepi--81c11af944a6c076f1174454.md) | 185 | `declaration-track:81c11af944a6c076f117445405620693a71a17427b28f0684b0acd48651f74b9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--f47a7dfb39932ca6351f22f9.md) | 199 | `declaration-track:f47a7dfb39932ca6351f22f93f8a831d970450633d2a31960822d4478c74df5d` |
| 16 | `instance` | [coequalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/coequalizerregular--d6594a3d66e72540085e2cf7.md) | 203 | `declaration-track:d6594a3d66e72540085e2cf7abd1744f92c01f2e347ec50c5166a2f55cb153e9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--8e85e7b7a39e5152cbaacdbc.md) | 216 | `declaration-track:8e85e7b7a39e5152cbaacdbc6daa2550ef90f7efa4dfd95d8dca742ce6b4e68d` |
| 18 | `def` | [RegularEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularepi-desc--49352ee4d4755d42ee417fca.md) | 226 | `declaration-track:49352ee4d4755d42ee417fca6916064ebdd5e5d1019c7b0e3ef41d666d996f42` |
| 19 | `def` | [regularOfIsPushoutSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularofispushoutsndofregular--5e9c180bbd1fe908b718d77f.md) | 237 | `declaration-track:5e9c180bbd1fe908b718d77f1bbe21467d1e48bc176a5d8d85dda0f991c9740f` |
| 20 | `def` | [regularOfIsPushoutFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularofispushoutfstofregular--8f1807a987790c683a5eddc5.md) | 267 | `declaration-track:8f1807a987790c683a5eddc5c1d1a51e6ab1799a378ec8822f186dd3035888f0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--9d83532a3b21aa7a048ec7ab.md) | 273 | `declaration-track:9d83532a3b21aa7a048ec7ab2f5b99c685bef29f9f6d296beb4b99ffd4c6dc33` |
| 22 | `theorem` | [isIso_of_regularEpi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/isiso-of-regularepi-of-mono--e438ac0dff78df54fc1ee780.md) | 289 | `result-track:e438ac0dff78df54fc1ee7808e35a91b9ca6bfad728dedb4178a647b6da393f0` |
| 23 | `class` | [RegularEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularepicategory--e553f549793211c2f82f9b63.md) | 298 | `declaration-track:e553f549793211c2f82f9b63e511d6c20ce0072bffbdf89fc51b1f0a43fddbad` |
| 24 | `def` | [regularEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/regularepiofepi--142c82b9f9891d4f78b0ac45.md) | 307 | `declaration-track:142c82b9f9891d4f78b0ac454cd11f8d6195ff1d0622183ba9859d993720daee` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--9e4482c26994d29cd4a993d1.md) | 311 | `declaration-track:9e4482c26994d29cd4a993d1fc5848cefae0bd6e1b08aec634a9449ba1dd5e1f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/declarations/instance--2d04a916e4b35587d035cb39.md) | 318 | `declaration-track:2d04a916e4b35587d035cb3947dc8e5c5cf31bd5d3a3f7e783f867a5c5cc1e39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
