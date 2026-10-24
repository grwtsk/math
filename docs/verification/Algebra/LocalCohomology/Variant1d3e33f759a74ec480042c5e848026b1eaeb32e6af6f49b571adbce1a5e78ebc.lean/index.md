# Verification target: GRWTSK.Algebra.LocalCohomology.Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3685b8fcdcf19cd98d0c0cd48c1676952621749f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3685b8fcdcf19cd98d0c0cd48c1676952621749f`.

Source path: `GRWTSK/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringModIdeals](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/ringmodideals--0dffba8ffed7f0dd84682141.md) | 78 | `declaration-track:0dffba8ffed7f0dd8468214177b33a400114517d09255fe8848f9a8cc143385e` |
| 2 | `instance` | [moduleCat_enoughProjectives'](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/modulecat-enoughprojectives--bd2569c2b64da0199cda5c90.md) | 86 | `declaration-track:bd2569c2b64da0199cda5c90551ad350378cbfb8bdf9fbebe18cf622f8cf4385` |
| 3 | `def` | [diagram](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/diagram--a12a371ade5cdeda5580ec43.md) | 93 | `declaration-track:a12a371ade5cdeda5580ec4326db314e115f8129c52a9245d1f86dc32c2c21b5` |
| 4 | `def` | [ofDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/ofdiagram--3f0f9577052aa41e4609d4ae.md) | 115 | `declaration-track:3f0f9577052aa41e4609d4aea19cb87bbdd78de28062ad80fec9d696e84d0b7c` |
| 5 | `def` | [diagramComp](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/diagramcomp--aec1a92da12a105441605e0a.md) | 129 | `declaration-track:aec1a92da12a105441605e0af45c85913f2c6839098a786a4a588927081732f6` |
| 6 | `def` | [isoOfFinal](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/isooffinal--57a0f55e2c2c6ccb31c34d2d.md) | 134 | `declaration-track:57a0f55e2c2c6ccb31c34d2da546a9caf528abf5060ab9a7ee7d00400ca9ad84` |
| 7 | `def` | [idealPowersDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/idealpowersdiagram--79833d59d6a47b9c7cface6a.md) | 146 | `declaration-track:79833d59d6a47b9c7cface6a5606267eab30337bbadadf5d3b7ea814bc3a2086` |
| 8 | `def` | [SelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradical--9f05a928117ab58472bc7ed5.md) | 152 | `declaration-track:9f05a928117ab58472bc7ed5fe5e9cd974549be81b43bffac75abc27620d78c4` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/instance--9d9ad3a66aed5b8ac42bf797.md) | 158 | `declaration-track:9d9ad3a66aed5b8ac42bf7972211472a57e18fcaf92753c0aaabd8a2e25b7dbd` |
| 10 | `instance` | [SelfLERadical.inhabited](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradical-inhabited--fc9b09902628fd77669e67fc.md) | 161 | `declaration-track:fc9b09902628fd77669e67fc46a36c72ff17dadeec430345025cbefae77b429c` |
| 11 | `def` | [selfLERadicalDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradicaldiagram--b846c3217afaab9d272426c3.md) | 167 | `declaration-track:b846c3217afaab9d272426c304a967ab343a8ddcc5cae586a1f7be6e836b91ac` |
| 12 | `def` | [localCohomology](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/localcohomology--ddcd97f5f6da305e9b21ad3c.md) | 189 | `declaration-track:ddcd97f5f6da305e9b21ad3cc26100548319f7d7efe9c9f96af28fe474d116a1` |
| 13 | `def` | [localCohomology.ofSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/localcohomology-ofselfleradical--c3806388637fcb02675a5205.md) | 195 | `declaration-track:c3806388637fcb02675a5205a51e415f9ffc6ce3f0b84ec21b7e166ad9566b31` |
| 14 | `def` | [idealPowersToSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/idealpowerstoselfleradical--3e76bc917c011b5701eae27e.md) | 217 | `declaration-track:3e76bc917c011b5701eae27e50bcfa49f49f1cf81b3e4d43c7fa8e4874d310e8` |
| 15 | `theorem` | [Ideal.exists_pow_le_of_le_radical_of_fG](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/ideal-exists-pow-le-of-le-radical-of-fg--4a3a2a53eddf2115aa58f1f3.md) | 232 | `result-track:4a3a2a53eddf2115aa58f1f344823aaa5dde25cf7b4b581cde379773ae5c5471` |
| 16 | `instance` | [ideal_powers_initial](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/ideal-powers-initial--2354ffd6ee7a278fad977de1.md) | 243 | `declaration-track:2354ffd6ee7a278fad977de158cbee05d46a219a34477bae58a0f276b7d61c42` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/instance--15f6f0d20fc4b364bb36af06.md) | 260 | `declaration-track:15f6f0d20fc4b364bb36af069f49f6f8f4a306f9d1700f649db3716979d63e4c` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/example--24cb93e5bda66923a1ea69fd.md) | 263 | `declaration-track:24cb93e5bda66923a1ea69fd2fa545344ddbf7d6853d37b7baa801664e108789` |
| 19 | `def` | [isoSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/isoselfleradical--47e769a9ee3d3f33323e9c41.md) | 266 | `declaration-track:47e769a9ee3d3f33323e9c4128a6292f375b1a720ce8bf2ebae7c10fe98d058a` |
| 20 | `def` | [SelfLERadical.cast](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradical-cast--43ae71ae5f7ee7749c53ed1f.md) | 275 | `declaration-track:43ae71ae5f7ee7749c53ed1f97776ab39b0a2ebad428ca64406587aa74b6c949` |
| 21 | `instance` | [SelfLERadical.castIsEquivalence](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradical-castisequivalence--fc67b0ef62619b96abc61c98.md) | 282 | `declaration-track:fc67b0ef62619b96abc61c9882edb7c6ac772cf8b58cf5b843046b79085bad48` |
| 22 | `def` | [SelfLERadical.isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/selfleradical-isoofsameradical--c33ba4b7a53cf211a9540ad4.md) | 291 | `declaration-track:c33ba4b7a53cf211a9540ad497707fbe380c5ab4ff975acb9f80b5793631ee47` |
| 23 | `def` | [isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant1d3e33f759a74ec480042c5e848026b1eaeb32e6af6f49b571adbce1a5e78ebc.lean/declarations/isoofsameradical--1d9f22b63ce39971d85bc32a.md) | 297 | `declaration-track:1d9f22b63ce39971d85bc32a277901b5549fd8b9bf2fadbd0336a6a51f9fe034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
