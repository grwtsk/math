# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "414386089cf7c6743b64069567eb52dd01c1fba3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `414386089cf7c6743b64069567eb52dd01c1fba3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Nat.UnifyZeroOrSuccResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/nat-unifyzeroorsuccresult--50ae8587c2271635f73330db.md) | 49 | `declaration-track:50ae8587c2271635f73330db940747b22356a7704c903cfbc68f78104dc45321` |
| 2 | `def` | [Nat.unifyZeroOrSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/nat-unifyzeroorsucc--c12a8b96a12d1c770a05b9a4.md) | 62 | `declaration-track:c12a8b96a12d1c770a05b9a49d8fff9cb51672c00808dd897da02a77456272ff` |
| 3 | `inductive` | [List.ProveNilOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-provenilorconsresult--8a8e204cf8aa9a5e851e951e.md) | 74 | `declaration-track:8a8e204cf8aa9a5e851e951e2b20c8af779dff4b4849e1b09923b637d23ea0e8` |
| 4 | `def` | [List.ProveNilOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-provenilorconsresult-uncheckedcast--1dfcc3e3560324ba83d720f7.md) | 84 | `declaration-track:1dfcc3e3560324ba83d720f7590ee5b1eba263b6148036f82084af910ae6032c` |
| 5 | `def` | [List.ProveNilOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-provenilorconsresult-eq-trans--bb9a731aab6b96ed031de25b.md) | 92 | `declaration-track:bb9a731aab6b96ed031de25b71c6035b1f1e786bafc6038df6b7eb79754867ba` |
| 6 | `lemma` | [List.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-range-zero--95e4c007b51b0dee6581048c.md) | 98 | `result-track:95e4c007b51b0dee6581048c6fbcdf84ef8459c2fafe73cb7f58a2ef3519fd02` |
| 7 | `lemma` | [List.range_succ_eq_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-range-succ-eq-map--8646026cc99cf8f5baaf999b.md) | 101 | `result-track:8646026cc99cf8f5baaf999baa07df4da4d5dc2e5b567ca4a42b648fa72e2dcc` |
| 8 | `def` | [List.proveNilOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/list-provenilorcons--c42d0900d85f5ee1dba339be.md) | 110 | `declaration-track:c42d0900d85f5ee1dba339be52f1e60c1c8c431db13d3b8ea7d837d809dc6af7` |
| 9 | `inductive` | [Multiset.ProveZeroOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-provezeroorconsresult--59851720b2315c162aeeece5.md) | 148 | `declaration-track:59851720b2315c162aeeece5977643eecbfdfd011f4e581400b6b4d186a33974` |
| 10 | `def` | [Multiset.ProveZeroOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-provezeroorconsresult-uncheckedcast--86662ae7cdc8ff23f131c6d0.md) | 158 | `declaration-track:86662ae7cdc8ff23f131c6d0f8c018db61e25aa0ee2e43b850c54f6a5c43deef` |
| 11 | `def` | [Multiset.ProveZeroOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-provezeroorconsresult-eq-trans--ef33f2f91743880326392c48.md) | 166 | `declaration-track:ef33f2f91743880326392c48a41bf72d8c4cadc08687e5dd7fc30083d7ade5d9` |
| 12 | `lemma` | [Multiset.insert_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-insert-eq-cons--fe9bf7bc53440cb0642c8cb7.md) | 172 | `result-track:fe9bf7bc53440cb0642c8cb73166b3939126d541f819772cb680b73db8eea851` |
| 13 | `lemma` | [Multiset.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-range-zero--2102d61df4c8952f87eb6b86.md) | 176 | `result-track:2102d61df4c8952f87eb6b865fe817f011bed6fac4209be869c97673e06d30c8` |
| 14 | `lemma` | [Multiset.range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-range-succ--29532f0dc12d46b7a18c4a78.md) | 179 | `result-track:29532f0dc12d46b7a18c4a7812b9df1e6db8e4947fd8e76a068b9e0b39f1795e` |
| 15 | `def` | [Multiset.proveZeroOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/multiset-provezeroorcons--ce8c982a93b5bed3a9e74e3a.md) | 187 | `declaration-track:ce8c982a93b5bed3a9e74e3ab27ddba5eb80524fdd1c70898f6d3e8b7f4c652c` |
| 16 | `inductive` | [Finset.ProveEmptyOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-proveemptyorconsresult--122eb194047291bc2c7c106a.md) | 217 | `declaration-track:122eb194047291bc2c7c106a46739c657c48db50534e9eaf08fe7dd0a6fcb439` |
| 17 | `def` | [Finset.ProveEmptyOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-proveemptyorconsresult-uncheckedcast--e229201061eba0266409e5a1.md) | 227 | `declaration-track:e229201061eba0266409e5a1483f50cb50e471e35cef54980185e8d985e0bb24` |
| 18 | `def` | [Finset.ProveEmptyOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-proveemptyorconsresult-eq-trans--3916d557d615ae5d64ccba24.md) | 235 | `declaration-track:3916d557d615ae5d64ccba246fbc83f09af4b3b2d241a684ec4f406b13b428f6` |
| 19 | `lemma` | [Finset.insert_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-insert-eq-cons--5d606a8d44aa21b747da13a9.md) | 241 | `result-track:5d606a8d44aa21b747da13a9aaf21d5333c14a87109b0d58b23d8ff15e318075` |
| 20 | `lemma` | [Finset.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-range-zero--caea0e9df20b7fc35cfe07ec.md) | 245 | `result-track:caea0e9df20b7fc35cfe07ec642473749bb97b57a05f88ec67fcd7fd4d6bce3f` |
| 21 | `lemma` | [Finset.range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-range-succ--8fc3becfd80076d3f600f6ff.md) | 248 | `result-track:8fc3becfd80076d3f600f6ffe35cd3b9f50c2f513b80f66ec43854142b33ab63` |
| 22 | `lemma` | [Finset.univ_eq_elems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-univ-eq-elems--9f949b809c5040860c2a0c9a.md) | 252 | `result-track:9f949b809c5040860c2a0c9a1d163dcdd144211b35789fb86c1192ba0ec5b94f` |
| 23 | `def` | [Finset.proveEmptyOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-proveemptyorcons--c119bd99ef40d89c50269dd9.md) | 261 | `declaration-track:c119bd99ef40d89c50269dd9184df4dcfc93bdea08fc6aa5b4647fe0efb9d97f` |
| 24 | `def` | [Result.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/result-eq-trans--4d7331acd47d1fad9c7691f8.md) | 303 | `declaration-track:4d7331acd47d1fad9c7691f88b9e6e4e060d18fad2431d564ada2529fe0a825e` |
| 25 | `lemma` | [Finset.sum_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-sum-empty--fc35d8c598a65327dd791df1.md) | 320 | `result-track:fc35d8c598a65327dd791df15c869327117a800e78a6fc1e73fe6a87b67eed76` |
| 26 | `lemma` | [Finset.prod_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/finset-prod-empty--dcdb257fcf07170a7a7946ea.md) | 324 | `result-track:dcdb257fcf07170a7a7946ea5a184ded43cb42185495d198c56d0a70811d35d1` |
| 27 | `def` | [evalFinsetBigop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/evalfinsetbigop--49ce6dd0d1184450ce494040.md) | 330 | `declaration-track:49ce6dd0d1184450ce494040d2d90eddd4406808e60bb5c68a84a45a7d885c2f` |
| 28 | `def` | [evalFinsetProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/evalfinsetprod--2ed466769aff0d707422be38.md) | 355 | `declaration-track:2ed466769aff0d707422be38ab2e106e711eb8c52ddc1058557cd5f3cbaf0f12` |
| 29 | `def` | [evalFinsetSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/declarations/evalfinsetsum--fe291fd5d93101eb96f93f62.md) | 385 | `declaration-track:fe291fd5d93101eb96f93f626e844a10feee00fc35e0b69b26f977c9d8de2435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
