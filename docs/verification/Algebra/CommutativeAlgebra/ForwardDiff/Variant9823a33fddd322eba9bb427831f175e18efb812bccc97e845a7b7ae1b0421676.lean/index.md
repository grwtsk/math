# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ForwardDiff.Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72b559d6c958ee410c1c5d9df942becee5f3db4b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72b559d6c958ee410c1c5d9df942becee5f3db4b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fwdDiff](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff--60028c87a806a90453a00bf5.md) | 46 | `declaration-track:60028c87a806a90453a00bf5ea0b9811d4e2aee7df469c0dc6eea09c2a5a7b0a` |
| 2 | `lemma` | [fwdDiff_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-add--03843ad53c6ac390ae2e9c84.md) | 52 | `result-track:03843ad53c6ac390ae2e9c849e84d211fe50daeee72702186a33d5b08e2b2522` |
| 3 | `lemma` | [fwdDiff_const](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-const--6321120d24ce52983ed2ea70.md) | 56 | `result-track:6321120d24ce52983ed2ea70e01c8143705977244fd78a17de5ec6aa08e5a696` |
| 4 | `lemma` | [fwdDiff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-smul--ecd2f29895ff4d937e2d195c.md) | 61 | `result-track:ecd2f29895ff4d937e2d195c22fd8624c6a93da35167f02277a1e70d50b9b305` |
| 5 | `lemma` | [fwdDiff_const_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-const-smul--95ad02877ebec85c5b292fc8.md) | 69 | `result-track:95ad02877ebec85c5b292fc89f9644366b676a3dd10422bf8e94e1f627dc955c` |
| 6 | `lemma` | [fwdDiff_smul_const](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-smul-const--0211cb1beced51b19f68cc07.md) | 73 | `result-track:0211cb1beced51b19f68cc0796608f1ed413700299d105972905dc9e34528f80` |
| 7 | `def` | [fwdDiffₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff--f0417666c8e06cb214a103c8.md) | 94 | `declaration-track:f0417666c8e06cb214a103c8cbca5b232683028aaac3d4faf9328a373fab4dc9` |
| 8 | `lemma` | [coe_fwdDiffₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/coe-fwddiff--64b7d09a5a8beea05b25a087.md) | 99 | `result-track:64b7d09a5a8beea05b25a08798c5ae992f57a9c1ca8c9aea90fe94329b50fe17` |
| 9 | `lemma` | [coe_fwdDiffₗ_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/coe-fwddiff-pow--631347f713a9bb983ea51b48.md) | 101 | `result-track:631347f713a9bb983ea51b485928611a83ca31fb9d3f74d14c044f33536e53b0` |
| 10 | `def` | [shiftₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/shift--f581f79a23ac1aa37accc0e2.md) | 106 | `declaration-track:f581f79a23ac1aa37accc0e2f7321e4403ae871b5f9255a55fb3a39b43c884c7` |
| 11 | `lemma` | [shiftₗ_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/shift-apply--9e86a14fe9d7a81984802761.md) | 108 | `result-track:9e86a14fe9d7a81984802761b1a230cdcdb9e8682256fcd303fcd27c3d52af0b` |
| 12 | `lemma` | [shiftₗ_pow_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/shift-pow-apply--e2de8c6f662a3337414b3faa.md) | 110 | `result-track:e2de8c6f662a3337414b3faa10214b68f89c8574b9e3e40bc736abf90c85ac16` |
| 13 | `lemma` | [fwdDiff_finsetSum](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-finsetsum--0d325531f4af3a4165ffb52e.md) | 119 | `result-track:0d325531f4af3a4165ffb52ef42823f3224afaca3339e74ef27f5556310a6b2a` |
| 14 | `lemma` | [fwdDiff_iter_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-add--e27f6440ac6bd0f750a4eadc.md) | 125 | `result-track:e27f6440ac6bd0f750a4eadcf3da1206d45b1d6b6bb10261d891647eeff3a9af` |
| 15 | `lemma` | [fwdDiff_iter_const_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-const-smul--954069cee197a98920597a62.md) | 129 | `result-track:954069cee197a98920597a62f461f2cd6b6da88c7c1af624702a09f26483f36a` |
| 16 | `lemma` | [fwdDiff_iter_finsetSum](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-finsetsum--992ca3d45f3b69ef7a9c2e54.md) | 135 | `result-track:992ca3d45f3b69ef7a9c2e54d040a867a2ce086492d6bab24c5d14243137eb05` |
| 17 | `theorem` | [fwdDiff_iter_eq_sum_shift](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-eq-sum-shift--55db3d03f767f61997498586.md) | 147 | `result-track:55db3d03f767f61997498586be18b001c4ccb9e1907ffbfc9005e14c0c0e7a79` |
| 18 | `lemma` | [fwdDiff_iter_comp_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-comp-add--911544fc6100d4a2bdaf59db.md) | 163 | `result-track:911544fc6100d4a2bdaf59dbca58283e979936c4f78a4c7ed9f27eb4be693ae6` |
| 19 | `lemma` | [fwdDiff_comp_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-comp-add--de6325fe8fd5775a4ff4b0a0.md) | 167 | `result-track:de6325fe8fd5775a4ff4b0a06a13e834dfdc01dbc0b14ebcd9b5bc2e31859355` |
| 20 | `theorem` | [shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/shift-eq-sum-fwddiff-iter--87a33654013e71cf7735d824.md) | 175 | `result-track:87a33654013e71cf7735d8242644d603a3e4befe5b2377a584befe578ac0c0ed` |
| 21 | `lemma` | [fwdDiff_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-choose--95b1357f8f67f72ccd474828.md) | 188 | `result-track:95b1357f8f67f72ccd474828f4f15ba5ee07f86e3be5e1fdcb93a9c22ddb5c53` |
| 22 | `lemma` | [fwdDiff_iter_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-choose--2f781c0cf25249dfe5296776.md) | 192 | `result-track:2f781c0cf25249dfe52967764fae4f99c5265656d5b99ed98fe0a657bb87f79a` |
| 23 | `lemma` | [fwdDiff_iter_choose_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-choose-zero--f260f8b6a7c2f002db5eb90f.md) | 199 | `result-track:f260f8b6a7c2f002db5eb90f468008feb2b099afe5cb8cd0157d1bb2cbe14107` |
| 24 | `lemma` | [fwdDiff_addChar_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-addchar-eq--479561b538172273f80ac951.md) | 212 | `result-track:479561b538172273f80ac95173cf479310bf804d7a5931ca434278addc07ea6e` |
| 25 | `theorem` | [fwdDiff_iter_pow_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-pow-eq-zero-of-lt--958b73736e79473efa3080ae.md) | 241 | `result-track:958b73736e79473efa3080aec309f0f5c9d2978b725bbb6aa3988154ad051a0e` |
| 26 | `theorem` | [fwdDiff_iter_eq_factorial](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-eq-factorial--9ea67df4ff1a42ef061c2144.md) | 256 | `result-track:9ea67df4ff1a42ef061c21446755a39b0244e56cca68d598cdc17599bc4df333` |
| 27 | `theorem` | [Polynomial.fwdDiff_iter_degree_eq_factorial](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/polynomial-fwddiff-iter-degree-eq-factorial--fae179f28ae4cb9886559fa7.md) | 270 | `result-track:fae179f28ae4cb9886559fa7b74900179a5ada816c04a07c7a3adbe6a461fcd4` |
| 28 | `theorem` | [Polynomial.fwdDiff_iter_eq_zero_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/polynomial-fwddiff-iter-eq-zero-of-degree-lt--2e349944d750ee91815217c9.md) | 278 | `result-track:2e349944d750ee91815217c92b1db1f24520fd971270754ab54fca9ba7f143e5` |
| 29 | `theorem` | [Polynomial.fwdDiff_iter_degree_add_one_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/polynomial-fwddiff-iter-degree-add-one-eq-zero--cf55a1982793dbb4065ad590.md) | 285 | `result-track:cf55a1982793dbb4065ad5906748a25d0654fb0090f0697b564b8ac12dcb322b` |
| 30 | `theorem` | [fwdDiff_iter_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/fwddiff-iter-sum-mul-pow-eq-zero--3e3ae3e3d0b6d62feb944507.md) | 294 | `result-track:3e3ae3e3d0b6d62feb9445079b5670078e6d259001bfc3871d86bac51e9a18ee` |
| 31 | `theorem` | [sum_range_shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/declarations/sum-range-shift-eq-sum-fwddiff-iter--bf52f2527ed4cc08adf8bb40.md) | 304 | `result-track:bf52f2527ed4cc08adf8bb40547c38b35a82d985bdc1cd9d6c8dbc0811be672c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
