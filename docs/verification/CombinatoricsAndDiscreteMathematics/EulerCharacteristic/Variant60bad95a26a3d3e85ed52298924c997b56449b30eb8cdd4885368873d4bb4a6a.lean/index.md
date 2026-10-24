# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerCharacteristic.Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9954247bf4a6e3c2c2fc354051c8bc77010581",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9954247bf4a6e3c2c2fc354051c8bc77010581`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EulerCharSigns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulercharsigns--48d02bc0722e198091c99864.md) | 63 | `declaration-track:48d02bc0722e198091c99864fd859b3fbcb616817346ff7491e4bfee55f39420` |
| 2 | `abbrev` | [χ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/anonymous--dea4c3d8e86777659dfe9f50.md) | 72 | `declaration-track:dea4c3d8e86777659dfe9f50eb355a0efe64ab6cdedaa9ddced1f073bf80270f` |
| 3 | `lemma` | [χ_next](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/next--7b1e983d144ecf2dcbca7c01.md) | 75 | `result-track:7b1e983d144ecf2dcbca7c015ab3fbb813c093bbe8cd02c08f955f31312078bc` |
| 4 | `lemma` | [χ_prev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/prev--dc93f795c5e882f06defbe5c.md) | 78 | `result-track:dc93f795c5e882f06defbe5c0a5cef06de11b6b742abb65264aaf7d3aabac3cf` |
| 5 | `instance` | [eulerCharSignsUpInt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulercharsignsupint--6b6797d627503e4fdc0ba749.md) | 81 | `declaration-track:6b6797d627503e4fdc0ba749e1987cf676239dd90ac20cc1596fbf3963521998` |
| 6 | `instance` | [eulerCharSignsDownInt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulercharsignsdownint--94104502e50d616cb33188f6.md) | 86 | `declaration-track:94104502e50d616cb33188f697fec223a32d167d28a17669bcd345cdc7759183` |
| 7 | `instance` | [eulerCharSignsUpNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulercharsignsupnat--fc29ac0b9c9c66d1cb10bb05.md) | 91 | `declaration-track:fc29ac0b9c9c66d1cb10bb0503d41ae40ab8b322bb89c6d3d26ca803d5b8f0df` |
| 8 | `instance` | [eulerCharSignsDownNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulercharsignsdownnat--60b670ee848b1de4df92f28e.md) | 96 | `declaration-track:60b670ee848b1de4df92f28e14c759b96ec455907ab568dffdf042d63922f2c3` |
| 9 | `def` | [finrankSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/finranksupport--6cf8735f5a407493800621c8.md) | 114 | `declaration-track:6cf8735f5a407493800621c859d8fe66797c0ad5c504d213b540dc42c6dab2f3` |
| 10 | `lemma` | [finrankSupport_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/finranksupport-subset-iff--74e80689642682bcad1849c2.md) | 119 | `result-track:74e80689642682bcad1849c22765c05ef80b272430f290963b87104efaaddff1` |
| 11 | `def` | [eulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulerchar--8a3085dafee08d6a6dfc8df8.md) | 126 | `declaration-track:8a3085dafee08d6a6dfc8df8ae31cfca0822bcc61aca88d261cdb8939e93bf8c` |
| 12 | `lemma` | [support_eulerChar_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/support-eulerchar-summand--9663e56c02ebf9f803e58459.md) | 131 | `result-track:9663e56c02ebf9f803e58459e4877979db3ea11d62cebab9bd784cd85aadb5d0` |
| 13 | `theorem` | [eulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulerchar-eq-sum-finset-of-finranksupport-subset--fbb2cedd7c7c4fbfabbaf3f3.md) | 138 | `result-track:fbb2cedd7c7c4fbfabbaf3f3f94d7f54feec7a03da3fce2614cc78981ce33866` |
| 14 | `abbrev` | [eulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulerchar--f7ca729f3a8e5bee55fe1de6.md) | 155 | `declaration-track:f7ca729f3a8e5bee55fe1de60752a504f396ab97deb1d69b85bca7e81a30e11e` |
| 15 | `abbrev` | [homologyEulerChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/homologyeulerchar--b46c3cb020d68ec0cd674a49.md) | 161 | `declaration-track:b46c3cb020d68ec0cd674a4952a1e5491812aecbcc4d0e32fc0db27245b3ce15` |
| 16 | `theorem` | [eulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/eulerchar-eq-sum-finset-of-finranksupport-subset--654e9941133cc297899336c3.md) | 167 | `result-track:654e9941133cc297899336c39ae8537345eb8f204ea9e7ea04b4f4c55108aafd` |
| 17 | `theorem` | [homologyEulerChar_eq_sum_finSet_of_finrankSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerCharacteristic/Variant60bad95a26a3d3e85ed52298924c997b56449b30eb8cdd4885368873d4bb4a6a.lean/declarations/homologyeulerchar-eq-sum-finset-of-finranksupport-subset--ede75c95bb718ba1d8fb4354.md) | 175 | `result-track:ede75c95bb718ba1d8fb43546bb101683583e062161f8414af59f5d2cd0fbb96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
