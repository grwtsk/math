# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e07f66a75406425f659ddd9108e560034a3fcc7",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e07f66a75406425f659ddd9108e560034a3fcc7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Cast` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Qq` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/syntax--9d0c167a870bea5045d3542f.md) | 35 | `declaration-track:9d0c167a870bea5045d3542f6e8055f5818bf4a2ebff47b4aa44a5ea81b0f9c6` |
| 2 | `lemma` | [ne_of_ne_of_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/ne-of-ne-of-eq--3a22a2888e8195435cacfb3a.md) | 37 | `result-track:3a22a2888e8195435cacfb3a8589886e197fd34961b030ff71fcca32498ad8b5` |
| 3 | `inductive` | [Strictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/strictness--2e0590ad9edc8784c8931c1f.md) | 44 | `declaration-track:2e0590ad9edc8784c8931c1f3482660d5c8515c6189d1b66d12fabfaaaf985d6` |
| 4 | `def` | [Strictness.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/strictness-tostring--d4de22e246a9098bd00d4add.md) | 52 | `declaration-track:d4de22e246a9098bd00d4adde907341fc0806098376959953671c9b9ed48368b` |
| 5 | `def` | [Strictness.toNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/strictness-tononneg--901fb6e0badb9689edddd566.md) | 60 | `declaration-track:901fb6e0badb9689edddd5663314adf7ad9dcc03f4b853d9b114026d0387734e` |
| 6 | `def` | [Strictness.toNonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/strictness-tononzero--4156b3f43fc7ddbbf0bb6234.md) | 66 | `declaration-track:4156b3f43fc7ddbbf0bb623412155d80bfe37809e3f52404fc856278eaffdf04` |
| 7 | `structure` | [PositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/positivityext--82a56ee6d8e911614747f365.md) | 72 | `declaration-track:82a56ee6d8e911614747f3656fd58ed2e52b38a8eba40190afec02f1f894b1e0` |
| 8 | `def` | [mkPositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/mkpositivityext--0d8bebdb76cfc4ba142a0dbf.md) | 78 | `declaration-track:0d8bebdb76cfc4ba142a0dbf72da33fb3090832e18a33c67ef8e096e695fa57b` |
| 9 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/entry--839694bc48b1fa49f0a9424a.md) | 84 | `declaration-track:839694bc48b1fa49f0a9424ad6d4a36efdc24597efa0c96f7216e67d7b93c803` |
| 10 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/initialize--7737426de12b091e35543e8d.md) | 87 | `declaration-track:7737426de12b091e35543e8dff60754c71aa234860561c0a208c548ebb92eb02` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/initialize--9925eb67ba84553852b22533.md) | 102 | `declaration-track:9925eb67ba84553852b225332584b4b07c3318f995f0a6afb9c64c43d80dc3b5` |
| 12 | `lemma` | [lt_of_le_of_ne'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/lt-of-le-of-ne--c20c8fa59a6229e85aa3a74f.md) | 128 | `result-track:c20c8fa59a6229e85aa3a74fbc875857956894345988cedfb8a7fe84bf21a07d` |
| 13 | `lemma` | [pos_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/pos-of-isnat--086065a594541df981981008.md) | 131 | `result-track:086065a594541df9819810083bdab8dd3e24b11a29c04411beb28c64af073fb7` |
| 14 | `lemma` | [nonneg_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/nonneg-of-isnat--71efd6e144cfb265c5018cd6.md) | 137 | `result-track:71efd6e144cfb265c5018cd6c37ae109593905d6bacc53ae3ee5ea6b9767a926` |
| 15 | `lemma` | [nz_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/nz-of-isnegnat--7a019bb627e0c18105bb8fdd.md) | 142 | `result-track:7a019bb627e0c18105bb8fdd8901ac3d3bb0cdcd9a449b54eb628f860b35380c` |
| 16 | `lemma` | [pos_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/pos-of-israt--37c9e643609742965c7d5c72.md) | 149 | `result-track:37c9e643609742965c7d5c72689d456cf05b8042535df543ab133863e9ed3add` |
| 17 | `lemma` | [nonneg_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/nonneg-of-israt--ab736f1e3b0fb83b9e0a5829.md) | 157 | `result-track:ab736f1e3b0fb83b9e0a5829f819e3aa5e0b46e35ecdcc0cf1d3996d3d0db5f1` |
| 18 | `lemma` | [nz_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/nz-of-israt--4fe25f7b2f652f3d818d7945.md) | 161 | `result-track:4fe25f7b2f652f3d818d79459c1746e3e037ce516f7c84b822abfea7149c549f` |
| 19 | `def` | [catchNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/catchnone--270583da6f9e18d21b7fe067.md) | 173 | `declaration-track:270583da6f9e18d21b7fe0674c195c0b2eec2f4287df3e63e2af81b500ac3a26` |
| 20 | `def` | [throwNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/thrownone--b0a2c0d95c1904400fcbc31b.md) | 181 | `declaration-track:b0a2c0d95c1904400fcbc31bc6383c0b799718417cbc5ce3f0938fd19249f7a2` |
| 21 | `def` | [normNumPositivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/normnumpositivity--c662f6f49ec8965c1765662f.md) | 188 | `declaration-track:c662f6f49ec8965c1765662fc9a6931b6d1925c81162a6f2ffbb9af5917df0cb` |
| 22 | `def` | [positivityCanon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/positivitycanon--8cc1bd608d8fc027c6940801.md) | 233 | `declaration-track:8cc1bd608d8fc027c6940801078304c6ba8c496a7490108295aee21cb9527ac0` |
| 23 | `def` | [compareHypLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/comparehyple--0ea9425ca5285478d4738504.md) | 241 | `declaration-track:0ea9425ca5285478d47385049b85f2f5ff6508c124ff00d94f033e040732fd5c` |
| 24 | `def` | [compareHypLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/comparehyplt--85f96fcca85ccb4b6504ba5a.md) | 248 | `declaration-track:85f96fcca85ccb4b6504ba5afe1a2f30ee2e9da6c313ca89d054d2babab1741e` |
| 25 | `def` | [compareHypEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/comparehypeq--13a48c4cad25109c03ad766c.md) | 255 | `declaration-track:13a48c4cad25109c03ad766c4aaa334e0f8c51f9bc549e58c3f9c7c71987aef7` |
| 26 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/initialize--e7283c0c2c64f736fbeda545.md) | 262 | `declaration-track:e7283c0c2c64f736fbeda545984efde430b74ba1123624318cb60c6a5ce8ed64` |
| 27 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/initialize--1783c969200cc5a96af61abb.md) | 263 | `declaration-track:1783c969200cc5a96af61abbe34656f0940ea87b6d23d0e3a3b3cd141c3706b8` |
| 28 | `def` | [compareHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/comparehyp--c5b5f0106c53f593d3528491.md) | 267 | `declaration-track:c5b5f0106c53f593d352849167df6a24c614146b4403f09656d78c5c6b0ff6f6` |
| 29 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/orelse--7b8376c73f886a56d78c72d7.md) | 316 | `declaration-track:7b8376c73f886a56d78c72d7a2aeb38d2f9c040661f927a004fcc11572f022df` |
| 30 | `def` | [core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/core--73f90be370a66987ba147f5d.md) | 333 | `declaration-track:73f90be370a66987ba147f5d9ef78a1e121e3dc08447a55e356e8b9654d70d34` |
| 31 | `inductive` | [OrderRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/orderrel--2f2087c9f5a0963316cd77c1.md) | 352 | `declaration-track:2f2087c9f5a0963316cd77c1b998945edae5944a374aefb90b8234848d648d41` |
| 32 | `def` | [bestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/bestresult--32234984326dd3dd991671fb.md) | 364 | `declaration-track:32234984326dd3dd991671fb1af8edf618f3d409b82c77905b730a1710a31180` |
| 33 | `def` | [proveNonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/provenonneg--ed993b8d2f1b5323bfc7c99d.md) | 375 | `declaration-track:ed993b8d2f1b5323bfc7c99dabebe58e8062005102750414d777132694331b11` |
| 34 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/solve--6b29adf6b08d7333ec3e379f.md) | 382 | `declaration-track:6b29adf6b08d7333ec3e379f8eaac4740c7223b8a43e02f79470f79352c83c0a` |
| 35 | `def` | [positivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/positivity--01819f8f1e89bc999c2c930e.md) | 422 | `declaration-track:01819f8f1e89bc999c2c930ee841716de74c13185d2e35e48c04fe74f12b4ea8` |
| 36 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant9be74301f477caf46e487fb94991cd9f6e7199f58092b3a0bdc24572ee32421c.lean/declarations/elab--351aa2f517d52ad0d586f471.md) | 447 | `declaration-track:351aa2f517d52ad0d586f471946852c44c6235c50f9cd982cfce32401054bf18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
