# Verification target: GRWTSK.Algebra.LinearAlgebra.QuotientConvention.Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5190ec75a867dd9c6d1ac6488dfab7b54ce1642a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5190ec75a867dd9c6d1ac6488dfab7b54ce1642a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Grassmannian` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotientPlane](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientplane--56291ab2432f9e797211b0e8.md) | 30 | `declaration-track:56291ab2432f9e797211b0e8f6d9fc0580ba03a657790e622896c7ceab128b02` |
| 2 | `theorem` | [intrinsicPlane_quotient_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsicplane-quotient-finrank--5833bb777cf69bdedc01a61e.md) | 33 | `result-track:5833bb777cf69bdedc01a61ed5924f80a9e9508766c008f2df39a1309f5f4453` |
| 3 | `theorem` | [quotientPlane_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientplane-finrank--09deb12db10937c99dd49c46.md) | 41 | `result-track:09deb12db10937c99dd49c46f33126ac1155830ffe031a25860d505e1018cbfc` |
| 4 | `theorem` | [quotientPlane_dimension_sum](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientplane-dimension-sum--fecb603e15accb88a23f1ec8.md) | 47 | `result-track:fecb603e15accb88a23f1ec86a0e220a0d8108d42a070c1620b6f9cd8319291f` |
| 5 | `theorem` | [quotientPlane_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientplane-rank-le--c9075e2a44779fe8fe8f6315.md) | 54 | `result-track:c9075e2a44779fe8fe8f6315cbe28e7cb3e684762e6ed4f30e5cd04eb33d0286` |
| 6 | `def` | [intrinsicToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsictoquotientconvention--1a5fec9087680c08c11c6b1c.md) | 59 | `declaration-track:1a5fec9087680c08c11c6b1ccbca39e31615393104ddb9a06d1cbeecea2c7820` |
| 7 | `theorem` | [intrinsicToQuotientConvention_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsictoquotientconvention-submodule--62698f555624bfdf7d760c05.md) | 68 | `result-track:62698f555624bfdf7d760c05cd0326eeeb8a9d2a07566f58f1be9b8c59573916` |
| 8 | `def` | [quotientConventionToIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconventiontointrinsic--e3312942a161b03020ef32a6.md) | 72 | `declaration-track:e3312942a161b03020ef32a6855f8d8177f5d735da44859ace0fdeda0543f728` |
| 9 | `theorem` | [quotientConventionToIntrinsic_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconventiontointrinsic-submodule--badfae6070b8c984ff7fc6a6.md) | 79 | `result-track:badfae6070b8c984ff7fc6a6eceb1884ec150b1ff1959f992d797025aa59effd` |
| 10 | `def` | [intrinsicEquivQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsicequivquotientconvention--a3b7de45c0287e88076bbacf.md) | 84 | `declaration-track:a3b7de45c0287e88076bbacfcbb31cada35eb6e1860c24a318e5977f7088f447` |
| 11 | `theorem` | [quotientConvention_roundTrip_intrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconvention-roundtrip-intrinsic--70e267ddfeb4c7680be71828.md) | 92 | `result-track:70e267ddfeb4c7680be718286d57f07548b03ea7d88cec20ff3fdda0b1d5490a` |
| 12 | `theorem` | [quotientConvention_roundTrip_mathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconvention-roundtrip-mathlib--06ec42e99dbdc857f506b9d1.md) | 98 | `result-track:06ec42e99dbdc857f506b9d1bc21cabc0318d2bc195292223c2c6c44cbd7aec6` |
| 13 | `def` | [frameQuotientEquivMathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/framequotientequivmathlib--c9db15ed9f9605a986aa5441.md) | 104 | `declaration-track:c9db15ed9f9605a986aa54416f8132a6d9216ba399e3c446559ce39863bf49cd` |
| 14 | `def` | [frameToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/frametoquotientconvention--f35e6df13cac892012c5c344.md) | 109 | `declaration-track:f35e6df13cac892012c5c344b7071e437d11a3f90e268f1dad588163e0e2a29d` |
| 15 | `theorem` | [frameToQuotientConvention_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/frametoquotientconvention-eq-iff--e39c7c1307e2bac6f5e29daf.md) | 113 | `result-track:e39c7c1307e2bac6f5e29daf723a72ccee5c8ba8a866df0cda6e1bf25db252fa` |
| 16 | `theorem` | [frameToQuotientConvention_eq_iff_minors](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/frametoquotientconvention-eq-iff-minors--4ac7d3ed3c9e9679cb53442b.md) | 123 | `result-track:4ac7d3ed3c9e9679cb53442b266a2a5ad7864f70c8b84c411ac62a1587aeec9b` |
| 17 | `def` | [QuotientConventionNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconventionnonnegative--938dfca55f93cd079c74c07a.md) | 131 | `declaration-track:938dfca55f93cd079c74c07a5fe300d5ff485727ca03ba0082a9ad9d3e6c6ce4` |
| 18 | `def` | [QuotientConventionPositive](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconventionpositive--b0774b3da91c9dee402fb576.md) | 136 | `declaration-track:b0774b3da91c9dee402fb576b7efe038f00b99cb7681f6e8ddc5753527782a6d` |
| 19 | `theorem` | [intrinsicNonnegative_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsicnonnegative-iff-quotientconvention--ac1c2e8b430fa7a0b91c5505.md) | 141 | `result-track:ac1c2e8b430fa7a0b91c5505c07427794614d38ee399891482760de54b4b6a3e` |
| 20 | `theorem` | [intrinsicPositive_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/intrinsicpositive-iff-quotientconvention--a019a72df32997167fdf8d8a.md) | 152 | `result-track:a019a72df32997167fdf8d8aecb4d8cc96ca9a125f230fb3697a59ac8a9d6968` |
| 21 | `def` | [wholeSpaceQuotientPoint](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/wholespacequotientpoint--84b26cdd249edea2cef0a5de.md) | 163 | `declaration-track:84b26cdd249edea2cef0a5debc4f0249f9815b6b487f19417a70391a2c2c714c` |
| 22 | `theorem` | [quotientConvention_dimension_guard](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/quotientconvention-dimension-guard--978ab9f91c39d7427b9bb769.md) | 170 | `result-track:978ab9f91c39d7427b9bb76927c78c73473e0585d41f00c867da846a0b64591a` |
| 23 | `theorem` | [line_in_three_quotient_rank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/line-in-three-quotient-rank--e72ed9216befe6b501bc731e.md) | 179 | `result-track:e72ed9216befe6b501bc731eefbc8cae691c9899510cd1282201b118bbfbc401` |
| 24 | `theorem` | [line_in_three_not_quotient_rank_one](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/declarations/line-in-three-not-quotient-rank-one--9996fd2424bf2dab226d03bf.md) | 184 | `result-track:9996fd2424bf2dab226d03bf2ef991ace65cef7ce064ba582013d39a9eff7349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
