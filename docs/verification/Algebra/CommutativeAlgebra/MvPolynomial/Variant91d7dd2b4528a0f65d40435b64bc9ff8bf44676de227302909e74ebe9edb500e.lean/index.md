# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9194f3a7bf1caeb70022dc09a26c65cd7250cd1e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9194f3a7bf1caeb70022dc09a26c65cd7250cd1e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor--8fd1d4b27f9308dfb583f348.md) | 73 | `declaration-track:8fd1d4b27f9308dfb583f34834fd10cf96b52d58a46eaadda2036a0c3d1e0c8b` |
| 2 | `lemma` | [rTensor_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-apply-tmul--19986543d0ab2da3495311df.md) | 77 | `result-track:19986543d0ab2da3495311df1c2ec27fe569318502088a501b11519ff9732acf` |
| 3 | `lemma` | [rTensor_apply_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-apply-tmul-apply--1f6195e97c1a76336809ea99.md) | 81 | `result-track:1f6195e97c1a76336809ea99457daee2d37e6ca153498e1c52bfdfa5ecbe54e9` |
| 4 | `lemma` | [rTensor_apply_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-apply-monomial-tmul--850c1a1c4db112307ae2e457.md) | 85 | `result-track:850c1a1c4db112307ae2e457482b51064b7374e2fbb644f02a904b81dd97ae05` |
| 5 | `lemma` | [rTensor_apply_X_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-apply-x-tmul--b68857cb9afbf7f90abeab4e.md) | 89 | `result-track:b68857cb9afbf7f90abeab4e0b775326d70a96425a95f0d7d0d0778894232790` |
| 6 | `lemma` | [rTensor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-apply--8b7d8534497a17bb98aa2ce6.md) | 93 | `result-track:8b7d8534497a17bb98aa2ce66bc7929afce845bee19591177a4b509a9be55c0d` |
| 7 | `lemma` | [rTensor_symm_apply_single](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensor-symm-apply-single--a94ea8f940d8ca469d39546a.md) | 98 | `result-track:a94ea8f940d8ca469d39546a6a6b470081fc4bc10281e4bd7a631293f2f87600` |
| 8 | `def` | [scalarRTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor--e4424cadaf78aae3b548128a.md) | 105 | `declaration-track:e4424cadaf78aae3b548128a678d9c25e87d2c9a476a6cb8819962b3cb8ed9f3` |
| 9 | `lemma` | [scalarRTensor_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor-apply-tmul--e3a8514b1d13fa6944bef390.md) | 109 | `result-track:e3a8514b1d13fa6944bef3905b70a226b104a8b7dcc4f0d4fb5023a4a8d3cd65` |
| 10 | `lemma` | [scalarRTensor_apply_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor-apply-tmul-apply--54e5bd9bc83b9073cb46c40f.md) | 113 | `result-track:54e5bd9bc83b9073cb46c40f1b226b0d18671fb761cfca2895c0b5d0fee1adb1` |
| 11 | `lemma` | [scalarRTensor_apply_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor-apply-monomial-tmul--ee151ab39e9a07bcb32a7b42.md) | 117 | `result-track:ee151ab39e9a07bcb32a7b4241a273dfcdf8d71234dfc9fd8f5f6e434f2c368c` |
| 12 | `lemma` | [scalarRTensor_apply_X_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor-apply-x-tmul-apply--2adcef5fd02489106dac0e32.md) | 121 | `result-track:2adcef5fd02489106dac0e3239606543a4fd52ffd71e7fb28ff484a046859048` |
| 13 | `lemma` | [scalarRTensor_symm_apply_single](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensor-symm-apply-single--73a5618ebfbfee1fa33899a7.md) | 125 | `result-track:73a5618ebfbfee1fa33899a7ff77a192aa2634c9c77b9c9d69e8df960d3e3c72` |
| 14 | `def` | [rTensorAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensoralghom--9d8bff7af30e426ba5a1c09f.md) | 137 | `declaration-track:9d8bff7af30e426ba5a1c09fb6bb38763d3a5106f819acb5dcc1eb32ba2b1dd9` |
| 15 | `lemma` | [coeff_rTensorAlgHom_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/coeff-rtensoralghom-tmul--415e4979b90f29338a1a42cb.md) | 145 | `result-track:415e4979b90f29338a1a42cb78d398540ce4ffd96664146adbdb5d447e83af37` |
| 16 | `lemma` | [coeff_rTensorAlgHom_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/coeff-rtensoralghom-monomial-tmul--f2838ad8c3e00e1ff0889652.md) | 157 | `result-track:f2838ad8c3e00e1ff088965219a1aee2e598c1a1df9365ee00be9c069da7fe98` |
| 17 | `lemma` | [rTensorAlgHom_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensoralghom-tolinearmap--2174aa01369a0f889a0008ec.md) | 163 | `result-track:2174aa01369a0f889a0008ec01c67c0654ffc47a3d21adab70b376f4792121c9` |
| 18 | `lemma` | [rTensorAlgHom_apply_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensoralghom-apply-eq--8580234e0409f8c59df2e47a.md) | 176 | `result-track:8580234e0409f8c59df2e47a2eb042781adddf36af60c0105af7499b13f1aacd` |
| 19 | `def` | [rTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensoralgequiv--551eea09c4455f71bb429197.md) | 183 | `declaration-track:551eea09c4455f71bb4291975a742521d614913076fbb1bb6e86708c2a0fce67` |
| 20 | `lemma` | [rTensorAlgEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/rtensoralgequiv-apply--25dd18c655f8cc41b347252e.md) | 196 | `result-track:25dd18c655f8cc41b347252eab9bd0b349a27bbbfb576f7ea1d5ef4043efcfc3` |
| 21 | `def` | [scalarRTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/scalarrtensoralgequiv--27351551227147cb4980730f.md) | 205 | `declaration-track:27351551227147cb4980730f036ea738209036a39d92c95a98b5db23b976e1d5` |
| 22 | `def` | [algebraTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/algebratensoralgequiv--73e4cb79a47f75cb78f0f763.md) | 216 | `declaration-track:73e4cb79a47f75cb78f0f763ce5e928f0948ba73a81c932cd13e32d95bfce5c9` |
| 23 | `lemma` | [algebraTensorAlgEquiv_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/algebratensoralgequiv-tmul--a880d1c881f9026e5a6387b9.md) | 226 | `result-track:a880d1c881f9026e5a6387b9137758f3d2137e7962bf4ddfbcb013b3baf8f561` |
| 24 | `lemma` | [algebraTensorAlgEquiv_symm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/algebratensoralgequiv-symm-x--4a75064fc5c712778c312aff.md) | 232 | `result-track:4a75064fc5c712778c312affef058a339f8ac9c692f5a05ae180817c8b0bf879` |
| 25 | `lemma` | [algebraTensorAlgEquiv_symm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/algebratensoralgequiv-symm-monomial--895a0cabdb7e0b9f7d702819.md) | 237 | `result-track:895a0cabdb7e0b9f7d7028195782350694edccb274f5af147a59aa47199fd1ed` |
| 26 | `lemma` | [aeval_one_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/aeval-one-tmul--04070d0b94068557c6127e55.md) | 248 | `result-track:04070d0b94068557c6127e5569055b20ac5c0a55dc4765aae5ae9521a6c12405` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/instance--c0bac77acf510cc3074f03ac.md) | 262 | `declaration-track:c0bac77acf510cc3074f03acb4dbfd5b705220ff8ac737faa0a17f8a22274b29` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean/declarations/instance--838d9c4f33b8a8bc71c8c08b.md) | 265 | `declaration-track:838d9c4f33b8a8bc71c8c08b7e09d2a5c167db3b0e77636dd263c9ac4b16474f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
