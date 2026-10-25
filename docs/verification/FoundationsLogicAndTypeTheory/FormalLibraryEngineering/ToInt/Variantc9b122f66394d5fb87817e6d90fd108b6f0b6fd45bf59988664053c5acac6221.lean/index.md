# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140085637a8c340df3dfaa979bac94c8af66a417",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140085637a8c340df3dfaa979bac94c8af66a417`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.ToIntLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.ToInt` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SynthInstance` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reportMissingToIntAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/reportmissingtointadapter--e0991e8943c727d4dec0d788.md) | 25 | `declaration-track:e0991e8943c727d4dec0d78846cadf8980168dde45989d8b7c676e7b86ba7d6f` |
| 2 | `def` | [throwMissingDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/throwmissingdecl--9da011569c630fb8d7c11032.md) | 28 | `declaration-track:9da011569c630fb8d7c1103219604acd9ea6ba903967bde1025464c249cb9d37` |
| 3 | `def` | [checkDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/checkdecl--d3b6d5630bf5bde142a8bd61.md) | 31 | `declaration-track:d3b6d5630bf5bde142a8bd61bae936a49711b2afb8342879333b0755dcb8365b` |
| 4 | `def` | [normalizeBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/normalizebound--187ac0ecbeb72b424c803fc1.md) | 35 | `declaration-track:187ac0ecbeb72b424c803fc1ef44bb8179939b2b784c5d71618517005defc3b0` |
| 5 | `def` | [SymbolicBound.isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/symbolicbound-iszero--d8379242549e14d9b3deb840.md) | 41 | `declaration-track:d8379242549e14d9b3deb84001e0a87fec574bef577c61468b75907e882b9dc3` |
| 6 | `def` | [SymbolicBound.mkIntNegSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/symbolicbound-mkintnegsucc--091fcc1d168b4f3d96b02449.md) | 48 | `declaration-track:091fcc1d168b4f3d96b02449aafb625587d3fee7e2a0dbd5123cfbeefada8ff1` |
| 7 | `def` | [getToIntId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/gettointid--ceb6b5c0be96548438251770.md) | 54 | `declaration-track:ceb6b5c0be965484382517705ab656671aa7eace1890b9893c194411b7563fc0` |
| 8 | `structure` | [ToIntM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/tointm-context--66cdf38fee3e98d4015ca9db.md) | 117 | `declaration-track:66cdf38fee3e98d4015ca9db69a36b2601731eca7f900977ff7245c85307bca7` |
| 9 | `abbrev` | [ToIntM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/tointm--7d2026ae5dc9a0b3c255bcb8.md) | 120 | `declaration-track:7d2026ae5dc9a0b3c255bcb834c5ee2e860c091d0ba46889b7f3f66e7e2662d1` |
| 10 | `def` | [getToIntId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/gettointid--7e04c31c981dc45894281d75.md) | 122 | `declaration-track:7e04c31c981dc45894281d7506441672155d4dcf5559fe8d4392136ab0af0696` |
| 11 | `def` | [getInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getinfo--50b33b1c395638e1e472b870.md) | 125 | `declaration-track:50b33b1c395638e1e472b87018c228f8dc0a3d7b4586333dd9495a1245e69779` |
| 12 | `abbrev` | [modifyInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/modifyinfo--075cec520a801842764c3266.md) | 128 | `declaration-track:075cec520a801842764c3266fd27b5b7b596d4a7a850ac15f833a56319aaadf0` |
| 13 | `def` | [ToIntM.run?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/tointm-run--9ab754eae52054d4d9efe0d6.md) | 132 | `declaration-track:9ab754eae52054d4d9efe0d695db13cbf4c6c07cad1b8d290ff9444f9edc899a` |
| 14 | `def` | [ToIntM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/tointm-run--8b1d30eb39e5e3f20b7ea7ca.md) | 136 | `declaration-track:8b1d30eb39e5e3f20b7ea7ca8d4105c5f604d71a8763135bc1d66b0d05a2c7f1` |
| 15 | `def` | [intRfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/intrfl--acee40d0cd7e9b3abfdd7a09.md) | 140 | `declaration-track:acee40d0cd7e9b3abfdd7a097c14343390ebddcf79d31f2e45720f46b27ddf2d` |
| 16 | `def` | [mkOfLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkofle--8188f8d9d367ed5e28c3f1b3.md) | 142 | `declaration-track:8188f8d9d367ed5e28c3f1b3a070d121951dd9ec8e53f1bb483650a656b215e9` |
| 17 | `def` | [getOfLE?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getofle--98c33bf4d05229cf38d0685c.md) | 153 | `declaration-track:98c33bf4d05229cf38d0685cd7c0f8cab84cdf5acfe40f4fe32e816af672702e` |
| 18 | `def` | [getOfNotLE?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getofnotle--bced9ea235f2c9f6d46697a4.md) | 159 | `declaration-track:bced9ea235f2c9f6d46697a40488e284dd5c738a07a82767ce0fac0776695c6c` |
| 19 | `def` | [mkOfLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkoflt--dd842a816524f6c94961d9b5.md) | 165 | `declaration-track:dd842a816524f6c94961d9b50ce40e91a535cd21ab0d2c93095e80bb945afbd2` |
| 20 | `def` | [getOfLT?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getoflt--5a3d5831128ab4e3c9e267dc.md) | 176 | `declaration-track:5a3d5831128ab4e3c9e267dc14dab44a4a084f9db647025646a698618f2bf26f` |
| 21 | `def` | [getOfNotLT?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getofnotlt--65c1364d17d6b52f47a5d277.md) | 182 | `declaration-track:65c1364d17d6b52f47a5d2776739381132d49b82ccdebb6b081684c13ce15332` |
| 22 | `def` | [mkSimpleOpThmCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mksimpleopthmcore--1261f42af72947f7236d011c.md) | 189 | `declaration-track:1261f42af72947f7236d011c442b23643d21609a8506e544d2c3c7d061b7b557` |
| 23 | `def` | [mkSimpleOpThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mksimpleopthm--ccae8fb610fd3d4a41cbe7c8.md) | 201 | `declaration-track:ccae8fb610fd3d4a41cbe7c8dc4efee8091addc3ca02e9a11811027e3ff93422` |
| 24 | `def` | [mkPowThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkpowthm--6d8e4647912428dc4f7dd752.md) | 207 | `declaration-track:6d8e4647912428dc4f7dd752923419b29cafc7b20666d60616d1adb114882e16` |
| 25 | `def` | [mkBinOpThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkbinopthms--e7cc50f9899cfc1110d518af.md) | 212 | `declaration-track:e7cc50f9899cfc1110d518afba084bc70a89ce27f6e81697b33b4d91f0f72025` |
| 26 | `def` | [getAddThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getaddthms--ec81f6542fe166a35c0b5a36.md) | 235 | `declaration-track:ec81f6542fe166a35c0b5a369a6a0b63a2530d329f96d0992e46f4e238732156` |
| 27 | `def` | [getMulThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getmulthms--32ab03375034b8bb68321c0f.md) | 241 | `declaration-track:32ab03375034b8bb68321c0f57d319cb34c61643f52ab36d65b8bec453b1036a` |
| 28 | `def` | [getSubThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getsubthm--b490211ef4d5a8364c81e7c6.md) | 247 | `declaration-track:b490211ef4d5a8364c81e7c641fdb1461fd6b2ee1bd91de28d9f403b3ad72809` |
| 29 | `def` | [getNegThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getnegthm--62cdef123004411912e6f0bc.md) | 253 | `declaration-track:62cdef123004411912e6f0bc9fa14ac5979fed31d34bafe553b61edfec317421` |
| 30 | `def` | [getDivThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getdivthm--b8efe0506357137a6b241458.md) | 259 | `declaration-track:b8efe0506357137a6b241458680a135c05edf6b91a137d9dfa82293981dcef33` |
| 31 | `def` | [getModThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getmodthm--91210b8acef73a31b61192ff.md) | 265 | `declaration-track:91210b8acef73a31b61192ffd7568832b244b22e927a198ecb4e6fb7cd62d85c` |
| 32 | `def` | [getPowThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getpowthm--6c63220120c41a2458de617d.md) | 271 | `declaration-track:6c63220120c41a2458de617d1c545862c9a845a19443794959e5a0b82a85b200` |
| 33 | `def` | [getZeroThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getzerothm--99274084f4f26513dcd8a1f9.md) | 277 | `declaration-track:99274084f4f26513dcd8a1f947d0fd441015b00ef8dd572ec07322e8c4c61ec4` |
| 34 | `def` | [mkOfNatThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkofnatthm--4427576491db371b05c3cede.md) | 283 | `declaration-track:4427576491db371b05c3cede3007336ca766be24aad0c007e483db3b147dc521` |
| 35 | `def` | [getOfNatThm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/getofnatthm--12a025dd182f54cdbab97a6f.md) | 294 | `declaration-track:12a025dd182f54cdbab97a6fb0babbd8bdd25e37d64b84b15f921118aad19867` |
| 36 | `def` | [mkToIntVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mktointvar--2a16413416ed6441c1fa82b2.md) | 300 | `declaration-track:2a16413416ed6441c1fa82b26095fde271c2a020da71728f7e26e04206c51bfb` |
| 37 | `def` | [getToIntTermType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/gettointtermtype--48f94ba483f7aa7dcb4e013d.md) | 312 | `declaration-track:48f94ba483f7aa7dcb4e013db7fae7d2c5b0076099a8b2bebe21a51b2f5372a5` |
| 38 | `def` | [isToIntTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/istointterm--c2d768f1f6e15fef2a27de4c.md) | 316 | `declaration-track:c2d768f1f6e15fef2a27de4cadf179d5467d3bb46b749f17cd1fa8d6b4a61f92` |
| 39 | `def` | [isHomo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/ishomo--7f83728c226809c626a5e7c1.md) | 319 | `declaration-track:7f83728c226809c626a5e7c1dec2386372cb39b32ddeb7eaadad1e562a22114f` |
| 40 | `def` | [isWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/iswrap--b635e486f826f0cdedc21760.md) | 322 | `declaration-track:b635e486f826f0cdedc21760e40cb3f6c1beeef9fe1883840ccc7c461f1a53ab` |
| 41 | `def` | [hasNumericLoHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/hasnumericlohi--2a2a30636b4cb209388dfac8.md) | 327 | `declaration-track:2a2a30636b4cb209388dfac8929e590dd7149c4e9b1f4feb1a2d8d7f9f3e28e3` |
| 42 | `def` | [expandWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/expandwrap--0ba84bbbdf464d2fce5d6dd9.md) | 337 | `declaration-track:0ba84bbbdf464d2fce5d6dd95b7d9e421e1267086c9273240577dcf9d75ec1a8` |
| 43 | `def` | [expandIfWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/expandifwrap--bcd6cb56ef560bd3b5693be5.md) | 373 | `declaration-track:bcd6cb56ef560bd3b5693be5a435485ca42b0f35929d02645093be4d7c068c31` |
| 44 | `def` | [mkWrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/mkwrap--cf941f8b9e0de56dad59ae00.md) | 378 | `declaration-track:cf941f8b9e0de56dad59ae009a1a3ce7f629fbb9df62b0e8b8bfa26bfd46f189` |
| 45 | `def` | [ToIntThms.mkResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/tointthms-mkresult--6ba189c330aa959f932dde52.md) | 381 | `declaration-track:6ba189c330aa959f932dde529baf83449464a449155506ef65e7d8b48dbc8130` |
| 46 | `def` | [isFinInstOfNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/isfininstofnat--ae760b3e0d255db4afa105fb.md) | 397 | `declaration-track:ae760b3e0d255db4afa105fb278c63724ede989fa92e50fc7d8faed8c66a222e` |
| 47 | `def` | [toInt'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/toint--14efdd09777a3e2490d7151f.md) | 401 | `declaration-track:14efdd09777a3e2490d7151ff10627b998e795b8ec84d9a11dc7e063a523f211` |
| 48 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/toint--52519384cecc312aade91393.md) | 488 | `declaration-track:52519384cecc312aade913939c14da41a78e78a90d3b3d0589f632107067ece5` |
| 49 | `def` | [toInt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/toint--683ca82f0571992827fbc278.md) | 499 | `declaration-track:683ca82f0571992827fbc278ad2cf75b6c9714d49b2397d1b576510f6511fc2a` |
| 50 | `def` | [isSupportedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/issupportedtype--b0789e8112c104caf436e79f.md) | 502 | `declaration-track:b0789e8112c104caf436e79f350493d3a0b0d16e6f8c4c5440dace3ef52cde9d` |
| 51 | `def` | [assertToIntBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/declarations/asserttointbounds--334d08528a7aa59d38fb41c2.md) | 512 | `declaration-track:334d08528a7aa59d38fb41c212cc233b211be7d402026570890f22bdd5f07e9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
