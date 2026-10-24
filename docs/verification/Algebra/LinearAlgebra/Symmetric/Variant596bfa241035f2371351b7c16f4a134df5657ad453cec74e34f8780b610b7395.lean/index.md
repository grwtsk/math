# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dce54212871cf5dbdfefb03ac3be57637fa98d01",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dce54212871cf5dbdfefb03ac3be57637fa98d01`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Banach` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric--2baae76cc4b31b0adb48cbcb.md) | 61 | `declaration-track:2baae76cc4b31b0adb48cbcba4060c04b9d2541e3e246b8a1fb7aa391f4269b2` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-iff-sesqform--f7591e95ada9f06e41f5d093.md) | 68 | `result-track:f7591e95ada9f06e41f5d093e7e5d0d0e077a3168cbda77be81fb41cd5961a75` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-conj-inner-sym--912b51614a49da924fb1765f.md) | 74 | `result-track:912b51614a49da924fb1765ff6c52ffbd866886ce2822735708383bb0571becb` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-apply-clm--63386a81ea912a68cbcc9958.md) | 78 | `result-track:63386a81ea912a68cbcc9958451739438791ae813c48fe9892164b60fbee1b98` |
| 5 | `theorem` | [IsSymmetric.zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-zero--054cd360913ddee01e1f3833.md) | 83 | `result-track:054cd360913ddee01e1f383310b35a0616aaacfa91b5677383877e7186123426` |
| 6 | `theorem` | [IsSymmetric.id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-id--4628a19fb21845c5c189c326.md) | 87 | `result-track:4628a19fb21845c5c189c32694e8f7da471d4877934c447e65f127347b6480ec` |
| 7 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-add--522fc9e37e53102f5f1327a4.md) | 90 | `result-track:522fc9e37e53102f5f1327a41394cf3a123ffd71beac76c007c2ba15cb635538` |
| 8 | `theorem` | [IsSymmetric.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-sub--fc2e8828b05fd72a32fb0a1f.md) | 96 | `result-track:fc2e8828b05fd72a32fb0a1fbf070873092b30bb7f8daa86ed680a40138c31a7` |
| 9 | `theorem` | [IsSymmetric.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-smul--92db1fb45607d489b54e3775.md) | 102 | `result-track:92db1fb45607d489b54e37757924b84652c127546e782e14e24d471deed71699` |
| 10 | `lemma` | [IsSymmetric.mul_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-mul-of-commute--e4ac4b4df57b69ec72318580.md) | 108 | `result-track:e4ac4b4df57b69ec72318580a05b04f01e951d095342eca5bb9742ac200a37ff` |
| 11 | `lemma` | [IsSymmetric.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-pow--346beaeb037e72c63105d301.md) | 113 | `result-track:346beaeb037e72c63105d301bed12d782776ce4a9b6218f65c99f8a39471ffcc` |
| 12 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-coe-reapplyinnerself-apply--ef1ce337474300cb2ec070b7.md) | 120 | `result-track:ef1ce337474300cb2ec070b75152463644c6d71487875d06c21fbf3691a7454b` |
| 13 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-restrict-invariant--0d1f6668e5400ad4ed0762ce.md) | 129 | `result-track:0d1f6668e5400ad4ed0762cefe159719ff15de9efacac7eb397cf7b6cf13680a` |
| 14 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-restrictscalars--15228516bd5be18e7c6edbc9.md) | 132 | `result-track:15228516bd5be18e7c6edbc9be35fdda8f41cfbb428b5b53e880afca15171ed6` |
| 15 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-iff-inner-map-self-real--31706ed5a28de95a7ec3b460.md) | 146 | `result-track:31706ed5a28de95a7ec3b4608e6019f51d0142b1418a762d65bb093fe774f9eb` |
| 16 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-inner-map-polarization--1142ffa3eda2c01f831724e4.md) | 166 | `result-track:1142ffa3eda2c01f831724e41b304afd1446eeea17444a2486cdeecbf0f4fb55` |
| 17 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-continuous--944e50a1ce2926485f557a85.md) | 200 | `result-track:944e50a1ce2926485f557a85c2c3749ddbc14371611148ab81bdf93f0f31aec1` |
| 18 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant596bfa241035f2371351b7c16f4a134df5657ad453cec74e34f8780b610b7395.lean/declarations/issymmetric-inner-map-self-eq-zero--5478b295973335d19783d6c9.md) | 217 | `result-track:5478b295973335d19783d6c96cb982165ad69d159c2de29988a45ba88a3d5e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
