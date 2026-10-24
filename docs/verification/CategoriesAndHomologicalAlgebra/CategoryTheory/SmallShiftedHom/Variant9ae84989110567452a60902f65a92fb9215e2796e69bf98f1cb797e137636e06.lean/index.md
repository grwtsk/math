# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmallShiftedHom.Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10b608049de74002e3ce4683a3b38f5f5b465e22",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10b608049de74002e3ce4683a3b38f5f5b465e22`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.SmallHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSmallLocalizedShiftedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/hassmalllocalizedshiftedhom--f8669933840fcd695bd731cb.md) | 52 | `declaration-track:f8669933840fcd695bd731cbac784e2bee0b04368c9fe82161f7efc3671fb3fc` |
| 2 | `lemma` | [hasSmallLocalizedShiftedHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/hassmalllocalizedshiftedhom-iff--223eac23f328a7bf2d5eb613.md) | 55 | `result-track:223eac23f328a7bf2d5eb613b256c80472625e60f7a992d414bd3a9a1fc934c3` |
| 3 | `lemma` | [hasSmallLocalizedShiftedHom_iff_target](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/hassmalllocalizedshiftedhom-iff-target--07549e438b7d17ed74dc1be7.md) | 66 | `result-track:07549e438b7d17ed74dc1be781168b4e689cb4679b26a06529094360a0bd2253` |
| 4 | `lemma` | [hasSmallLocalizedShiftedHom_iff_source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/hassmalllocalizedshiftedhom-iff-source--0a424fbf2188d1c89cdc9a99.md) | 73 | `result-track:0a424fbf2188d1c89cdc9a996e3bb5f0d16964f17cf8cd8c832f0ef8d4102dc2` |
| 5 | `lemma` | [hasSmallLocalizedHom_of_hasSmallLocalizedShiftedHom₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/hassmalllocalizedhom-of-hassmalllocalizedshiftedhom--3ff0b25090281c906d8e7e20.md) | 82 | `result-track:3ff0b25090281c906d8e7e205b9904b3d03c67edb485a45e46843bf2d956a9dc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/instance--c589ec77917a17b24952fe58.md) | 89 | `declaration-track:c589ec77917a17b24952fe58ae4e60a1491ef9f4b66979ba50b55ef412163bc2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/instance--2c18539a80d6681128d2c1b5.md) | 93 | `declaration-track:2c18539a80d6681128d2c1b5eb8c2fc5770a296f887f46ac05b294481e6ad3ee` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/instance--d02ab7a80726e1ece89d1fbc.md) | 97 | `declaration-track:d02ab7a80726e1ece89d1fbc6c68d378ac27c6c7279191283d19491d726bc62f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/instance--29ff8cf5f8a1f6b761fc2fc9.md) | 101 | `declaration-track:29ff8cf5f8a1f6b761fc2fc9fa539f530850a501a706b21e58b0a601c7d653e0` |
| 10 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/shift--3ae13e582718053154db210d.md) | 116 | `declaration-track:3ae13e582718053154db210d96ec94af81cef3fb6264b58683c0dce0396e8532` |
| 11 | `lemma` | [equiv_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-shift--ccd75e9d844a9145f170dcbc.md) | 119 | `result-track:ccd75e9d844a9145f170dcbc733e4427c2ca44b60591467959b82eecb7fad196` |
| 12 | `def` | [SmallShiftedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/smallshiftedhom--3a191dc81ad9bda16abc35ee.md) | 128 | `declaration-track:3a191dc81ad9bda16abc35ee75a38f59cdd4f5f48c923db2e5d69a6f1ccded16` |
| 13 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/shift--fe5490e4f12909cd408b7580.md) | 142 | `declaration-track:fe5490e4f12909cd408b758065dfdc74d2fb4c19677028afb09ef25edf9cc3e4` |
| 14 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/comp--d5dabed8a4225b24591435c0.md) | 149 | `declaration-track:d5dabed8a4225b24591435c0a58557040e204f1165462257a7f89bc3419444d8` |
| 15 | `def` | [mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/mk--b4127d1f4846e8a6576eb2de.md) | 159 | `declaration-track:b4127d1f4846e8a6576eb2de456a54b0abc5e43f4217b11e39941847bee11eb5` |
| 16 | `def` | [equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv--c83698403b7f256a7b720660.md) | 175 | `declaration-track:c83698403b7f256a7b720660820c42854beece2de33e39da23e48e08c179e3f0` |
| 17 | `lemma` | [equiv_shift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-shift--7a05dd61722e16e6e96eb34e.md) | 182 | `result-track:7a05dd61722e16e6e96eb34e3d1a1bc1905e307068f517acf1a1a14170c4b8c9` |
| 18 | `lemma` | [equiv_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-shift--02e074b79025e99ad1716e02.md) | 192 | `result-track:02e074b79025e99ad1716e0241ea98fd0b099e4169f9a7f483b924e383022d88` |
| 19 | `lemma` | [equiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-comp--801656d917ef367e52b81405.md) | 202 | `result-track:801656d917ef367e52b814050ac1929fecddcf925d5b4d625735105fe20b9c2b` |
| 20 | `lemma` | [equiv_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-mk--7d3e8aa0c9437aa4e263b770.md) | 216 | `result-track:7d3e8aa0c9437aa4e263b770fc01a0cf0959b70e2bde52ecf5f2fdde14deae34` |
| 21 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/comp-assoc--1f02d86cc5b07ae39f2957b0.md) | 233 | `result-track:1f02d86cc5b07ae39f2957b071c7439bd52cbd976c1bbd061680112a51ac71de` |
| 22 | `def` | [chgUniv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/chguniv--2043c0bf99c3767c1dd2fa92.md) | 254 | `declaration-track:2043c0bf99c3767c1dd2fa92e0c02825270bd34bdc76a7c069e7bfbd7d3fff8e` |
| 23 | `lemma` | [equiv_chgUniv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant9ae84989110567452a60902f65a92fb9215e2796e69bf98f1cb797e137636e06.lean/declarations/equiv-chguniv--1fcafd93bf6075862ad6194f.md) | 260 | `result-track:1fcafd93bf6075862ad6194fe0f8492151a598f5d5be5ec6bf767e4b863f2529` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
