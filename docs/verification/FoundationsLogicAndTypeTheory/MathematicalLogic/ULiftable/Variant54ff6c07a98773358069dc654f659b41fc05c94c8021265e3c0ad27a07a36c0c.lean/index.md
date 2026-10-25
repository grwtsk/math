# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftable.Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9b5572dc0f3389cd2ca6ef85f0c2ac028eb37c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9b5572dc0f3389cd2ca6ef85f0c2ac028eb37c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Cont` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/uliftable--3db661e8c902db5ca84ced4a.md) | 45 | `declaration-track:3db661e8c902db5ca84ced4a08d99094b5e35a638f3ca01939d564d2304bbcc3` |
| 2 | `def` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/up--e1b40e7ff898b0c03d4681cc.md) | 54 | `declaration-track:e1b40e7ff898b0c03d4681cc695c47e5168f02223c94c6d71540cb7b553f1f36` |
| 3 | `def` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/down--6f865bbcde211a58686fa0b1.md) | 62 | `declaration-track:6f865bbcde211a58686fa0b1b54525ef7f4ba64a419ea7355e0f27eed7fe490a` |
| 4 | `def` | [adaptUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/adaptup--a2f989272d2031feb2d8af8e.md) | 68 | `declaration-track:a2f989272d2031feb2d8af8e2184e6b17d153b5f70ab1df893d6238fea2c669b` |
| 5 | `def` | [adaptDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/adaptdown--38226ed275bc28a24c564011.md) | 74 | `declaration-track:38226ed275bc28a24c56401190c58f95a8baf432beff4fed6df60213b9222809` |
| 6 | `def` | [upMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/upmap--42f749ff3c4748542cf4e045.md) | 80 | `declaration-track:42f749ff3c4748542cf4e0458262be92191aec9d9112d4f7538dcefd78f63495` |
| 7 | `def` | [downMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/downmap--99e4d22674beec023edc028d.md) | 86 | `declaration-track:99e4d22674beec023edc028d0671252f2cc61e487428ed98cbe111cada6c63a3` |
| 8 | `theorem` | [up_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/up-down--6211a5dea16fe629230afc33.md) | 92 | `result-track:6211a5dea16fe629230afc33e643af843573fb6c1868e89136abeb41e93b5513` |
| 9 | `theorem` | [down_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/down-up--e72cb620c799775c6cef526c.md) | 98 | `result-track:e72cb620c799775c6cef526c9e2fe7a9f1c9b5af1624845309691c1c5d3ca0d5` |
| 10 | `instance` | [instULiftableId](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/instuliftableid--6c5b8f355b744e009cc52100.md) | 107 | `declaration-track:6c5b8f355b744e009cc5210056c479adf0f0f290449aca959b2414694e04a995` |
| 11 | `def` | [StateT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/statet-uliftable--36d6e53d5503d8c90cd5abc6.md) | 112 | `declaration-track:36d6e53d5503d8c90cd5abc63576940f0362b6b6a61e0ac441a66c156a1ea552` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/instance--fd5a0bb0a4503e2b0175b344.md) | 118 | `declaration-track:fd5a0bb0a4503e2b0175b3442a9a9bbdfca75adcd966d9444d4f93968b0f4b1b` |
| 13 | `instance` | [StateT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/statet-instuliftableuliftulift--ecfdf953a617db29fdbe5cde.md) | 121 | `declaration-track:ecfdf953a617db29fdbe5cdef8e34374ffb9c942f2f8344d19c52d5cab33d89b` |
| 14 | `def` | [ReaderT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/readert-uliftable--9bfcecf146be1d80d38a4da0.md) | 126 | `declaration-track:9bfcecf146be1d80d38a4da0f3871c85ba4df6be8e28ac7b8e5bae017c7d1c24` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/instance--6bf8c89790f6ff50101b0a41.md) | 131 | `declaration-track:6bf8c89790f6ff50101b0a41ecd66d3198465db2f109898ebaea9ccdd2fa094a` |
| 16 | `instance` | [ReaderT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/readert-instuliftableuliftulift--fe0ce7ab8d2cdabd45d8d5fa.md) | 134 | `declaration-track:fe0ce7ab8d2cdabd45d8d5fa61331a2e82817952455774fb4487545f8b565e4a` |
| 17 | `def` | [ContT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/contt-uliftable--ff0a18fa2c7a34ab8351538c.md) | 139 | `declaration-track:ff0a18fa2c7a34ab8351538c58faf6547c9b0001af0287a253a2f9a8ffc8b079` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/instance--ea82afc367ee66cb66218ab3.md) | 144 | `declaration-track:ea82afc367ee66cb66218ab32bf09199c514e0abfce1af67188e2996837e5e88` |
| 19 | `instance` | [ContT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/contt-instuliftableuliftulift--aac355ccb229b7604f14d069.md) | 147 | `declaration-track:aac355ccb229b7604f14d0695ed437728e2dccf0aa364cae68fe54da1b2f6bbe` |
| 20 | `def` | [WriterT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/writert-uliftable--2f86d345cfabbe2683d3649d.md) | 152 | `declaration-track:2f86d345cfabbe2683d3649d2c8ca88549d7a7090ba4d93da9a69b0aea836dec` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/instance--1556c0d57c48539b99d70958.md) | 157 | `declaration-track:1556c0d57c48539b99d7095803647e651167ff1983deb76265ba0738ae2b7bfd` |
| 22 | `instance` | [WriterT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variant54ff6c07a98773358069dc654f659b41fc05c94c8021265e3c0ad27a07a36c0c.lean/declarations/writert-instuliftableuliftulift--ff8e29db7f2b84076e94d0af.md) | 160 | `declaration-track:ff8e29db7f2b84076e94d0af8cf0852a0b4a12612e882cb1cc06d6f478df1d66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
