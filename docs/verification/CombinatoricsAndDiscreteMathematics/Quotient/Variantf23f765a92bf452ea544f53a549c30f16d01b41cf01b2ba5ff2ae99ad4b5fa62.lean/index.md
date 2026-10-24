# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quotient.Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31b88879147229ac508cbb03a0f8645e33edba6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31b88879147229ac508cbb03a0f8645e33edba6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/listchoice--295970f99d2298bb89cb36d8.md) | 45 | `declaration-track:295970f99d2298bb89cb36d853f5da8501129d5342fb6a21a105e4a102b61a90` |
| 2 | `theorem` | [listChoice_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/listchoice-mk--9de31d7f3d304a73ef530156.md) | 53 | `result-track:9de31d7f3d304a73ef5301569e171c9f84664420a420cb526771de26c051ed61` |
| 3 | `lemma` | [list_ind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/list-ind--c73cc4760ab77e122ca634f1.md) | 63 | `result-track:c73cc4760ab77e122ca634f1ebc9bf705ce488ceaf77a7dd69ee371142604ea9` |
| 4 | `lemma` | [ind_fintype_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/ind-fintype-pi--51dadf50536f653131152ecf.md) | 83 | `result-track:51dadf50536f653131152ecf164ec6a4a803eeef62bbe621ce6f442d164d3ec3` |
| 5 | `lemma` | [induction_on_fintype_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/induction-on-fintype-pi--11421b430d07b477e5a3639c.md) | 94 | `result-track:11421b430d07b477e5a3639cc1fd6a218dbdf85740b6b786e5a16bae885a8e4d` |
| 6 | `def` | [finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoice--d30d41bb606080c4df486b8b.md) | 102 | `declaration-track:d30d41bb606080c4df486b8b09306ecd75d8a2d0ca69ea870988eb356a6e4e00` |
| 7 | `theorem` | [finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoice-eq--5fb8d81510b85b816bf3a822.md) | 113 | `result-track:5fb8d81510b85b816bf3a822cf7d4a6c4f611c66db1d6d137f3db65515fa49a7` |
| 8 | `lemma` | [eval_finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/eval-finchoice--b471e8b3467b8bce80177ec4.md) | 120 | `result-track:b471e8b3467b8bce80177ec40538b75262afce24c14360adc8a93dd0c05baf55` |
| 9 | `def` | [finLiftOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton--eef72f106d6c9a80db2a35a2.md) | 125 | `declaration-track:eef72f106d6c9a80db2a35a2cbe8dcf2efccc1ac4181947e61360201cce3ba16` |
| 10 | `lemma` | [finLiftOn_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton-empty--fb1ddd3f58b6616d3fcc19c9.md) | 130 | `result-track:fb1ddd3f58b6616d3fcc19c99ff646fd58365f993f5926dfc0398168ea165c7a` |
| 11 | `lemma` | [finLiftOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton-mk--4ea415897a29d14f664addd8.md) | 138 | `result-track:4ea415897a29d14f664addd82776a1d8a83d62325ace2132843c8221f40f7a81` |
| 12 | `def` | [finChoiceEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoiceequiv--40265fe3e7a934b493f8be78.md) | 147 | `declaration-track:40265fe3e7a934b493f8be783b410675a9c675053a6364eaad8a2300d6de6915` |
| 13 | `def` | [finHRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finhrecon--519e8f921cd9b88290596405.md) | 161 | `declaration-track:519e8f921cd9b8829059640515234dd948d775b1e928ba6e110f1ec4fe0c0c56` |
| 14 | `def` | [finRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finrecon--1c3330981f3bb8e201a03276.md) | 170 | `declaration-track:1c3330981f3bb8e201a03276ddab311936f24c726d1062e67a1cff819d0f8119` |
| 15 | `lemma` | [finHRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finhrecon-mk--42c125bbf29172c199d910c7.md) | 179 | `result-track:42c125bbf29172c199d910c797216fb5a60481314a9fb9b3211c36ee4066ad9b` |
| 16 | `lemma` | [finRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finrecon-mk--ec8515a31ce4823515a13c58.md) | 188 | `result-track:ec8515a31ce4823515a13c58127d9b9977d0e63cb7d165e4bdbc90fe0cf73e46` |
| 17 | `def` | [finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoice--7042a686ccb956745a0c2a94.md) | 203 | `declaration-track:7042a686ccb956745a0c2a94f6e26a6f853ff2d078919b5a91d8e25772936c65` |
| 18 | `theorem` | [finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoice-eq--02325271c5144f893dc0c9f9.md) | 206 | `result-track:02325271c5144f893dc0c9f941e367d41ceb93ed94d4059fd017eb4bebc9c48a` |
| 19 | `def` | [finLiftOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton--2c5af2437ab715cf99ce20d1.md) | 210 | `declaration-track:2c5af2437ab715cf99ce20d149ea65eba9258cb722edcadb49c79ee04e058a14` |
| 20 | `lemma` | [finLiftOn_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton-empty--bf0ef9e6677cefad6fb8fccd.md) | 214 | `result-track:bf0ef9e6677cefad6fb8fccde12717183272ebaa999ee4406bb2fcccb0514d59` |
| 21 | `lemma` | [finLiftOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finlifton-mk--d05965ed0bbc4069a37101fa.md) | 219 | `result-track:d05965ed0bbc4069a37101fa78129e057d74b588bdf5dd82ad72f19df4e81b1e` |
| 22 | `def` | [finChoiceEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finchoiceequiv--defd8dbef0d9cfb2fae844c8.md) | 225 | `declaration-track:defd8dbef0d9cfb2fae844c8964c0ea8e0bd136a975e0062eaf8b2ede120d45d` |
| 23 | `def` | [finRecOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finrecon--4baf1a8e5c8dcef68e1767b9.md) | 233 | `declaration-track:4baf1a8e5c8dcef68e1767b90787107a4aec09b6621ac8e1562068409a84434a` |
| 24 | `lemma` | [finRecOn_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantf23f765a92bf452ea544f53a549c30f16d01b41cf01b2ba5ff2ae99ad4b5fa62.lean/declarations/finrecon-mk--9f59c2fefe1d22d6964988f8.md) | 241 | `result-track:9f59c2fefe1d22d6964988f8b70ccff80545ad14bacf7b6f49167b4cd3dd7b64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
