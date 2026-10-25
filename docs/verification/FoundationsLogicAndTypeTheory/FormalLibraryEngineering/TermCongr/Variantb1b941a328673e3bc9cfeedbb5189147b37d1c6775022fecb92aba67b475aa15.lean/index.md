# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermCongr.Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65928f43409ed6953f17ef2b35229ebd8930f001",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65928f43409ed6953f17ef2b35229ebd8930f001`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.CongrTheorems` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CongrExclamation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/initialize--8cf467729983a60ebf4cdfe2.md) | 63 | `declaration-track:8cf467729983a60ebf4cdfe238c3435f8b3d2e7520988f50a0a554fab7840749` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/syntax--adb3a106f25b732131268bb4.md) | 87 | `declaration-track:adb3a106f25b732131268bb44c37d31aaacb525731e9e6795c23ddf69476ce46` |
| 3 | `def` | [congrHoleForLhsKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrholeforlhskey--49db68befa4dccd576e14c4d.md) | 99 | `declaration-track:49db68befa4dccd576e14c4d107f712c924324798b51f105d4a79e8141e57472` |
| 4 | `def` | [congrHoleIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrholeindex--39cdb5afae08274570948f2b.md) | 104 | `declaration-track:39cdb5afae08274570948f2bad8a82c75b2c6a4c224494e1fde97d29bee61c00` |
| 5 | `def` | [cHole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/chole--70a8c52951d37a5d3b7acb1b.md) | 117 | `declaration-track:70a8c52951d37a5d3b7acb1b96dd4eebf07a8ff1d39e4536b3e8ee8a9dbd1a07` |
| 6 | `def` | [unexpandCHole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/unexpandchole--f8a730707fc45cbd72ee5764.md) | 121 | `declaration-track:f8a730707fc45cbd72ee5764cf9e16be266168febaeb7e393ab4e40f33209ceb` |
| 7 | `def` | [mkCHole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkchole--64e5373344cd6c4e83b242f2.md) | 129 | `declaration-track:64e5373344cd6c4e83b242f20c68f65e9b9b1aa22c1d76f6b0fb6cc2eec70b12` |
| 8 | `def` | [cHole?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/chole--2b8a9228c93a218dfda8e5f0.md) | 139 | `declaration-track:2b8a9228c93a218dfda8e5f053e688ab99806a90558ed6592581f6880ab58aae` |
| 9 | `def` | [hasCHole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/haschole--98379d68dead49a14bfd6354.md) | 151 | `declaration-track:98379d68dead49a14bfd6354f4b8c26ae2ddf02a4429add700ef54d95a5f9383` |
| 10 | `def` | [removeCHoles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/removecholes--8759c6f3ea96fcc421aa3484.md) | 155 | `declaration-track:8759c6f3ea96fcc421aa3484e8ce10419558a7d973eee58277efdf41e97c4e9a` |
| 11 | `def` | [elabCHole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/elabchole--b1f92e33015f3222295b5ebd.md) | 160 | `declaration-track:b1f92e33015f3222295b5ebd33d1fa6dba9da3716750c9254fc633a53354ef53` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/syntax--33d565ae0abdc7d573fd03d3.md) | 180 | `declaration-track:33d565ae0abdc7d573fd03d3c8f6b8a6ca74bf8a99ac4d8f7ed477f4a249f73e` |
| 13 | `def` | [elabCHoleExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/elabcholeexpand--f32d8ed0acb8744251c55bff.md) | 183 | `declaration-track:f32d8ed0acb8744251c55bffe467923a910cca7b70131cf1db46357a70235118` |
| 14 | `def` | [processAntiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/processantiquot--359c3051d07952d9844938a4.md) | 190 | `declaration-track:359c3051d07952d9844938a4e8c5d1e966cb56c2546ac90ceb035cdbdf20ed60` |
| 15 | `def` | [elaboratePattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/elaboratepattern--c18891bc4751aac9cc21530c.md) | 205 | `declaration-track:c18891bc4751aac9cc21530ce80a8c639d12170306a840d4bdf3ad0be59b2808` |
| 16 | `def` | [mkEqForExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkeqforexpectedtype--f65426bb6859fc0486f6d2d5.md) | 215 | `declaration-track:f65426bb6859fc0486f6d2d5423f10d319a0bc5a606458d515a44127398f4a4b` |
| 17 | `def` | [mkHEqForExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkheqforexpectedtype--98faf8124c6c9cd23b3226a2.md) | 226 | `declaration-track:98faf8124c6c9cd23b3226a2017c19c73e18bab55875da9ec2582edd8f504d0b` |
| 18 | `def` | [mkIffForExpectedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkiffforexpectedtype--16d4296c4cac30835412b7af.md) | 238 | `declaration-track:16d4296c4cac30835412b7afd2929cd73293271520a67a7af4a3dad455d156c6` |
| 19 | `def` | [ensureIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/ensureiff--1f2643d5c0afba0c32c51f4f.md) | 248 | `declaration-track:1f2643d5c0afba0c32c51f4f6b7a166779e9d217d14a678167717946e8fda41b` |
| 20 | `inductive` | [CongrType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrtype--0fffbd3bfa1a64482e006588.md) | 253 | `declaration-track:0fffbd3bfa1a64482e0065887f1b3d1b6c74803a219bc2f32a540e1198cbcb98` |
| 21 | `structure` | [CongrResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult--ae7a60f672bc662aa853d2ed.md) | 271 | `declaration-track:ae7a60f672bc662aa853d2ed3bfba343c63e0ee38da1343c46b4d61c235f70c0` |
| 22 | `def` | [CongrResult.isRfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-isrfl--5456c4006544ae03d8db9f7d.md) | 286 | `declaration-track:5456c4006544ae03d8db9f7d5ca00274ddbde9e8ecb9ab53e795c42325d3dd0d` |
| 23 | `def` | [CongrResult.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-eq--7e3416b768f0dc43f6f85aea.md) | 291 | `declaration-track:7e3416b768f0dc43f6f85aea6d2825688c341722b77ae770257edc35623d7948` |
| 24 | `def` | [CongrResult.heq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-heq--3cfc18a425108b9b2a7e92a2.md) | 301 | `declaration-track:3cfc18a425108b9b2a7e92a21855e575ce6a1f690f1062bbdde1357fee0c7955` |
| 25 | `def` | [CongrResult.iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-iff--12d22bf28c17c88db69a6a06.md) | 307 | `declaration-track:12d22bf28c17c88db69a6a067df266305a6bcbdceec2cc8fd075864394be921a` |
| 26 | `def` | [CongrResult.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-trans--239f3e26e89f8b017b69b720.md) | 315 | `declaration-track:239f3e26e89f8b017b69b7200dc52352dcb152c06d674d5279366265e9be8408` |
| 27 | `def` | [CongrResult.mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-mk--dc2f3df2d137992f9b776a5d.md) | 333 | `declaration-track:dc2f3df2d137992f9b776a5df1820187d808414895e2f529f2b4e3fe0a4938c4` |
| 28 | `def` | [CongrResult.defeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-defeq--f732d5af4a3c64dd60caee03.md) | 389 | `declaration-track:f732d5af4a3c64dd60caee039facd392633c0f4422c1dd5f70a6441a6f6418d4` |
| 29 | `def` | [CongrResult.mkDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-mkdefault--1128a37e6ced48e2a0a313c0.md) | 409 | `declaration-track:1128a37e6ced48e2a0a313c0aae4706e847e2c48f8c935b6c51c4b48c6f03b6e` |
| 30 | `def` | [CongrResult.mkDefault'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/congrresult-mkdefault--62dddb8ce22673dc2ac3ef11.md) | 419 | `declaration-track:62dddb8ce22673dc2ac3ef11ef0418bfdc8b0feac668f916b9687b4a54b2dee9` |
| 31 | `def` | [throwCongrEx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/throwcongrex--0231b11b18f234081c541102.md) | 427 | `declaration-track:0231b11b18f234081c54110284758fc9d2126b372a75a73791a68ab63b80d2c3` |
| 32 | `def` | [mkCongrOfCHole?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkcongrofchole--36b38f34481f24b67227212d.md) | 434 | `declaration-track:36b38f34481f24b67227212dbe23cf9fae2ee87b3f6e17c351be1bc7946257c6` |
| 33 | `def` | [mkCongrOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/mkcongrof--144f4fa2c60ce8490669bf01.md) | 464 | `declaration-track:144f4fa2c60ce8490669bf01fba73799da6b95f5cbbee373d8ccad58fb33c39f` |
| 34 | `def` | [elabTermCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variantb1b941a328673e3bc9cfeedbb5189147b37d1c6775022fecb92aba67b475aa15.lean/declarations/elabtermcongr--d5135a5032d35b6b848e2a43.md) | 615 | `declaration-track:d5135a5032d35b6b848e2a432c5b066ad77caedb041a874872bd6f6fa85ab215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
