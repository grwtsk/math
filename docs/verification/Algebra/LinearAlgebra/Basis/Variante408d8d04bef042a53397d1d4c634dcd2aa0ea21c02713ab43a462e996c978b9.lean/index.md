# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b269e75d93108351ad599ba49017d1124bdc98a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b269e75d93108351ad599ba49017d1124bdc98a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-tensorproduct--8c565490a39f4022f0f48a0c.md) | 40 | `declaration-track:8c565490a39f4022f0f48a0c9ea1fcca12102fc55ceca01df71dd461db49d3e9` |
| 2 | `theorem` | [Basis.tensorProduct_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-tensorproduct-apply--cf3f7cf571b81ee631103cb5.md) | 48 | `result-track:cf3f7cf571b81ee631103cb524d1c9ef3009a402498e1922963563bd5c7036f3` |
| 3 | `theorem` | [Basis.tensorProduct_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-tensorproduct-apply--512a285fc085aef76a4c3ae5.md) | 52 | `result-track:512a285fc085aef76a4c3ae5de480e3ce2e18aa0e8dd86dbd03f558ec5856b51` |
| 4 | `theorem` | [Basis.tensorProduct_repr_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-tensorproduct-repr-tmul-apply--88c06005a02379891f0b3e68.md) | 57 | `result-track:88c06005a02379891f0b3e68754534240220914f9e20222f232cfa30e2fb8d59` |
| 5 | `def` | [Basis.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-basechange--95cb25b72cc67afe9132b3d6.md) | 66 | `declaration-track:95cb25b72cc67afe9132b3d6fee4ce73ddf7d3c9bb212e8d1b302876d5199a14` |
| 6 | `lemma` | [Basis.baseChange_repr_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-basechange-repr-tmul--4894afe2b968c52851cb4559.md) | 70 | `result-track:4894afe2b968c52851cb455922494cf3f9344fa0e2ec1bf0d4ee30c55dadc318` |
| 7 | `lemma` | [Basis.baseChange_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/basis-basechange-apply--22680d7676547700f62455de.md) | 75 | `result-track:22680d7676547700f62455de4d9b002592ebf11fa80e734dbf6a7206e5ab3ca3` |
| 8 | `def` | [TensorProduct.equivFinsuppOfBasisRight](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisright--f5942cd823b141b3ca51a6ef.md) | 88 | `declaration-track:f5942cd823b141b3ca51a6ef7b2d634a7494e3ec633a16c75718f7703b6c998a` |
| 9 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul--20c55c8db78a571c5d4a6996.md) | 92 | `result-track:20c55c8db78a571c5d4a6996ace5ae215610ad867f3e52cffc5c35db0300eaac` |
| 10 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul-apply--346e5b22c9ffae4ee70cd375.md) | 97 | `result-track:346e5b22c9ffae4ee70cd37587d359882f94d3cf64a776e0894d4c608a8d34aa` |
| 11 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm--931ccb6ad483288dd6d08225.md) | 103 | `result-track:931ccb6ad483288dd6d08225910eeed35f8c600fb7002f4beb8a7db398210f1e` |
| 12 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm-apply--e997e072cdf5cdb314807e96.md) | 109 | `result-track:e997e072cdf5cdb314807e9677aba7a49604e5a4d10bdbb814e865c755573ea1` |
| 13 | `lemma` | [TensorProduct.sum_tmul_basis_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-sum-tmul-basis-right-injective--38c68725c9cdb157689d1bbc.md) | 114 | `result-track:38c68725c9cdb157689d1bbcc7cb48a4e5062e945ae580dcfbd492533f83f70e` |
| 14 | `lemma` | [TensorProduct.sum_tmul_basis_right_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-sum-tmul-basis-right-eq-zero--6f19132dd3f15d4a2562b8bf.md) | 121 | `result-track:6f19132dd3f15d4a2562b8bf8aee183e95e397091a3bf879f9eb8335c8214ef9` |
| 15 | `def` | [TensorProduct.equivFinsuppOfBasisLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisleft--d9f63e18e9c88f331644e765.md) | 130 | `declaration-track:d9f63e18e9c88f331644e7659f3d26ef7c539459d09838c8da895674651e0719` |
| 16 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul--1da8c9c1456d751b4c137236.md) | 134 | `result-track:1da8c9c1456d751b4c13723649f27c7658a0d375e726ca00f57f9745fcbf944b` |
| 17 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul-apply--ac8c2050a1011dc71a17ce02.md) | 139 | `result-track:ac8c2050a1011dc71a17ce02a3f74cb830c668b8a2a05ba5274b3f7db1c8cffa` |
| 18 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm--bc11ee8b0228d685fc8a9756.md) | 145 | `result-track:bc11ee8b0228d685fc8a97562b349d7997657d5908163b40ca5cd280dbf55335` |
| 19 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm-apply--897be2fd98d154db1b1f5f6a.md) | 151 | `result-track:897be2fd98d154db1b1f5f6aa64475d497a91b2b091004643aaf99ac8cdb7d90` |
| 20 | `lemma` | [TensorProduct.eq_repr_basis_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-eq-repr-basis-right--0f09f3ab43f4057c2f428afc.md) | 158 | `result-track:0f09f3ab43f4057c2f428afcfd79a2522e7d6453c4dd08f64efec8ac4390cc11` |
| 21 | `lemma` | [TensorProduct.eq_repr_basis_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-eq-repr-basis-left--0d7c806cb0ae436a0b97f898.md) | 165 | `result-track:0d7c806cb0ae436a0b97f898af80cf21e194e1e2db34a5d6538fe002669a6d37` |
| 22 | `lemma` | [TensorProduct.sum_tmul_basis_left_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-sum-tmul-basis-left-injective--8e9a30c4ee4ad18da0c87114.md) | 171 | `result-track:8e9a30c4ee4ad18da0c87114d9832e90c19775f8684bae9e6986a9d73eac043b` |
| 23 | `lemma` | [TensorProduct.sum_tmul_basis_left_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/tensorproduct-sum-tmul-basis-left-eq-zero--83768dda2deb66eb3e475dc6.md) | 178 | `result-track:83768dda2deb66eb3e475dc650062f9f50f18d760d9090124d07e3b7687263f0` |
| 24 | `instance` | [Module.Free.tensor](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean/declarations/module-free-tensor--7405fbdff630ba522494dc20.md) | 188 | `declaration-track:7405fbdff630ba522494dc202db81d562e3d8c8b4f21df10b4212362492c7be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
