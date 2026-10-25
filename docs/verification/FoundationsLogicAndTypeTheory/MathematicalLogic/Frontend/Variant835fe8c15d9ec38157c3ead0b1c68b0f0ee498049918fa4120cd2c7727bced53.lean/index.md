# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Frontend.Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.BuiltinTactic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.MapIdx` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/succ--7c026caf9aed5d116d772991.md) | 36 | `declaration-track:7c026caf9aed5d116d7729911ac84791d1d486dcfc0a7efcc97ff1e765ceef4f` |
| 2 | `structure` | [MetaProblem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/metaproblem--dcc8e4798d9893f7666dc936.md) | 59 | `declaration-track:dcc8e4798d9893f7666dc936797e06bc2da2074eeca121d9393482a71ad99c81` |
| 3 | `def` | [mkEvalRflProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/mkevalrflproof--c05b7fbada83d43b1bcf886f.md) | 72 | `declaration-track:c05b7fbada83d43b1bcf886f217cd74482d3027748df97d4771c99fd097b70e6` |
| 4 | `def` | [mkCoordinateEvalAtomsEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/mkcoordinateevalatomseq--ca4840cb4f9904dc7604523f.md) | 77 | `declaration-track:ca4840cb4f9904dc7604523f037384b56567631f3eeea16532d3e3999baa95ab` |
| 5 | `def` | [mkAtomLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/mkatomlinearcombo--173e7f6ccbe188c26f146995.md) | 91 | `declaration-track:173e7f6ccbe188c26f1469958632889119c1134d3b42aaac23175ece2bb8ceaa` |
| 6 | `def` | [asLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/aslinearcombo--f423b2b58036e93c15e32b14.md) | 105 | `declaration-track:f423b2b58036e93c15e32b14a5b79e20154a5f2aabceb04b19eccee5c4951b25` |
| 7 | `def` | [asLinearComboImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/aslinearcomboimpl--a1865f59dc56946d059e4ac1.md) | 131 | `declaration-track:a1865f59dc56946d059e4ac10ebfe9e1c95bf7e044144003fe531839ae219c14` |
| 8 | `def` | [trivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/trivial--f0fd5507177d66ad0021c87b.md) | 336 | `declaration-track:f0fd5507177d66ad0021c87bfe0c1244ddf250d1100a540fdebc2aad95184325` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/instance--7128f0032aab94671a66c392.md) | 339 | `declaration-track:7128f0032aab94671a66c3929ecd477bbfe668fc23ab53dde76cf9c97422e93e` |
| 10 | `def` | [addIntEquality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/addintequality--137295237cc6c63f062655a5.md) | 346 | `declaration-track:137295237cc6c63f062655a559e3be4731ca9e0385ea94d295a0de9a93186f68` |
| 11 | `def` | [addIntInequality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/addintinequality--e2c3350c5a53e298a043ac20.md) | 361 | `declaration-track:e2c3350c5a53e298a043ac2093124169e233c1d5ce9e4f0dfc1eb9e681949183` |
| 12 | `def` | [pushNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/pushnot--d58f53cf739e68078fc4f304.md) | 372 | `declaration-track:d58f53cf739e68078fc4f30471b3f1dddf39f41016b8d0f3e124640dc0eaa419` |
| 13 | `def` | [addFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/addfact--7f11034ea701f945e983d937.md) | 425 | `declaration-track:7f11034ea701f945e983d9376cecb9f690af10234b6233e74f9f41e6dbe69f7b` |
| 14 | `def` | [processFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/processfacts--0e86ceb94860ac4a937b131f.md) | 515 | `declaration-track:0e86ceb94860ac4a937b131fccdfe27ab6299e25c0c68086b502014027ba258c` |
| 15 | `def` | [formatErrorMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/formaterrormessage--fa829bd6049633d396cfdb34.md) | 533 | `declaration-track:fa829bd6049633d396cfdb344f1bca5f09fb93f6d9485f355860424e96145826` |
| 16 | `def` | [splitDisjunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/splitdisjunction--ba50ef4e3b9af32e7fd00a32.md) | 620 | `declaration-track:ba50ef4e3b9af32e7fd00a32a3596a5f9dbd59b2c3f8e779c2c25f19341b2ac5` |
| 17 | `def` | [omegaImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/omegaimpl--f87bb55a1c48427cd46d394c.md) | 649 | `declaration-track:f87bb55a1c48427cd46d394c7bb428ff914cfb34b45cc86c6f9a6761a8493fa2` |
| 18 | `def` | [omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/omega--295e0ddc2f6bed15b9ae30ea.md) | 672 | `declaration-track:295e0ddc2f6bed15b9ae30eaadcc3334b4ec88be2625f4d34fe1ed1f0951c487` |
| 19 | `def` | [omegaTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/omegatactic--eb982bc4c19f6783af974e88.md) | 680 | `declaration-track:eb982bc4c19f6783af974e88c437292af81d216ad0288c33c10a8bfbb200a2a3` |
| 20 | `def` | [omegaDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/omegadefault--a1bf438928bc24ae0f7408cc.md) | 701 | `declaration-track:a1bf438928bc24ae0f7408cc0ba23a2569ae9def98bc63d9c9601ae2904670a7` |
| 21 | `def` | [evalOmega](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/evalomega--b0e74244a5938483bb0c61d4.md) | 704 | `declaration-track:b0e74244a5938483bb0c61d4794b7e433fcafc6d83c9037fee34810aae0163b2` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/declarations/builtin-initialize--a7ea6a370cc7a744ef5f47a3.md) | 712 | `declaration-track:a7ea6a370cc7a744ef5f47a3171d7e327c74d9190a678a115c8f7d0557402b31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
