# Verification target: GRWTSK.Algebra.LinearAlgebra.StrongRankCondition.Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211656a0d219601785d209f9754a19919a5b4ec9",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211656a0d219601785d209f9754a19919a5b4ec9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finrank` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.InvariantBasisNumber` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_eq_mk_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/mk-eq-mk-of-basis--3bb99846891a9534fe8e4b2b.md) | 71 | `result-track:3bb99846891a9534fe8e4b2b1a8d0ab89fb071b638529e89d8e8c2f794eacd48` |
| 2 | `def` | [Basis.indexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-indexequiv--cdfc57e2b3b519ed980c69ec.md) | 100 | `declaration-track:cdfc57e2b3b519ed980c69ec31c6c1997359d433dcced50611f18e78dc21e0f5` |
| 3 | `theorem` | [mk_eq_mk_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/mk-eq-mk-of-basis--67c8e3eb9a925eab9b7c783b.md) | 103 | `result-track:67c8e3eb9a925eab9b7c783b2706be5d77568f71e87d4e1e9c024999cf646dca` |
| 4 | `theorem` | [Basis.le_span''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-le-span--ed54cf8fb3688a632bded225.md) | 119 | `result-track:ed54cf8fb3688a632bded22588edbee7373c12a50c05713bee07636afd40d686` |
| 5 | `theorem` | [basis_le_span'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-le-span--ef81fd954df2406986a20df8.md) | 134 | `result-track:ef81fd954df2406986a20df8de37e25847c4c15f2a1b38e1d0538703610eafc3` |
| 6 | `theorem` | [Basis.le_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-le-span--af521e3ee8813b62045fb8d1.md) | 148 | `result-track:af521e3ee8813b62045fb8d11ada0c04a6a865b9abe1e0d99da774791f70d2fb` |
| 7 | `theorem` | [linearIndependent_le_span_aux'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-span-aux--d3fe2cfbe2f1660b011e1775.md) | 184 | `result-track:d3fe2cfbe2f1660b011e1775413d3932c55db8fa0e9175e4324c5783a48b5083` |
| 8 | `lemma` | [LinearIndependent.finite_of_le_span_finite](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-finite-of-le-span-finite--c1d11cb1e7ca2a3e10dfca6a.md) | 205 | `result-track:c1d11cb1e7ca2a3e10dfca6ab02a533e92b08b8064d5931543cac0990efc0474` |
| 9 | `theorem` | [linearIndependent_le_span'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-span--907e5762dffb44e2db7ab052.md) | 219 | `result-track:907e5762dffb44e2db7ab052d8174edbfa5ffc95c7169a2fa70cd6a91afe8aa7` |
| 10 | `theorem` | [linearIndependent_le_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-span--009f64478d277ac69b44b7ed.md) | 232 | `result-track:009f64478d277ac69b44b7ed79d862115cc45bb2d91add436717a6c2f2b9165d` |
| 11 | `theorem` | [linearIndependent_le_span_finset](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-span-finset--0741be67dd653c9c1357742a.md) | 239 | `result-track:0741be67dd653c9c1357742a15544e77487b2b2e542482604d5af07e3af6ac07` |
| 12 | `theorem` | [linearIndependent_le_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-infinite-basis--49728c236fddd545e56faa3d.md) | 246 | `result-track:49728c236fddd545e56faa3d083e708c1b9d6af220050c3f0914043c7736431e` |
| 13 | `theorem` | [linearIndependent_le_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-basis--d2e0c1419bcd2d1203629f4b.md) | 267 | `result-track:d2e0c1419bcd2d1203629f4bb23d16ce88ba6da819be1105ccb471c28d80a05e` |
| 14 | `theorem` | [card_le_of_injective''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/card-le-of-injective--5e6622d9b8f730b901726a30.md) | 282 | `result-track:5e6622d9b8f730b901726a307f737528ae6bd49abdd2cb5f699450adee9183c4` |
| 15 | `theorem` | [linearIndependent_le_span''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearindependent-le-span--61cdabc78a4a8764311ea392.md) | 293 | `result-track:61cdabc78a4a8764311ea392d4d78a72f1aa7f5f42627cec986e1a0e3151ddbd` |
| 16 | `theorem` | [Basis.card_le_card_of_linearIndependent_aux](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-card-le-card-of-linearindependent-aux--7d73216ea67d83de14e92345.md) | 306 | `result-track:7d73216ea67d83de14e9234523c33e9d18fb73a809e7e00e06eded51ffd0ba6f` |
| 17 | `theorem` | [maximal_linearIndependent_eq_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/maximal-linearindependent-eq-infinite-basis--65365aa210ab14faef57dbee.md) | 318 | `result-track:65365aa210ab14faef57dbeedfee71e048a297ebf69adffdd57ddd8d9ba20223` |
| 18 | `theorem` | [Basis.mk_eq_rank''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-mk-eq-rank--1cd8341607cd8f522114a237.md) | 325 | `result-track:1cd8341607cd8f522114a2378694e159322ec9a69c856260e4a481bbfe187e30` |
| 19 | `theorem` | [Basis.mk_range_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-mk-range-eq-rank--ac1a6066bf18117df54365a6.md) | 342 | `result-track:ac1a6066bf18117df54365a6fd3ea69b6fce418dda710cd219156e16001425ff` |
| 20 | `theorem` | [rank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/rank-eq-card-basis--fde6962820f0d596adb4dc66.md) | 347 | `result-track:fde6962820f0d596adb4dc66fdaf4bfe78a069f4fc6baeec39e636d7d29e392d` |
| 21 | `theorem` | [Basis.card_le_card_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-card-le-card-of-linearindependent--daa1b81c110ada3a5405af83.md) | 353 | `result-track:daa1b81c110ada3a5405af8365c6823b61272ecea9169451353a2f24e1ee947f` |
| 22 | `theorem` | [Basis.card_le_card_of_submodule](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-card-le-card-of-submodule--61955da0b547df0c61bc1ed0.md) | 359 | `result-track:61955da0b547df0c61bc1ed068603e856a8d049df815b9d16a178762d0e92948` |
| 23 | `theorem` | [Basis.card_le_card_of_le](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-card-le-card-of-le--55dc36e69eff507dd321a08f.md) | 364 | `result-track:55dc36e69eff507dd321a08ff9919b080e93408b4b3e2f30e2a0b2fc75a73d02` |
| 24 | `theorem` | [Basis.mk_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-mk-eq-rank--450eefba639c46b25f1c3be1.md) | 369 | `result-track:450eefba639c46b25f1c3be19d6a39fc5540c39e5566fa88a8a10ace6b55e329` |
| 25 | `theorem` | [Basis.mk_eq_rank'.](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/basis-mk-eq-rank--f90aa0c32a8b3af1a9f90cfd.md) | 374 | `result-track:f90aa0c32a8b3af1a9f90cfda9afac259492ade811bc3e6ffe200a5cc7a0c11c` |
| 26 | `theorem` | [rank_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/rank-span--07f40e4bb9ac221b2c90d77d.md) | 378 | `result-track:07f40e4bb9ac221b2c90d77d5db347291081fb7dc8eb9e4109f366dfc9badfb1` |
| 27 | `theorem` | [rank_span_set](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/rank-span-set--838add284382baca93cad3f5.md) | 384 | `result-track:838add284382baca93cad3f565a3dea96ec66bad7260569a18d46364ca467ec8` |
| 28 | `theorem` | [toENat_rank_span_set](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/toenat-rank-span-set--46dcfd513b661036ed135a52.md) | 388 | `result-track:46dcfd513b661036ed135a52cc31fe22fc5be9df6f6c52b6e8d0f6b52327f5b5` |
| 29 | `def` | [Submodule.inductionOnRank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/submodule-inductiononrank--273e705dfe9179423d7d16d3.md) | 397 | `declaration-track:273e705dfe9179423d7d16d3243b566fe1d313daca19884b3aebc34b6e00cad1` |
| 30 | `theorem` | [Ideal.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/ideal-rank-eq--874634b2bff2595ecd50af13.md) | 408 | `result-track:874634b2bff2595ecd50af13b4d2c573767c7b287afe43668eacad8099e84ebf` |
| 31 | `theorem` | [finrank_eq_nat_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/finrank-eq-nat-card-basis--6531d8303f6db12d66b3d9a7.md) | 426 | `result-track:6531d8303f6db12d66b3d9a74da4f3402c693ab7a51eefb0743937e2423b4c97` |
| 32 | `theorem` | [finrank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/finrank-eq-card-basis--35f538b7b836e8655ab8d6cb.md) | 432 | `result-track:35f538b7b836e8655ab8d6cb0c4ebc67a1a11493e61f1788761d5f16171f217b` |
| 33 | `theorem` | [mk_finrank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/mk-finrank-eq-card-basis--01bc9244d8ffffa3738bd031.md) | 438 | `result-track:01bc9244d8ffffa3738bd0313f28c1811779a7bf1b21d78a6633b9d6d4f5d818` |
| 34 | `theorem` | [finrank_eq_card_finset_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/finrank-eq-card-finset-basis--7aaea1fed1a3bd35a6fbb99a.md) | 445 | `result-track:7aaea1fed1a3bd35a6fbb99a584ac0746d5cf3d8ebd3d790c2af7db104aeff6c` |
| 35 | `theorem` | [rank_self](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/rank-self--9cccc62e15a10c1175866759.md) | 451 | `result-track:9cccc62e15a10c1175866759f15048327155ee61aff1e3931a9f94ac6514c80a` |
| 36 | `theorem` | [finrank_self](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/finrank-self--4b5f8ff0f9c3af554af3348e.md) | 457 | `result-track:4b5f8ff0f9c3af554af3348eadf860f2531d8f18dcb98125a360f6b63be88267` |
| 37 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsQuadraticExtension.Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.Basis.unique](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/root-grwtsk-algebra-linearalgebra-isquadraticextension-variant0ee15b1dff--10b80cdd00029edc7687bb5e.md) | 461 | `declaration-track:10b80cdd00029edc7687bb5edeef0d47f65b266bddc79124a272ecf5b4c11701` |
| 38 | `theorem` | [rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/rank-lt-aleph0--6f8aea00b4915d76e9880256.md) | 469 | `result-track:6f8aea00b4915d76e988025682d65b3a4412f35c46e9531789eda5e165d5c246` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/instance--cf4046f1d3f1fa7c0742f592.md) | 475 | `declaration-track:cf4046f1d3f1fa7c0742f592cf2ddb79b9b8a51bd67fda7747589117e4ff79c1` |
| 40 | `theorem` | [finrank_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/finrank-eq-rank--5d0af9a46ac74b96c4ef1a22.md) | 485 | `result-track:5d0af9a46ac74b96c4ef1a225db03841bee3dad6422f86c3f372d8a034cf55be` |
| 41 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsQuadraticExtension.Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.Submodule.finrank_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/root-grwtsk-algebra-linearalgebra-isquadraticextension-variant0ee15b1dff--25e8e2e59efd86684f0a93bd.md) | 490 | `result-track:25e8e2e59efd86684f0a93bd1326d934021bb83add8ff6e8cf1c1af0c6aef7e7` |
| 42 | `theorem` | [LinearMap.finrank_le_finrank_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearmap-finrank-le-finrank-of-injective--135c5d4b064006e1fb357939.md) | 499 | `result-track:135c5d4b064006e1fb3579396be790237907d5d373d65a320c84493c8410cb3a` |
| 43 | `theorem` | [LinearMap.finrank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearmap-finrank-range-le--4b989dc97e38289ad624dc2a.md) | 503 | `result-track:4b989dc97e38289ad624dc2a172691d9f2729be894a2c0f249aa4db2933fd918` |
| 44 | `theorem` | [LinearMap.finrank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/linearmap-finrank-le-of-issmulregular--077efc14fa8628df4edc09ca.md) | 507 | `result-track:077efc14fa8628df4edc09cada39f19aa786b5a344c1ff039f8f8047ea2c6799` |
| 45 | `lemma` | [Module.finrank_top_le_finrank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/module-finrank-top-le-finrank-of-isscalartower--c65b3882c2c72d9c004ee78b.md) | 518 | `result-track:c65b3882c2c72d9c004ee78b9cbcbabf7bf24dcbb9f8e2c1b6e084fc5c79b925` |
| 46 | `lemma` | [Module.finrank_bot_le_finrank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/module-finrank-bot-le-finrank-of-isscalartower--27f0cc7975f45e7480ae7301.md) | 529 | `result-track:27f0cc7975f45e7480ae73019840544f560fe93c0b20adc6716517c03d061a33` |
| 47 | `theorem` | [exists_finset_span_eq_linearIndepOn](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/exists-finset-span-eq-linearindepon--dd9ece8b1cbd110cba658882.md) | 549 | `result-track:dd9ece8b1cbd110cba658882fb14fc697ae3a5013c8061f4919ea5b7de4732c9` |
| 48 | `theorem` | [exists_fun_fin_finrank_span_eq](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/exists-fun-fin-finrank-span-eq--e03563b2668af32188fcabfd.md) | 558 | `result-track:e03563b2668af32188fcabfd311125ae6eb82905a1a4697fcb8970869a57690b` |
| 49 | `theorem` | [mem_span_set_iff_exists_finsupp_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/mem-span-set-iff-exists-finsupp-le-finrank--fda02e76c3bd1f287b094c76.md) | 566 | `result-track:fda02e76c3bd1f287b094c76c147d0066edb836d7c91b294af1662efe7997492` |
| 50 | `class` | [IsQuadraticExtension](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/isquadraticextension--9cf2f3dc0427e25692e7bf3c.md) | 586 | `declaration-track:9cf2f3dc0427e25692e7bf3c1dae6a8ace1062153aa50585ee6c0aad95c86ecc` |
| 51 | `theorem` | [IsQuadraticExtension.finrank_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variantabf1ce7bb1c33dfac7ee9a948c8bab995ad6aa494aa61dbfc390df9313cd73d1.lean/declarations/isquadraticextension-finrank-eq-two--4ca879b1c7b06b923559e5c5.md) | 590 | `result-track:4ca879b1c7b06b923559e5c5ab9ce51ae31ce45f9399829313cc6bdcefdfad9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
