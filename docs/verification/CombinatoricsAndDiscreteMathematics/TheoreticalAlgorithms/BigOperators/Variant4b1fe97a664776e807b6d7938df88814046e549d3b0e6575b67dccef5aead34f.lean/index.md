# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "068cb591d337b11a9351d80f2c6ced47aac6283c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `068cb591d337b11a9351d80f2c6ced47aac6283c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Nat.UnifyZeroOrSuccResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/nat-unifyzeroorsuccresult--0bf3aed91eb10fd8975ead7d.md) | 57 | `declaration-track:0bf3aed91eb10fd8975ead7dbfa8bc9ef27e1ef676c66946c968564a6134a337` |
| 2 | `def` | [Nat.unifyZeroOrSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/nat-unifyzeroorsucc--412eaf52127311f1d7d4f25e.md) | 70 | `declaration-track:412eaf52127311f1d7d4f25ea747d7c5a9f67e3a1b00dd8650d7da3293b0bd16` |
| 3 | `inductive` | [List.ProveNilOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-provenilorconsresult--742fba253e7412388ca9a961.md) | 82 | `declaration-track:742fba253e7412388ca9a96103664842279298359355f3a6246b66bfbf20314f` |
| 4 | `def` | [List.ProveNilOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-provenilorconsresult-uncheckedcast--95dbb099e6ca98b1987c4b9d.md) | 92 | `declaration-track:95dbb099e6ca98b1987c4b9de0fb8406daa6845d14a0d186753db6e25ab075dd` |
| 5 | `def` | [List.ProveNilOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-provenilorconsresult-eq-trans--16c0b93c5a315c20e8639a65.md) | 100 | `declaration-track:16c0b93c5a315c20e8639a6544bfb4c099657142a3531106fafc938f7d09b081` |
| 6 | `lemma` | [List.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-range-zero--a04df7632f8adcd7dc32a8d1.md) | 106 | `result-track:a04df7632f8adcd7dc32a8d121133564845e9297134565a563bfbd87536e352d` |
| 7 | `lemma` | [List.range_succ_eq_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-range-succ-eq-map--c6771929907a2f63a48f4d5e.md) | 109 | `result-track:c6771929907a2f63a48f4d5edf5ac0ce0900a63af258747f5fb9c36c600e5ac3` |
| 8 | `def` | [List.proveNilOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/list-provenilorcons--0c1d577664bacfded00c613d.md) | 118 | `declaration-track:0c1d577664bacfded00c613d98bec703e6aecdfff851b9a153bef24e822d101c` |
| 9 | `inductive` | [Multiset.ProveZeroOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-provezeroorconsresult--fab7213918d0b25135a0f0c7.md) | 156 | `declaration-track:fab7213918d0b25135a0f0c75e7a8d6a8b88e63cb776cbd4570ffaac7cb20646` |
| 10 | `def` | [Multiset.ProveZeroOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-provezeroorconsresult-uncheckedcast--f7fc667806dba16debca9a43.md) | 166 | `declaration-track:f7fc667806dba16debca9a43bbe036ad99d02453e6d0ce8e998f95b1fc2f477f` |
| 11 | `def` | [Multiset.ProveZeroOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-provezeroorconsresult-eq-trans--28e7553a6b1b26276c76534c.md) | 174 | `declaration-track:28e7553a6b1b26276c76534c912ad95815e148ca3fbf434920298f8c529960e6` |
| 12 | `lemma` | [Multiset.insert_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-insert-eq-cons--e9d3006d04a04d8b4d8c1ac2.md) | 180 | `result-track:e9d3006d04a04d8b4d8c1ac2fa283d356464d8b4beba9f6d29bc9b937c9004bb` |
| 13 | `lemma` | [Multiset.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-range-zero--872a06fca343dfee5addd709.md) | 184 | `result-track:872a06fca343dfee5addd709e738b0e4dc01ba8e8a22b15c6b5bdd9d572cf7d2` |
| 14 | `lemma` | [Multiset.range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-range-succ--502af2afc91d09809d65cf2c.md) | 187 | `result-track:502af2afc91d09809d65cf2c837e3bbd6318c544f2aa9dd213ee121403e6bccc` |
| 15 | `def` | [Multiset.proveZeroOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/multiset-provezeroorcons--e7b0ca595d9edb20b3dec607.md) | 195 | `declaration-track:e7b0ca595d9edb20b3dec607aa1633739213c6501663c0f1d0ce3fff394d08ce` |
| 16 | `inductive` | [Finset.ProveEmptyOrConsResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-proveemptyorconsresult--633adc7d80b33d4bd216301c.md) | 225 | `declaration-track:633adc7d80b33d4bd216301c33688ddebf6c95e276963bfce000cb653ebcaf72` |
| 17 | `def` | [Finset.ProveEmptyOrConsResult.uncheckedCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-proveemptyorconsresult-uncheckedcast--c31f990e552feac050b75446.md) | 235 | `declaration-track:c31f990e552feac050b75446cafbea9e8ead9dd8989c2be253e2b17bbd427ab8` |
| 18 | `def` | [Finset.ProveEmptyOrConsResult.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-proveemptyorconsresult-eq-trans--deacef415d86c60f325c8c36.md) | 243 | `declaration-track:deacef415d86c60f325c8c36ff53de9836a5e2cfc0d50e284aa53c60f9687b11` |
| 19 | `lemma` | [Finset.insert_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-insert-eq-cons--252be222e5a96ab6c413aceb.md) | 249 | `result-track:252be222e5a96ab6c413acebe5968171e4141fda5860c383323d75f89569a684` |
| 20 | `lemma` | [Finset.range_zero'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-range-zero--041ea865e223a60832cee4f9.md) | 253 | `result-track:041ea865e223a60832cee4f9895c33650b2b8ac2159d29aa2ee24c4c9c32a60c` |
| 21 | `lemma` | [Finset.range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-range-succ--e3be29c0a0dddf3e11ec33f7.md) | 256 | `result-track:e3be29c0a0dddf3e11ec33f7201e690b985f7dcab0c3428afc1b318fb7e03492` |
| 22 | `lemma` | [Finset.univ_eq_elems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-univ-eq-elems--a9af8260c036fa02747c3379.md) | 260 | `result-track:a9af8260c036fa02747c3379386947d482fd5d9f7f5f8ed1c24b492d11ebc68a` |
| 23 | `def` | [Finset.proveEmptyOrCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-proveemptyorcons--b92e8e3c59b898e072be776f.md) | 269 | `declaration-track:b92e8e3c59b898e072be776f7b7ec4f88eb9631faa31e29eb066144a1c03db8d` |
| 24 | `def` | [Result.eq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/result-eq-trans--13bd19dcb5fd5410529f602a.md) | 311 | `declaration-track:13bd19dcb5fd5410529f602aff3f934ef7980b112b17375188b432a2dfdbe055` |
| 25 | `lemma` | [Finset.sum_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-sum-empty--0d13c17ff8db9a2abc9f8665.md) | 328 | `result-track:0d13c17ff8db9a2abc9f8665e9af1aeaa68f777b865e7a7a98f7bf3550d06019` |
| 26 | `lemma` | [Finset.prod_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/finset-prod-empty--599ca0f0596e49af7fed0be9.md) | 332 | `result-track:599ca0f0596e49af7fed0be931f3baa754f2a38e5093f48d74ee4d2238efa9f4` |
| 27 | `def` | [evalFinsetBigop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/evalfinsetbigop--7ec4bd5a481212b41c204f90.md) | 338 | `declaration-track:7ec4bd5a481212b41c204f90e53280eead88c808aa46c20ebceb0c51774cdcbc` |
| 28 | `def` | [evalFinsetProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/evalfinsetprod--ec5594f83ee8a4b5e199a305.md) | 363 | `declaration-track:ec5594f83ee8a4b5e199a30583f8c641773be31b517c221b51ab5f0ba4c9de92` |
| 29 | `def` | [evalFinsetSum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/declarations/evalfinsetsum--ffca2225e428833483e63a63.md) | 393 | `declaration-track:ffca2225e428833483e63a63032d98ad37a62016cb509679728f3289f4f9790e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
