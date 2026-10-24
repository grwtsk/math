# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa175241bea216e57ba8773e656336fad026503c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa175241bea216e57ba8773e656336fad026503c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.AssertExists` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instone--3a4b3f2212244a92fc8874bf.md) | 28 | `declaration-track:3a4b3f2212244a92fc8874bf9ae3e9027c9f1b431bc64372380a8c55e71996bd` |
| 2 | `theorem` | [fst_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/fst-one--6ba260d4e054a651cba47c2f.md) | 32 | `result-track:6ba260d4e054a651cba47c2fbbca14b5c6f933f63dae0d9b014c66f241102fe4` |
| 3 | `theorem` | [snd_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/snd-one--a4f1620844887a35b3c8807a.md) | 36 | `result-track:a4f1620844887a35b3c8807af8658efc90bbf58f96b321e727f8ee0990e0c7c6` |
| 4 | `theorem` | [one_eq_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/one-eq-mk--2d4a3bea0e6591a70b42cade.md) | 40 | `result-track:2d4a3bea0e6591a70b42cade7f05db11c8862109fa3bf90ff723b870afecd79d` |
| 5 | `theorem` | [mk_one_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/mk-one-one--fe35c5d8866dfc1607c213aa.md) | 44 | `result-track:fe35c5d8866dfc1607c213aa9a20afc1d6c9c969351b8411b64eacecbcc2520a` |
| 6 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/mk-eq-one--91e8d10cbb7b2c09bf235e38.md) | 47 | `result-track:91e8d10cbb7b2c09bf235e383e1ebfcc7add8094f81d15dac9bf71c51fd8e2c8` |
| 7 | `theorem` | [swap_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/swap-one--0f1607c0ca7e2a3c2e5e62c6.md) | 50 | `result-track:0f1607c0ca7e2a3c2e5e62c6b7bb2c855bb3838ab4c0ea0454e2163f944a8c9f` |
| 8 | `instance` | [instMul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instmul--b6c9004c94b25cbbceefcff0.md) | 60 | `declaration-track:b6c9004c94b25cbbceefcff0cc17fa3a51b09c60641dbdd4417bdac98a81be16` |
| 9 | `theorem` | [fst_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/fst-mul--7f6da96aa02b1e91772e5505.md) | 64 | `result-track:7f6da96aa02b1e91772e5505449be7aa09eec8c8dc2850d219a63295ebd82db5` |
| 10 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/snd-mul--0ae272afa247775ca886b7ea.md) | 67 | `result-track:0ae272afa247775ca886b7ea4307997349522ca7e7c2f8b97b4a22d676e2d3d0` |
| 11 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/mk-mul-mk--6d9624416ed5959020b13319.md) | 70 | `result-track:6d9624416ed5959020b13319cd8d7ba8900ed70c4b78c66a0e36d6f3b7592c2d` |
| 12 | `theorem` | [swap_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/swap-mul--3765282c38a0ecd1bcf60c0a.md) | 73 | `result-track:3765282c38a0ecd1bcf60c0a56ba2a42bd9c86d7559cc99a699acb02b7bbbad7` |
| 13 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/mul-def--232136257afb48c3c807970d.md) | 76 | `result-track:232136257afb48c3c807970d6f9c755779492589fc9c9b29027c876dea7dff04` |
| 14 | `instance` | [instInv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instinv--41213fca3723e8196b518e2e.md) | 85 | `declaration-track:41213fca3723e8196b518e2ea58a473373c8c13cf98cdb961f55c78d1395d60e` |
| 15 | `theorem` | [fst_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/fst-inv--253b2ec3ec7bfd1c63f8f90a.md) | 89 | `result-track:253b2ec3ec7bfd1c63f8f90a399b7ee52049723daf2ccd98975113813b5a5f6e` |
| 16 | `theorem` | [snd_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/snd-inv--93c9761c946027d0ad9bff72.md) | 92 | `result-track:93c9761c946027d0ad9bff722f66fe10269108ebe9ded2c7bd68531afb65e637` |
| 17 | `theorem` | [inv_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/inv-mk--4c33987af2886574c08c119f.md) | 95 | `result-track:4c33987af2886574c08c119f6c4127769fc1823a4ad13f7845d294a6fbdc137c` |
| 18 | `theorem` | [swap_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/swap-inv--14512b2660dc6c196130fc0c.md) | 98 | `result-track:14512b2660dc6c196130fc0cacabc2689f7b218cdaa9803021e5644fff5a4894` |
| 19 | `instance` | [instDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instdiv--052a0db134316c078c30a55c.md) | 107 | `declaration-track:052a0db134316c078c30a55c0b92834d8aaeccfd4a15ccd6fd6f30a561f05905` |
| 20 | `theorem` | [fst_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/fst-div--6bf3640a8126127e8cb575f8.md) | 111 | `result-track:6bf3640a8126127e8cb575f85c57668f16ac107dcb945448e3a1162367ef2f0d` |
| 21 | `theorem` | [snd_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/snd-div--8b1e9110047a09cbc86eaf49.md) | 114 | `result-track:8b1e9110047a09cbc86eaf493033ba848b5c71a178046675b007b0f3d9c3594b` |
| 22 | `theorem` | [mk_div_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/mk-div-mk--cfa5726da7f9603e90f6553a.md) | 117 | `result-track:cfa5726da7f9603e90f6553a11868cbcbd8b50b7152bdf52dd88024868e19f03` |
| 23 | `theorem` | [swap_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/swap-div--3288b96fae594d17b806f631.md) | 120 | `result-track:3288b96fae594d17b806f63190016b5c9120024e2a9ae2aa7ed93c493043afc8` |
| 24 | `lemma` | [div_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/div-def--a5ad357cf5741f3ca83ead59.md) | 122 | `result-track:a5ad357cf5741f3ca83ead59b6cdb4c67c8624c445a8c7b875c0c7b8491dd99a` |
| 25 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instsmul--d39450bc8b978489ef754b6d.md) | 131 | `declaration-track:d39450bc8b978489ef754b6d14e5cbcbd6a7b9a6a74c0456cc3acec50acb17aa` |
| 26 | `lemma` | [smul_fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/smul-fst--706b24b61f8bfa2de91f2e85.md) | 133 | `result-track:706b24b61f8bfa2de91f2e85adbc26ae7c91d1d16821305fcdb48bd290b93f26` |
| 27 | `lemma` | [smul_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/smul-snd--43429f96d7d50c05b1d7b843.md) | 135 | `result-track:43429f96d7d50c05b1d7b84359ffde258930b01a96843beacb46d3848bf8950f` |
| 28 | `lemma` | [smul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/smul-mk--559fea8787c46a46262a62b8.md) | 138 | `result-track:559fea8787c46a46262a62b8d9c2e9bf691e26c867f8c3c8fb29381635f381c9` |
| 29 | `lemma` | [smul_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/smul-def--75b25be7fac63a2a4e97d583.md) | 141 | `result-track:75b25be7fac63a2a4e97d583f2844158725f3c777246eb9bd399fd36a8289882` |
| 30 | `lemma` | [smul_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/smul-swap--56eff83682c13befa562b0cf.md) | 143 | `result-track:56eff83682c13befa562b0cf281037e95b2f3c39bf29807f32edf8aa6adcb4b4` |
| 31 | `instance` | [instPow](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/instpow--b0221e5baaf8201b2f36a7b5.md) | 152 | `declaration-track:b0221e5baaf8201b2f36a7b5f853887b21b6db75e9f076b06edc0c566969a5bb` |
| 32 | `lemma` | [pow_fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/pow-fst--1fa8a53a938e7323ec900d58.md) | 155 | `result-track:1fa8a53a938e7323ec900d5806c082efa00bf18a23d77454163353b0ace54534` |
| 33 | `lemma` | [pow_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/pow-snd--1c280400b2dea1e8ebc6a21b.md) | 158 | `result-track:1c280400b2dea1e8ebc6a21bb88cc722c10089ee587ad0db0f9830b8345707de` |
| 34 | `lemma` | [pow_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/pow-mk--a9fdc1a3e2af2ca09f2747c8.md) | 161 | `result-track:a9fdc1a3e2af2ca09f2747c8f1cf3e00b28e13aca4969a55f16e6ae7d8695683` |
| 35 | `lemma` | [pow_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/pow-def--25ec6f1b552b7069732c4419.md) | 164 | `result-track:25ec6f1b552b7069732c4419166e5d628b6f6f02671427e99601d965cba45757` |
| 36 | `lemma` | [pow_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant5aba7ce9b6eaa790c1653a265059b8ac20ef5ba335ff5b7b0ae8a140c84f0dc4.lean/declarations/pow-swap--57d026a39d2ee34971e3e22c.md) | 167 | `result-track:57d026a39d2ee34971e3e22c452d10a32835cd0574556fff6c8176030c454f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
