# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d1bc99d64e3796d5726d6f9d78e5dc334b6d98e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d1bc99d64e3796d5726d6f9d78e5dc334b6d98e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-one--32be9bed76539b5b2583360e.md) | 32 | `result-track:32be9bed76539b5b2583360e434d54465bc7739045051c170589c695a91bc999` |
| 2 | `theorem` | [abs_two](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-two--c79a7bdd3a8cc23b0aa44541.md) | 37 | `result-track:c79a7bdd3a8cc23b0aa445411f0e31de20f7447b9b3920a2f50371193dc0a2fc` |
| 3 | `theorem` | [abs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-mul--87a565442e45bef41ae283d7.md) | 41 | `result-track:87a565442e45bef41ae283d7c39a6752f6b22ccbf8436599f51a94ea85aef5d2` |
| 4 | `def` | [absHom](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abshom--f191ef1235974bbc26453828.md) | 49 | `declaration-track:f191ef1235974bbc26453828c120a2c2e994f1013f4350279cc10946fe55089f` |
| 5 | `theorem` | [abs_mul_abs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-mul-abs-self--5689b3c9572269860640394a.md) | 57 | `result-track:5689b3c9572269860640394ad23f7a551f4ebb864704e9b0ba8c78b08b2696fd` |
| 6 | `theorem` | [abs_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-mul-self--f1bcff8cd60c055d639bda15.md) | 62 | `result-track:f1bcff8cd60c055d639bda15064196dc90b6f8f3e89fbf87f63d341f18cbe57e` |
| 7 | `theorem` | [abs_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-eq-self--a1d98b824308d13a6eade1b2.md) | 66 | `result-track:a1d98b824308d13a6eade1b2eb5ec5af5e67e84a3a2ce2d80f24788b73b3ab1e` |
| 8 | `theorem` | [abs_eq_neg_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-eq-neg-self--70ce104739489815eee12389.md) | 70 | `result-track:70ce104739489815eee1238903f6c8bb8ed8a016634770cc602212eee7114ca8` |
| 9 | `theorem` | [abs_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-cases--373193c9fd2b448caa429a37.md) | 76 | `result-track:373193c9fd2b448caa429a37114d1bb25c1fc885338a001bad98f09509144039` |
| 10 | `theorem` | [max_zero_add_max_neg_zero_eq_abs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/max-zero-add-max-neg-zero-eq-abs-self--7bb61634d223d682acbaf08c.md) | 86 | `result-track:7bb61634d223d682acbaf08cb346639205e0a946fcf95c25c24dfb407d886f83` |
| 11 | `theorem` | [abs_eq_iff_mul_self_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-eq-iff-mul-self-eq--ec61d330e35a7bc1d5670c59.md) | 91 | `result-track:ec61d330e35a7bc1d5670c59a343bc8335e2b92d67fa2ee76c9685f77e04580e` |
| 12 | `theorem` | [abs_lt_iff_mul_self_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-lt-iff-mul-self-lt--f03be67a7471d373da616400.md) | 96 | `result-track:f03be67a7471d373da616400ca1b956ee070b67dbf4392df1577322ab6178a7d` |
| 13 | `theorem` | [abs_le_iff_mul_self_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-le-iff-mul-self-le--7572c7e9949aadf932445ebd.md) | 101 | `result-track:7572c7e9949aadf932445ebd1e6534cb7368314d5629c035dcadbdb5e9a9eaf5` |
| 14 | `theorem` | [abs_le_one_iff_mul_self_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-le-one-iff-mul-self-le-one--268ce95ac9e571146227822c.md) | 106 | `result-track:268ce95ac9e571146227822c629f94e14290abccfef7e401296e63d0d26a9a7f` |
| 15 | `theorem` | [abs_sub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-sub-sq--1551d961ad1696eb5ccff862.md) | 116 | `result-track:1551d961ad1696eb5ccff86281c9915a358ddc4bd992f1f832411cefc868600a` |
| 16 | `theorem` | [abs_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-dvd--dbaef3b77132aa696fc2568b.md) | 129 | `result-track:dbaef3b77132aa696fc2568b7c20a69b2c81cd581342d38588f09f845e3cad7e` |
| 17 | `theorem` | [abs_dvd_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-dvd-self--4efd9d2e641a1e3b1d954935.md) | 133 | `result-track:4efd9d2e641a1e3b1d9549356e233363e22a5e3d51772ae7d20f62a1c5b1393b` |
| 18 | `theorem` | [dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/dvd-abs--45b655dd72a8947f58469ece.md) | 138 | `result-track:45b655dd72a8947f58469ecef42fedd98811606ed0a4c9edf9a917aae3d8dd91` |
| 19 | `theorem` | [self_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/self-dvd-abs--3e53e0aed5152130d24f4c86.md) | 142 | `result-track:3e53e0aed5152130d24f4c8620a7cb9382dc307aa84be1bedb0e9c08d526ee0a` |
| 20 | `theorem` | [abs_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6c29fc07b2fac4c91194f9120e795e5847d963cf288b099208502b906b1e6287.lean/declarations/abs-dvd-abs--dcda74678fe1892a88f32681.md) | 146 | `result-track:dcda74678fe1892a88f32681198c91fce7f5120a7fc0a6884d9f3469cdb70280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
