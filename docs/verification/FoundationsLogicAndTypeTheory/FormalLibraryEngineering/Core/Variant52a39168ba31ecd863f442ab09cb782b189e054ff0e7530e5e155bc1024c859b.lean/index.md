# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a50a61593417cfd20fd28234cbd4fdc07a8ef543",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a50a61593417cfd20fd28234cbd4fdc07a8ef543`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FunProp.Theorems` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.ToBatteries` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Exact` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [synthesizeInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/synthesizeinstance--7d8c00fcd9a6c4e3b4924e47.md) | 33 | `declaration-track:7d8c00fcd9a6c4e3b4924e47bd46eb1b2b95fe995c4b13bd6c20c02085fe0b6f` |
| 2 | `def` | [synthesizeArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/synthesizeargs--fbd0922e27ce77c893ca558f.md) | 52 | `declaration-track:fbd0922e27ce77c893ca558fdbc494a38dde97e63001636e4a266a11f16bd6a2` |
| 3 | `def` | [tryTheoremCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/trytheoremcore--807bed718e4c3a76a6bf56cf.md) | 109 | `declaration-track:807bed718e4c3a76a6bf56cf2886481871aff7895c5af4598f3c7f7c5038a7cb` |
| 4 | `def` | [tryTheoremWithHint?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/trytheoremwithhint--db3b7638db66768955bab1fa.md) | 127 | `declaration-track:db3b7638db66768955bab1fa1b305d7550a05bae3ca6944501a59ba635064892` |
| 5 | `def` | [tryTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/trytheorem--be79dd191a771a1a7cab3e75.md) | 166 | `declaration-track:be79dd191a771a1a7cab3e7516555c882f94362947a834390b553e1c3ca20d21` |
| 6 | `def` | [applyIdRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applyidrule--dfd6714bf9ea7d62614b0bb1.md) | 176 | `declaration-track:dfd6714bf9ea7d62614b0bb1c84d65cbe22f868ba564049ded165ff905a3112a` |
| 7 | `def` | [applyConstRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applyconstrule--64af28848330076f2adae6fd.md) | 196 | `declaration-track:64af28848330076f2adae6fde9d642d713e48a814f168e9b637f1480ddbc5ba7` |
| 8 | `def` | [applyApplyRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applyapplyrule--eb7af9ad8da9bc713b3135ef.md) | 216 | `declaration-track:eb7af9ad8da9bc713b3135ef7eaf7163bf4e26d0c41ebd428e307222db5711e5` |
| 9 | `def` | [applyCompRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applycomprule--53a7a764cde0aceb023873b0.md) | 232 | `declaration-track:53a7a764cde0aceb023873b0558623c503714d7bbcf29d94bd02f16e6424acc7` |
| 10 | `def` | [applyPiRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applypirule--d3cf44829326bd20870c15aa.md) | 255 | `declaration-track:d3cf44829326bd20870c15aa5b485d175de47999904e591f20a264ee4fe2d406` |
| 11 | `def` | [letCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/letcase--aa25878989da569ab5d1b35a.md) | 280 | `declaration-track:aa25878989da569ab5d1b35a3c9dd43eb26754e7c594fba95b4ad4c643e54a47` |
| 12 | `def` | [applyMorRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applymorrules--1e10e1c0cb265ac2afcaf9a4.md) | 322 | `declaration-track:1e10e1c0cb265ac2afcaf9a43b05c7f29d3623807c7bc3ad0f39b7b80d20b117` |
| 13 | `def` | [applyTransitionRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/applytransitionrules--7f5b41cbaab692eb2989c447.md) | 348 | `declaration-track:7f5b41cbaab692eb2989c447b920af9d6a3cbf850aa929d7dacb85726e7148c5` |
| 14 | `def` | [removeArgRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/removeargrule--3bef9e788fbfb84bb253a790.md) | 372 | `declaration-track:3bef9e788fbfb84bb253a7901e6e4ab88fa56aedaabd3d997814eb00019cf9ee` |
| 15 | `def` | [bvarAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/bvarappcase--5e041c48d37035ba5807fc1b.md) | 390 | `declaration-track:5e041c48d37035ba5807fc1bae503b6d62b47830b8b06c09aae3358d9cd2d26a` |
| 16 | `def` | [getDeclTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/getdecltheorems--4e23916b7da2419428a1ab12.md) | 404 | `declaration-track:4e23916b7da2419428a1ab128093a2db248065a7c24fab43f9a8e0495615d2fe` |
| 17 | `def` | [getLocalTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/getlocaltheorems--1a960df603dc03dae137e341.md) | 424 | `declaration-track:1a960df603dc03dae137e3415c031f4af6b42b90bfa00e99559ce8f06bb93288` |
| 18 | `def` | [tryTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/trytheorems--a59561b55730a8d04d7ba83e.md) | 475 | `declaration-track:a59561b55730a8d04d7ba83e0a2ee706452724fd7012052ef87ef6efa27eb680` |
| 19 | `def` | [fvarAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/fvarappcase--c01e54189266ce05c5299a3b.md) | 531 | `declaration-track:c01e54189266ce05c5299a3b25c2e569f56f9f6f863bb215cd7073a5bbbf4471` |
| 20 | `def` | [constAppCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/constappcase--9e522b0886bfa962486abe49.md) | 567 | `declaration-track:9e522b0886bfa962486abe497bb129e61112b7bb442a37bbfdde2cada4b86eee` |
| 21 | `def` | [cacheResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/cacheresult--64b05e97fe588b35c62fc3ff.md) | 617 | `declaration-track:64b05e97fe588b35c62fc3ff96a3bc7f7a5a3f8aa090e0c7b9e59fa1d4cfd25b` |
| 22 | `def` | [cacheFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/cachefailure--77c2c4b11cd93e89f3014829.md) | 622 | `declaration-track:77c2c4b11cd93e89f3014829199f737d71d0b5df38b0d4ec7cfc294e999a77a2` |
| 23 | `def` | [funProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/funprop--1d946afe08636118364cc390.md) | 628 | `declaration-track:1d946afe08636118364cc390795debfa931d0f3af6326956e7ac16cb2fa8b12b` |
| 24 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/declarations/main--14a25d6d0c484837f44cdd40.md) | 665 | `declaration-track:14a25d6d0c484837f44cdd403e1d80518fc84adc02cbbb71430f990f6c50bbee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
