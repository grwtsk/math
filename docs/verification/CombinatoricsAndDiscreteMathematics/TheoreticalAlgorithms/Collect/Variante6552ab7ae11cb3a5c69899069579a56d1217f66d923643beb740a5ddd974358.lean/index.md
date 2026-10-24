# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Collect.Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de346b9b9be3384054909349d1aa915ee0883250",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de346b9b9be3384054909349d1aa915ee0883250`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.run_toList_mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iterm-run-tolist-mk--50630875fa37e724aacc38f3.md) | 35 | `result-track:50630875fa37e724aacc38f3ab52f87cf59826d9f71d834752ac056ef2276a6d` |
| 2 | `theorem` | [Iter.toArray_eq_toArray_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-eq-toarray-toiterm--b24d1f1e68a0e317e45818ac.md) | 38 | `result-track:b24d1f1e68a0e317e45818ac6260cbdd609bfcf36b3d6465da4e2500cfdd7881` |
| 3 | `theorem` | [Iter.toList_eq_toList_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-eq-tolist-toiterm--751c4fae42b577abb4e0dec8.md) | 43 | `result-track:751c4fae42b577abb4e0dec8a9662d6b2affbb68ec6bd623dc1f9978f3f59f8f` |
| 4 | `theorem` | [Iter.toListRev_eq_toListRev_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-eq-tolistrev-toiterm--e0b0729fd2cfd3d22c222d4e.md) | 48 | `result-track:e0b0729fd2cfd3d22c222d4e692ce5da9736951154d0fcd594ef07e4008dde87` |
| 5 | `theorem` | [Iter.toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-ensuretermination--115916c7af54b5f2d567d2d6.md) | 54 | `result-track:115916c7af54b5f2d567d2d6ea1ad2ca5b9dc9f063fcc0059f259457248be5d9` |
| 6 | `theorem` | [Iter.toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-ensuretermination--b9a0cddc9855ad6a0ec2b567.md) | 60 | `result-track:b9a0cddc9855ad6a0ec2b567e9e76136d94d4f862aabf12a6ffac22d107226e1` |
| 7 | `theorem` | [Iter.toListRev_ensureTermination_eq_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-ensuretermination-eq-tolistrev--9f61472d653c62c542c3501c.md) | 66 | `result-track:9f61472d653c62c542c3501c01ecbc2f30420e9b9d52e5c3406f56f023ce89a1` |
| 8 | `theorem` | [IterM.toArray_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iterm-toarray-toiter--f52edc65ee9a3fe33a25ba02.md) | 71 | `result-track:f52edc65ee9a3fe33a25ba021aea4091a0195dbf18ed4ff7606baf98d1ad3832` |
| 9 | `theorem` | [IterM.toList_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iterm-tolist-toiter--46b63a131ac74272da28c7be.md) | 77 | `result-track:46b63a131ac74272da28c7be583c4cea7e370faa0921c8c1b0fc0a0b44b3fd72` |
| 10 | `theorem` | [IterM.toListRev_toIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iterm-tolistrev-toiter--c7afb2717c13990082ac09a5.md) | 83 | `result-track:c7afb2717c13990082ac09a54ea04ffbce55cfdcb5ac2c37db73b3a5e92247cb` |
| 11 | `theorem` | [Iter.toList_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-toarray--4a20aa1eaffc0ca90897d6c8.md) | 89 | `result-track:4a20aa1eaffc0ca90897d6c82409a3f476035652169b7ac8146604cac59f3270` |
| 12 | `theorem` | [Iter.toList_toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-toarray-ensuretermination--f4c2b14a3a3781ba01c65a37.md) | 94 | `result-track:f4c2b14a3a3781ba01c65a370e1be1d438e87d409017758d476f8b6caad6e0af` |
| 13 | `theorem` | [Iter.toArray_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-tolist--9120b576119fb1cfe8e9f80b.md) | 100 | `result-track:9120b576119fb1cfe8e9f80b003a919f0ee0cef7647b93b54a921ac5533f1b79` |
| 14 | `theorem` | [Iter.toArray_toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-tolist-ensuretermination--cd088a0ebc27061213777acc.md) | 105 | `result-track:cd088a0ebc27061213777acc87ae238b4413f150640ff519f3d23ec8ce28d9c3` |
| 15 | `theorem` | [Iter.reverse_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-reverse-tolistrev--28e3969e769b12b9a3b38ecb.md) | 111 | `result-track:28e3969e769b12b9a3b38ecb318e163172e86b696055f4e4f888bbeefb9c87fc` |
| 16 | `theorem` | [Iter.reverse_toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-reverse-tolistrev-ensuretermination--cda9962eda40910405f81698.md) | 116 | `result-track:cda9962eda40910405f8169893815dd29615677b652070bfee2cf9573e3eaf1b` |
| 17 | `theorem` | [Iter.toListRev_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-eq--d2c6ac9eaa1fb374c608b81c.md) | 122 | `result-track:d2c6ac9eaa1fb374c608b81cd8eb8e0b6d6fb5c453c31979f665c83869cbefff` |
| 18 | `theorem` | [Iter.toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-ensuretermination--2b8d21619df65d2fe90246ac.md) | 127 | `result-track:2b8d21619df65d2fe90246acbb7720f363f1d63def2bc196d17caeca6cfa75fc` |
| 19 | `theorem` | [Iter.toArray_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-eq-match-step--ddf0f507580f4dace70d3062.md) | 132 | `result-track:ddf0f507580f4dace70d3062823f5d4924724a2a860feff3c1295655d73a7381` |
| 20 | `theorem` | [Iter.toArray_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-toarray-ensuretermination-eq-match-step--e22296eaf5ef802920bcc724.md) | 143 | `result-track:e22296eaf5ef802920bcc72431a9a2470b650f559565324f5ed897540717fea9` |
| 21 | `theorem` | [Iter.toList_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-eq-match-step--82a334121ecd6b30f979d37a.md) | 151 | `result-track:82a334121ecd6b30f979d37a9c9663bdb17d6b114da0ba7b4cf11934bb65cc84` |
| 22 | `theorem` | [Iter.toList_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-ensuretermination-eq-match-step--708a6f66b46b91f1f844125d.md) | 160 | `result-track:708a6f66b46b91f1f844125dae15fdfd069839cd6ee14080609a9db4f909c4ee` |
| 23 | `theorem` | [Iter.toListRev_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-eq-match-step--03ee67086be07417e76d55e8.md) | 168 | `result-track:03ee67086be07417e76d55e8ee357505763b16c526c77bbf2674c89ae9b73317` |
| 24 | `theorem` | [Iter.toListRev_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolistrev-ensuretermination-eq-match-step--5367f8094bca7ab9e648081e.md) | 177 | `result-track:5367f8094bca7ab9e648081e6987d2f9deac0c4ec1172f20f5a3ca22293c80d3` |
| 25 | `theorem` | [Iter.getElem?_toList_eq_atIdxSlow?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-getelem-tolist-eq-atidxslow--049ac194a707926b0e88d530.md) | 184 | `result-track:049ac194a707926b0e88d530cf5dae05a40f9e2ecb5c7eb607588bfc21abfcc6` |
| 26 | `theorem` | [Iter.toList_eq_of_atIdxSlow?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-tolist-eq-of-atidxslow-eq--bc2d156ab1be0e7f06827fcf.md) | 198 | `result-track:bc2d156ab1be0e7f06827fcf7535b04e05e4db3b910643cb4fb936985f6c8785` |
| 27 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-isplausibleindirectoutput-of-mem-tolist--33e98f9b8052f0423c1e9910.md) | 206 | `result-track:33e98f9b8052f0423c1e99103e0d3cdf0fd6b048083274361dec343ffc17320f` |
| 28 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-isplausibleindirectoutput-of-mem-tolistrev--9f918bee95ee4cbb60853382.md) | 229 | `result-track:9f918bee95ee4cbb608533824f8bf789e0720afafb5ee5da9f3fadb27df2e773` |
| 29 | `theorem` | [Iter.isPlausibleIndirectOutput_of_mem_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358.lean/declarations/iter-isplausibleindirectoutput-of-mem-toarray--229ce68c4212062020a4adce.md) | 237 | `result-track:229ce68c4212062020a4adce19cf5e86e6460ea01213553a9d0bec456b4e2a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
