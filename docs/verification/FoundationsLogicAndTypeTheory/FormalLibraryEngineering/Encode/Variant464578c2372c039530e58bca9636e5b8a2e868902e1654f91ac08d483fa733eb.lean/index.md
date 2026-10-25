# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Encode.Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5c49e2a3d408534c220f491f4002a64ff903eeb",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5c49e2a3d408534c220f491f4002a64ff903eeb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Meta.RefinedDiscrTree.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.StateList` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DTExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr--51420439f30fa6a3a1af7547.md) | 21 | `declaration-track:51420439f30fa6a3a1af754777cfdc41c47125debcc3496ef8bfb2ca72f39b46` |
| 2 | `def` | [DTExpr.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-format--4bf72cab211f80eddbc5d22c.md) | 44 | `declaration-track:4bf72cab211f80eddbc5d22cb362d993e8dffd07760076de1f67ed8cfcc1a7ff` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/instance--850a4315136c18cee7ae9d85.md) | 62 | `declaration-track:850a4315136c18cee7ae9d856d06e602cced95ea118cb738bb8117b3978b5da4` |
| 4 | `def` | [DTExpr.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-size--a4c99edc31494109c679ec88.md) | 68 | `declaration-track:a4c99edc31494109c679ec88d21ec061d1fbb953e5fcb2448f102b751f6519dd` |
| 5 | `def` | [DTExpr.eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-eqv--b8eb6c0cc3a0ac1bffd2454c.md) | 77 | `declaration-track:b8eb6c0cc3a0ac1bffd2454c1f93bcf1a5e79d546788cea82d1ff330fbcc51aa` |
| 6 | `structure` | [Flatten.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/flatten-state--5af7310dbd3c4d691b5ef9a7.md) | 113 | `declaration-track:5af7310dbd3c4d691b5ef9a76dd4ffec4f9a34202dcdb06272f814d9ea780185` |
| 7 | `def` | [getStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/getstar--429420a2faa8897e4ccd865f.md) | 116 | `declaration-track:429420a2faa8897e4ccd865f21d7575e97af9fd87245429774e161241fd14645` |
| 8 | `def` | [DTExpr.flattenAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-flattenaux--1e2ec7f926405a043f42aa1b.md) | 124 | `declaration-track:1e2ec7f926405a043f42aa1b10269ec448891e06c697b2c44d1b0ed3fe782841` |
| 9 | `def` | [DTExpr.flatten](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-flatten--af9863222d533befd353a59a.md) | 138 | `declaration-track:af9863222d533befd353a59a4390e8cbd11706646e42447aa3fae6f08b8653d6` |
| 10 | `def` | [isNumeral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/isnumeral--c1bd5f18a93e846720de85c1.md) | 148 | `declaration-track:c1bd5f18a93e846720de85c16e757271e47af1e94e5ecbb6b7d60834f2cbaacf` |
| 11 | `def` | [toNatLit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/tonatlit--efd39f5c895eb49fbd0f0150.md) | 161 | `declaration-track:efd39f5c895eb49fbd0f0150c3f541d1040f8249add7ca5eb063c03a0cf534a1` |
| 12 | `def` | [reduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/reduce--a864dba8eb23f294ef915944.md) | 187 | `declaration-track:a864dba8eb23f294ef9159442a188a4aaedce852936ed4e5fc43b6061f3819cc` |
| 13 | `def` | [lambdaTelescopeReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/lambdatelescopereduce--d46c26c0b1584c984cd0d0c4.md) | 197 | `declaration-track:d46c26c0b1584c984cd0d0c47b65e0194910e730f36b06ace94ef9e5d0927b6b` |
| 14 | `def` | [isStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/isstar--88b7bb947d8c1cd2c9b4e030.md) | 209 | `declaration-track:88b7bb947d8c1cd2c9b4e0300384dc3b089da4ec6052434d206d8a28fbe08de7` |
| 15 | `def` | [isStarWithArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/isstarwitharg--c360ad7ddc9ed8da983035f5.md) | 215 | `declaration-track:c360ad7ddc9ed8da983035f522699f16379f064d9d7bec4799a35130519325e0` |
| 16 | `def` | [DTExpr.hasLooseBVarsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-hasloosebvarsaux--68b1290b2a74c75eba2e20b5.md) | 219 | `declaration-track:68b1290b2a74c75eba2e20b5b2115daae41cd4088cb88a10fb0a33b725cad5db` |
| 17 | `def` | [DTExpr.hasLooseBVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-hasloosebvars--256e37b859fed9dc3929a00f.md) | 229 | `declaration-track:256e37b859fed9dc3929a00f8f475ae8ec4f1b5257fea852bb83d82db8d56e1f` |
| 18 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/context--765a30761b26c82c23d67eaf.md) | 235 | `declaration-track:765a30761b26c82c23d67eaf3c9e26d45902cb9176961b9ec118e529a2489cf1` |
| 19 | `def` | [getIgnores](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/getignores--a5e28aefba8f651c14cd8998.md) | 244 | `declaration-track:a5e28aefba8f651c14cd8998ec5b7e28f667c3771d2c1d3d40e1a101354b2807` |
| 20 | `def` | [withLams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/withlams--94aa24c5df4f7368f956207b.md) | 269 | `declaration-track:94aa24c5df4f7368f956207bd3369ef1aeaadab2e640d57a9110b8dc2823b64c` |
| 21 | `def` | [mkDTExprAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/mkdtexpraux--cf7d92652fc52fe01a5bcc16.md) | 280 | `declaration-track:cf7d92652fc52fe01a5bcc16151f994be55ac7b00e7486b92f092e6fcdb08588` |
| 22 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/m--8558fa30c251755f33c11547.md) | 354 | `declaration-track:8558fa30c251755f33c115471e79e7d5e38f4be953444ab73d4e41c50146a37f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/instance--19284338ee5eeb76a2c94556.md) | 361 | `declaration-track:19284338ee5eeb76a2c945564b71996fa22501e9484f21c3d9ae77aba3eb064d` |
| 24 | `def` | [etaPossibilities](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/etapossibilities--dc11cd851bae4b02945e4845.md) | 373 | `declaration-track:dc11cd851bae4b02945e48453a3b642a5742117d03efc326dc5d3efb88a13ef1` |
| 25 | `def` | [cacheEtaPossibilities](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/cacheetapossibilities--2e95e0239c82c4e5556796cf.md) | 387 | `declaration-track:2e95e0239c82c4e5556796cfd024db3fc43a42fad4ee93995416391b997980c5` |
| 26 | `def` | [mkDTExprsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/mkdtexprsaux--398681768648dc13f2b47570.md) | 401 | `declaration-track:398681768648dc13f2b47570f91d20ae60263904f7acedad3c644c52720e518b` |
| 27 | `def` | [DTExpr.isSpecific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/dtexpr-isspecific--1bd6ebc1f266f5fa42368b22.md) | 484 | `declaration-track:1bd6ebc1f266f5fa42368b224597162081ec36f59e8cc23966d84a99d6237d94` |
| 28 | `def` | [mkDTExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/mkdtexpr--cc77ed0216f58342f8f18b34.md) | 496 | `declaration-track:cc77ed0216f58342f8f18b3465ac40b641a1950eba747069b96e5df761c5fe68` |
| 29 | `def` | [mkDTExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/declarations/mkdtexprs--811fc42816f182312f4f6d75.md) | 502 | `declaration-track:811fc42816f182312f4f6d75f8c77a75b57935b59adcef4ee13e074d3d49c488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
