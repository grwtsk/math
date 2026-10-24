# Verification target: GRWTSK.Algebra.LinearAlgebra.Decomposition.Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f73e80e0bd170a6e2e882b37df581335c150a1f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f73e80e0bd170a6e2e882b37df581335c150a1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Decomposition](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition--0567b8837e19289980deff72.md) | 52 | `declaration-track:0567b8837e19289980deff7292a6c92a1b0669172590e3a27e19d5e1312a7a5a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/instance--129d0ed6b86d4a2d88e6d1f1.md) | 58 | `declaration-track:129d0ed6b86d4a2d88e6d1f186b863f4753546315e5e5042a3f0829a9a282da2` |
| 3 | `abbrev` | [Decomposition.ofAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition-ofaddhom--f451e67cc148597ec9c7613c.md) | 67 | `declaration-track:f451e67cc148597ec9c7613c03302e0b1f5016ed2c3a49565e969db5c6d48077` |
| 4 | `def` | [IsInternal.chooseDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/isinternal-choosedecomposition--fda96b77dd98bedc5fb4fece.md) | 75 | `declaration-track:fda96b77dd98bedc5fb4feced48af6fbceb04548d619882b643e8983eff0e0e6` |
| 5 | `theorem` | [Decomposition.isInternal](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition-isinternal--0d2de4a4c8fd585d9b34b482.md) | 83 | `result-track:0d2de4a4c8fd585d9b34b4826e5f6f2fb6325bb6172d19f7b8e217dd169923e1` |
| 6 | `def` | [decompose](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose--9ae63ad28cf1d59478db5d8d.md) | 88 | `declaration-track:9ae63ad28cf1d59478db5d8dd96f674e8386ffbdaa6f50e7a8973cd8ed9830ef` |
| 7 | `def` | [SetLike.IsHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/setlike-ishomogeneous--3cff817a6b6eb6372511c4e6.md) | 97 | `declaration-track:3cff817a6b6eb6372511c4e648c9b4f71c7e2e68780399589ebd6524feae3693` |
| 8 | `theorem` | [Decomposition.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition-inductionon--76b0096575c94b90b5252f74.md) | 101 | `result-track:76b0096575c94b90b5252f74493397b0c8d66b667805650a8ec29beec5b5f759` |
| 9 | `theorem` | [Decomposition.decompose'_eq](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition-decompose-eq--4578c6217f37fc510faefe11.md) | 119 | `result-track:4578c6217f37fc510faefe117682d58c11354350a87ee4e728381525b8490183` |
| 10 | `theorem` | [decompose_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-of--e383ee3dd3b69d50e603b668.md) | 122 | `result-track:e383ee3dd3b69d50e603b6685ffd4fecff04a098dbcf13736fa45f992f081ccc` |
| 11 | `theorem` | [decompose_coe](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-coe--cbf43b3dc81f9e1b42115396.md) | 126 | `result-track:cbf43b3dc81f9e1b42115396bf39ebbe38b250d7423c185f6c35a34e3c13d541` |
| 12 | `theorem` | [decompose_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-of-mem--4414b0234ea97f65f9454341.md) | 129 | `result-track:4414b0234ea97f65f94543414a317c90113d34120c152f5c0340c320f605c052` |
| 13 | `theorem` | [decompose_of_mem_same](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-of-mem-same--ff48c57697f650300cfed4f7.md) | 133 | `result-track:ff48c57697f650300cfed4f73b17a4948f2125962032d1d6d08d892f1dbff2a2` |
| 14 | `theorem` | [decompose_of_mem_ne](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-of-mem-ne--4b5a4ba8949e6269fdd3cd31.md) | 136 | `result-track:4b5a4ba8949e6269fdd3cd3171c6608633d301db999a062cf9b39d6fc64cf99d` |
| 15 | `theorem` | [degree_eq_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/degree-eq-of-mem-mem--92e81f3516c9a371c287a9c9.md) | 140 | `result-track:92e81f3516c9a371c287a9c914caecf185c7eb041543b7ad42fae041a9c12b30` |
| 16 | `def` | [decomposeAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposeaddequiv--640362ef401980c287333704.md) | 147 | `declaration-track:640362ef401980c287333704285fed5e4205c03be8b75f917974828b7f7ff229` |
| 17 | `theorem` | [decompose_zero](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-zero--ee44c1c0d5674f7bbee154e5.md) | 151 | `result-track:ee44c1c0d5674f7bbee154e508d927dde5d10c0c2e911231dc93c5043e9422b4` |
| 18 | `theorem` | [decompose_symm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-zero--4482b9e21aae8fef7467c7f9.md) | 155 | `result-track:4482b9e21aae8fef7467c7f9cad309ea538845073efaa62a8c3e3e8cc5a6aaef` |
| 19 | `theorem` | [decompose_add](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-add--b066ef1233527fa076579425.md) | 159 | `result-track:b066ef1233527fa0765794253b24289d5d0c4dcee2940d661288e61bb95f064c` |
| 20 | `theorem` | [decompose_symm_add](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-add--5005578b3a72dd9e1dae3a76.md) | 163 | `result-track:5005578b3a72dd9e1dae3a76eebf7a1f63f6e05ce3dbda259edb2a8a46286a0f` |
| 21 | `theorem` | [decompose_sum](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-sum--7183bc64e0202ddef51e91c3.md) | 168 | `result-track:7183bc64e0202ddef51e91c31f1567d45c77a673de4a7c0dda1fe266c4e60cd5` |
| 22 | `theorem` | [decompose_symm_sum](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-sum--65dcf4f9bec2ab5de192043e.md) | 173 | `result-track:65dcf4f9bec2ab5de192043e8e8f9f90b7f18a28daa866165d5518d4ce9c34f6` |
| 23 | `theorem` | [sum_support_decompose](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/sum-support-decompose--853aa679242964f9ad7e66bb.md) | 177 | `result-track:853aa679242964f9ad7e66bbecf6561db41dc961cc3b0bd4c7896cb5c2cf59b5` |
| 24 | `theorem` | [AddSubmonoidClass.IsHomogeneous.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/addsubmonoidclass-ishomogeneous-mem-iff--f49609fbf302c7bb9349f470.md) | 184 | `result-track:f49609fbf302c7bb9349f470f3dac800648648a509afcac7040132dca3ede5ae` |
| 25 | `instance` | [addCommGroupSetLike](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/addcommgroupsetlike--4592d4e13785c9cdf760700e.md) | 202 | `declaration-track:4592d4e13785c9cdf760700ee53edb5e7d12b927403127138419583636f85fa9` |
| 26 | `theorem` | [decompose_neg](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-neg--4a9abd27bcdf59a3567cd7ef.md) | 212 | `result-track:4a9abd27bcdf59a3567cd7ef415591d8e5c255bd6f0bb012ef6d1dc4b20ee20a` |
| 27 | `theorem` | [decompose_symm_neg](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-neg--87081e4cc75498dd6791e0f7.md) | 216 | `result-track:87081e4cc75498dd6791e0f7a1d51d1f74d8fa96612ff84769d091cc241ea420` |
| 28 | `theorem` | [decompose_sub](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-sub--e7198848720a78eae2fd02c2.md) | 220 | `result-track:e7198848720a78eae2fd02c2f2b971e993c53cd0c3a5f6a9f8a07e52ad909f9a` |
| 29 | `theorem` | [decompose_symm_sub](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-symm-sub--8bd2cad3eb2b1a5e2407e049.md) | 224 | `result-track:8bd2cad3eb2b1a5e2407e049b861ff5388f389387acc4db57287ef18efb47ae6` |
| 30 | `abbrev` | [Decomposition.ofLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposition-oflinearmap--43cf876187a75f31e59de200.md) | 237 | `declaration-track:43cf876187a75f31e59de2001962e5f6e4f58030ab9cc93745db9aa77aa1592a` |
| 31 | `def` | [decomposeLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposelinearequiv--293145337e8943a593c9d466.md) | 248 | `declaration-track:293145337e8943a593c9d4667b8b9bf3cb2d6613b72a619a45a5172578f6875f` |
| 32 | `theorem` | [decomposeLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposelinearequiv-apply--0b96ad19a01a176b4cadfa0c.md) | 252 | `result-track:0b96ad19a01a176b4cadfa0cfbd180d95053094eea7892f0648f9aa8c9c36659` |
| 33 | `theorem` | [decomposeLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposelinearequiv-symm-apply--016686aa5fef5179d159be70.md) | 255 | `result-track:016686aa5fef5179d159be70c489a345142be6cacf7c3cb712c6b0224045fcf3` |
| 34 | `theorem` | [decompose_smul](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-smul--feb5dfec5f9a40a69b7966e1.md) | 259 | `result-track:feb5dfec5f9a40a69b7966e172f4eadf1b9a63d9fcc7b88db7db191a641325f6` |
| 35 | `theorem` | [decomposeLinearEquiv_symm_comp_lof](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decomposelinearequiv-symm-comp-lof--dc3e9adaf653ce84f2d89ae7.md) | 262 | `result-track:dc3e9adaf653ce84f2d89ae74ebdbf3c762e1cba5497e3255e69389ba1da7553` |
| 36 | `theorem` | [decompose_lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/declarations/decompose-lhom-ext--5d2e81a778988aed6fb0c966.md) | 269 | `result-track:5d2e81a778988aed6fb0c96600aee6f9abc4c507e42e19fc77718208b8cfee20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
