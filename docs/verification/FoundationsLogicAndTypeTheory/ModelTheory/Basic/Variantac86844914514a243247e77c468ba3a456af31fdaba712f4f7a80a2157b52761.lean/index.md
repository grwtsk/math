# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28aef1785af70890fc4525c397b103f9aa985669",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28aef1785af70890fc4525c397b103f9aa985669`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Syntax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ringFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/ringfunc--5e2529aa1f2723ae3a4bd3c5.md) | 58 | `declaration-track:5e2529aa1f2723ae3a4bd3c56db73f765e71b6c16d02d52e698f495aac6ea238` |
| 2 | `def` | [Language.ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/language-ring--9da6cb730deee076d53824c1.md) | 67 | `declaration-track:9da6cb730deee076d53824c107589ad31149e0125349eebd144ae060c4bf5e5c` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/example--c3da37dcb26c0a4a91291b3e.md) | 78 | `declaration-track:c3da37dcb26c0a4a91291b3ed2251f78a1db03823849409139948e7bfd970707` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/example--d284342701b25d715c47ad18.md) | 82 | `declaration-track:d284342701b25d715c47ad18baff1620d12301e0d23cb9f349563ec246b6e875` |
| 5 | `abbrev` | [addFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/addfunc--615481327798325f7eb6c058.md) | 86 | `declaration-track:615481327798325f7eb6c05855cf14a043641b88edb4d5f257f8c95b451573a3` |
| 6 | `abbrev` | [mulFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/mulfunc--b72eb9e82ed885093347246e.md) | 90 | `declaration-track:b72eb9e82ed885093347246ead2aa9de1732f772b86cc0496b41c39f06cc1222` |
| 7 | `abbrev` | [negFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/negfunc--42abdf7edf3276fb6b21ba32.md) | 94 | `declaration-track:42abdf7edf3276fb6b21ba32242b3573f9a776d0372ae0650c11d423b2aa5078` |
| 8 | `abbrev` | [zeroFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/zerofunc--b955ee041a0dd032080756f9.md) | 98 | `declaration-track:b955ee041a0dd032080756f95096aef1835d1d8c331be47cf5bfa0c1b9500b1d` |
| 9 | `abbrev` | [oneFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/onefunc--3c163092947d7a6e76611165.md) | 102 | `declaration-track:3c163092947d7a6e766111659c62c6532f711dbaa6b88c412ec970204bf3d787` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--a85249a22dd67edc500614b8.md) | 104 | `declaration-track:a85249a22dd67edc500614b89f27fbd4b092f2d5a1c05b3596a0d5a20aa42287` |
| 11 | `theorem` | [zero_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/zero-def--fbfbce24608e2b19d76811b2.md) | 107 | `result-track:fbfbce24608e2b19d76811b21b7cc29455ba5df73bf0905019e711382243bef0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--8dba72e416fe18accc6ad430.md) | 109 | `declaration-track:8dba72e416fe18accc6ad4303130c58e4dce652047b6f8cba9adc02e816ad6f3` |
| 13 | `theorem` | [one_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/one-def--d89b608c56821a89889b4b2b.md) | 112 | `result-track:d89b608c56821a89889b4b2b9f0ab751d42432c268db597ea6e515bfc6433f58` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--2f58861376c3fea4dbe5a33c.md) | 114 | `declaration-track:2f58861376c3fea4dbe5a33c1252f4af4cd6edc808ed6768767e1c9838102132` |
| 15 | `theorem` | [add_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/add-def--93d90bbc98475f1ea0643fcb.md) | 117 | `result-track:93d90bbc98475f1ea0643fcb7f65f2d2db421ee2644644a4c6367b06912709b9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--984d1dd016685bbc2b6b8aab.md) | 120 | `declaration-track:984d1dd016685bbc2b6b8aab4d285f37e0df48674a19b1a16771823551767f61` |
| 17 | `theorem` | [mul_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/mul-def--9c79045286da0c1a56d8d553.md) | 123 | `result-track:9c79045286da0c1a56d8d5532d09953d3e38ff28effd30bdcc1f849c27634971` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--58dc4aba0c80041ccdc5354c.md) | 126 | `declaration-track:58dc4aba0c80041ccdc5354c419bce89e5e791fd5c1a95cadc5ee067d547ff08` |
| 19 | `theorem` | [neg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/neg-def--4e6aedcdff47ce150e49edc7.md) | 129 | `result-track:4e6aedcdff47ce150e49edc74661a0cca358947e01fe6a083daefaffc3c09b0e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/instance--1f05e99245688df4426bc333.md) | 132 | `declaration-track:1f05e99245688df4426bc3331c9287632f41504212e3cdd78e93f8925a05f23c` |
| 21 | `theorem` | [card_ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/card-ring--2cf34a218ade6ce82a55a7d4.md) | 147 | `result-track:2cf34a218ade6ce82a55a7d471005d2449c101574aa3f8052b43677e2fa6cf3e` |
| 22 | `class` | [CompatibleRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/compatiblering--37004652df4b9258e25f9b61.md) | 162 | `declaration-track:37004652df4b9258e25f9b61583aa69d74241704e28954b4ee6b33a1c375c206` |
| 23 | `theorem` | [realize_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/realize-add--791e1e99b49e1933655f1525.md) | 189 | `result-track:791e1e99b49e1933655f1525429142f443a461bdca596a94c0f8659845037dec` |
| 24 | `theorem` | [realize_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/realize-mul--e0ee098b1b80c8652436de8e.md) | 194 | `result-track:e0ee098b1b80c8652436de8e9a848b850b2183b690103892b27dbf9907922ed2` |
| 25 | `theorem` | [realize_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/realize-neg--b5ceb27f09871ae7770f787c.md) | 199 | `result-track:b5ceb27f09871ae7770f787cfb44088862ea635ff4c6d99cd89e34c1b9d1ab8f` |
| 26 | `theorem` | [realize_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/realize-zero--d24b9b92f58834ddeed6b205.md) | 204 | `result-track:d24b9b92f58834ddeed6b2058a8984b207bec1fa7c47035775a5be729351a4af` |
| 27 | `theorem` | [realize_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/realize-one--e12b0a8d742cf4320814c75f.md) | 208 | `result-track:e12b0a8d742cf4320814c75fa58ca2ff9632f2d6fa6511693e3d695956b4a408` |
| 28 | `def` | [compatibleRingOfRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/compatibleringofring--7fcb1d6a7835b79163edd146.md) | 228 | `declaration-track:7fcb1d6a7835b79163edd14692a608bd8a62bff9e856dc46d892e8afc4b4fdf7` |
| 29 | `def` | [languageEquivEquivRingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/languageequivequivringequiv--61bed087635d667c1bfe8ea2.md) | 244 | `declaration-track:61bed087635d667c1bfe8ea2a8e3495e5d31ab217447cb25f67638a402b7b5e8` |
| 30 | `abbrev` | [addOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/addofringstructure--5a2d2b2ca7edc7dcfa3e1f0e.md) | 270 | `declaration-track:5a2d2b2ca7edc7dcfa3e1f0eb93d278ca50f7d9ec42eab3f8f8649394756fdd9` |
| 31 | `abbrev` | [mulOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/mulofringstructure--3961ddaa186833a78dd0e52c.md) | 277 | `declaration-track:3961ddaa186833a78dd0e52ce88164414ada0b270c849f84cfad745c45c26b87` |
| 32 | `abbrev` | [negOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/negofringstructure--80b5c6a5194dfb480c79c502.md) | 284 | `declaration-track:80b5c6a5194dfb480c79c502e887b5fe4093a510df21e93883d20ab3c0d3a765` |
| 33 | `abbrev` | [zeroOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/zeroofringstructure--aebc116e8c00df56601c4317.md) | 291 | `declaration-track:aebc116e8c00df56601c4317c9316f84eb3e132c79732ec8fa18ca6cb8b0bc46` |
| 34 | `abbrev` | [oneOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/oneofringstructure--1943fbdf027c74fcb6c7d3e6.md) | 298 | `declaration-track:1943fbdf027c74fcb6c7d3e66cc169c91eb97e89f4dd269b3bfd5e9a82481089` |
| 35 | `abbrev` | [compatibleRingOfRingStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/declarations/compatibleringofringstructure--b61cce4550ac603b43e641d3.md) | 311 | `declaration-track:b61cce4550ac603b43e641d30690c0e3c8e18485026c08c2c4e00430b23c210e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
