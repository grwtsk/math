# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5ad04638c8c2700143e6a42993e0762412bfe6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5ad04638c8c2700143e6a42993e0762412bfe6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.CoassocSimps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/instcoalgebrastruct--42866a5a6230470d890fa230.md) | 45 | `declaration-track:42866a5a6230470d890fa230e6485b9ba0b04d4f7ca3720b061fc6f693a06ba1` |
| 2 | `lemma` | [comul_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/comul-def--bdfc45f0d2c488dd040b99fd.md) | 51 | `result-track:bdfc45f0d2c488dd040b99fd5c3710fd7955d61be2cb88251f5484b30acec16c` |
| 3 | `lemma` | [counit_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/counit-def--a8c212da7e66732642a3bc59.md) | 57 | `result-track:a8c212da7e66732642a3bc592515b2a80becf845d4bb9bad09563b071fcc7286` |
| 4 | `lemma` | [comul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/comul-tmul--85b5ed4116b30e0b002f2606.md) | 63 | `result-track:85b5ed4116b30e0b002f2606c2ccaa0f47f211bf6c8e94efa3063aa91216e78b` |
| 5 | `lemma` | [counit_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/counit-tmul--dbc5ff0b8cbd15e38a72e7d5.md) | 68 | `result-track:dbc5ff0b8cbd15e38a72e7d53bbf2c8277249515881021b0abdd47930c20fa88` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/macro--2d461e673cc89a7002be511d.md) | 79 | `declaration-track:2d461e673cc89a7002be511df4f3e70570f03186fc3b0afa1acd491c6ea2bce5` |
| 7 | `lemma` | [coassoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/coassoc--6581cda5c8ba5eec79111acb.md) | 90 | `result-track:6581cda5c8ba5eec79111acb85b6d2bbc41903ea219c579e55d63ae03cec7ce4` |
| 8 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/instcoalgebra--951adcb985be718a6c7432d7.md) | 126 | `declaration-track:951adcb985be718a6c7432d79a4f321a8729500ee5648fe1908876a834805c4a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/instance--702159f8046842aad99d415f.md) | 158 | `declaration-track:702159f8046842aad99d415fa57f5ab69ed8fcd57034cc3b9861055fa0eaceeb` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/map--534c7904e63e53f83ff0f9e1.md) | 181 | `declaration-track:534c7904e63e53f83ff0f9e1f99e60dd41209e1ded705002cf23ad2df6db5644` |
| 11 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/map-tmul--8f64abbfaaa01bffa2a3ce4c.md) | 194 | `result-track:8f64abbfaaa01bffa2a3ce4cc5940da815d4eeb91ae98713fb2c182894e8b574` |
| 12 | `theorem` | [map_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/map-tolinearmap--0ca1ba27ce1380ecbb18bd0a.md) | 199 | `result-track:0ca1ba27ce1380ecbb18bd0aed78f1f6e742a4dde556516cffc779e0f83f96b7` |
| 13 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/assoc--a8ab8d1a90f2b26e83b4381d.md) | 206 | `declaration-track:a8ab8d1a90f2b26e83b4381d7ec0f3f2132b20b68724422c486e2b6ba6c003bb` |
| 14 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/assoc-tmul--1285491621dbdbd6fb31c04d.md) | 221 | `result-track:1285491621dbdbd6fb31c04d2b33e57aec938d1d329b035ca6490a8dd8e9ed56` |
| 15 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/assoc-symm-tmul--22ed1dfedce198732d775213.md) | 226 | `result-track:22ed1dfedce198732d77521313b1fae8645764d1857e4d9047f5966eb6d812b8` |
| 16 | `theorem` | [assoc_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/assoc-tolinearequiv--d58cc9f31dd231b5a78170a0.md) | 231 | `result-track:d58cc9f31dd231b5a78170a07e0ea776f108d281cf3d64670acedb33cd4411b1` |
| 17 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/lid--6bec19acead76568c7c8dde4.md) | 239 | `declaration-track:6bec19acead76568c7c8dde4bcc0958a60164f25cd706a1f7376a1700cee0fae` |
| 18 | `theorem` | [lid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/lid-tolinearequiv--010dfbc6f155e45dfa6546c9.md) | 252 | `result-track:010dfbc6f155e45dfa6546c9224759fcf73cf3ac8b6b0736a72a1681e8ca0297` |
| 19 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/lid-tmul--5821c413d70ba433b1dba710.md) | 256 | `result-track:5821c413d70ba433b1dba71038e4c79028ead7bd1f20fc19d9dd343064b211c5` |
| 20 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/lid-symm-apply--7225b0d2e25dd1d05fbddca2.md) | 259 | `result-track:7225b0d2e25dd1d05fbddca29f5bec3ae6afb206aba46f6462af3f83a9694de9` |
| 21 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/rid--e41bd9c81d3b83a9db6f192a.md) | 265 | `declaration-track:e41bd9c81d3b83a9db6f192abc3cc28e89fa63be5b7a7b356eaa047e32cd5025` |
| 22 | `theorem` | [rid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/rid-tolinearequiv--0b8a4399ae05aad04556e3a1.md) | 276 | `result-track:0b8a4399ae05aad04556e3a1aacafc9da7cb467bc8153a9a4f63f84db431f692` |
| 23 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/rid-tmul--46b8047f4d39823588b9ad4b.md) | 280 | `result-track:46b8047f4d39823588b9ad4b0f5c73624ba7535924f16df300316c810bef6e09` |
| 24 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/rid-symm-apply--c181187b97749463d65eccee.md) | 283 | `result-track:c181187b97749463d65ecceeb733d65642e7d60933f984aad720922907d92010` |
| 25 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/ltensor--293d703022382c8fc5ea21ac.md) | 298 | `declaration-track:293d703022382c8fc5ea21acaf64c95b7de616ebe1c7e6435424901d92c0e64e` |
| 26 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/rtensor--89be9070beaa24d31fe63f42.md) | 302 | `declaration-track:89be9070beaa24d31fe63f420daed85a0759167b61a693b6c383e9abdba05044` |
| 27 | `def` | [comulCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/declarations/comulcoalghom--b792bd55202104bd0f44435a.md) | 320 | `declaration-track:b792bd55202104bd0f44435a7eedd9a5a53ac9e73386d60efa5e99ef56cd3148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
