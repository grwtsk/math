# Verification target: GRWTSK.Analysis.Mul.Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed221011e163658539a5afae02b4603d803afbf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/index.md) · [Full source](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed221011e163658539a5afae02b4603d803afbf`.

Source path: `GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/mul--407637f13ac97892e19db406.md) | 37 | `declaration-track:407637f13ac97892e19db4067edaff5961b1f1227205f46783b0b24497cb7c30` |
| 2 | `theorem` | [mul_apply'](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/mul-apply--b32719d7c8c46faef0438206.md) | 41 | `result-track:b32719d7c8c46faef0438206deade1f356a4e79777a1f2de766d3cdc50e8dee4` |
| 3 | `theorem` | [opNorm_mul_apply_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mul-apply-le--cc833f28e3a6414e425255f6.md) | 45 | `result-track:cc833f28e3a6414e425255f604ca3335525dbdc40cd5a82b0a4b858f8acc8b1e` |
| 4 | `theorem` | [opNorm_mul_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mul-le--a07eba239fc6f66d5361fcda.md) | 49 | `result-track:a07eba239fc6f66d5361fcdaf32986229ea5a4c04f6685ec469107539503a50a` |
| 5 | `def` | [_root_.NonUnitalAlgHom.Lmul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/root-nonunitalalghom-lmul--cbe41c8b94f9f7f5b065ec86.md) | 61 | `declaration-track:cbe41c8b94f9f7f5b065ec8695fbb542782297617dadb84cb8f438d5dce2ed0f` |
| 6 | `theorem` | [_root_.NonUnitalAlgHom.coe_Lmul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/root-nonunitalalghom-coe-lmul--89788fe4b2d0ed0b5928cd3b.md) | 68 | `result-track:89788fe4b2d0ed0b5928cd3bfb825b765aa497960eafc58176ec94a38db76492` |
| 7 | `def` | [mulLeftRight](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/mulleftright--c10a51c8e1d8c642837faaef.md) | 74 | `declaration-track:c10a51c8e1d8c642837faaef8853283ce937578caf44c2fb533dd4603a05d422` |
| 8 | `theorem` | [mulLeftRight_apply](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/mulleftright-apply--85b3c6b36d3e14d326b7de8a.md) | 78 | `result-track:85b3c6b36d3e14d326b7de8a7829db43e91d441315354fb073c59becb8bbe72b` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mulleftright-apply-apply-le--548d5282100de4b937bf2f4a.md) | 81 | `result-track:548d5282100de4b937bf2f4aac5b226d9e8a69c280e7db31831274190d59d8fb` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mulleftright-apply-le--0a7e0a0419c7beea9f8cb925.md) | 88 | `result-track:0a7e0a0419c7beea9f8cb925bb6c88026cd5d721f56022439a62c3af92cee273` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mulleftright-le--8bb84e3a2a7dfad120656a0f.md) | 91 | `result-track:8bb84e3a2a7dfad120656a0f9eefaa192f0a8da549c107e569f22849e889aeef` |
| 12 | `class` | [_root_.RegularNormedAlgebra](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/root-regularnormedalgebra--f23db8e8de818b051f9f2933.md) | 104 | `declaration-track:f23db8e8de818b051f9f2933cac59fc9a92db3d056848c6ef8695fe68728d9d1` |
| 13 | `instance` | [_root_.NormedAlgebra.instRegularNormedAlgebra](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/root-normedalgebra-instregularnormedalgebra--55abb1d492dc1adfa88c423c.md) | 109 | `declaration-track:55abb1d492dc1adfa88c423c3276bd052bdaadce37a6e242f9791e0779caec3a` |
| 14 | `lemma` | [isometry_mul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/isometry-mul--eefa52f5b45b21a9a1ab08fd.md) | 118 | `result-track:eefa52f5b45b21a9a1ab08fd194c149a679c05c4781d2fa789a155d00917a901` |
| 15 | `lemma` | [opNorm_mul_apply](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mul-apply--0e821645db923e7e637793ce.md) | 122 | `result-track:0e821645db923e7e637793ce2faebe0e1493198d6fef739736e9395606ab5fed` |
| 16 | `lemma` | [opNNNorm_mul_apply](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnnnorm-mul-apply--1e6e2b0a39f2b8180094aec9.md) | 127 | `result-track:1e6e2b0a39f2b8180094aec97a933867bd249395d449c02a81b11932fed3226c` |
| 17 | `def` | [mulₗᵢ](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/mul--1294f4d3a176b696e6af5fc3.md) | 133 | `declaration-track:1294f4d3a176b696e6af5fc300757c32ba120a0cfee633de105ea293c835efbf` |
| 18 | `theorem` | [coe_mulₗᵢ](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/coe-mul--72137e7e3e2c0035abcc3e2a.md) | 138 | `result-track:72137e7e3e2c0035abcc3e2af2bcaad9879653a4c488641c49f9fd9e4dde0b2f` |
| 19 | `lemma` | [flip_mul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/flip-mul--1f1d067f52a7df002ba55a4f.md) | 147 | `result-track:1f1d067f52a7df002ba55a4f99e2b422cc88666e4741396e96b54b3fa7fb6da7` |
| 20 | `def` | [ring_lmap_equiv_selfₗ](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/ring-lmap-equiv-self--75578f112c39407be2149f6e.md) | 157 | `declaration-track:75578f112c39407be2149f6e640f85327e94e89bff0837b1f41e487329db06e6` |
| 21 | `def` | [ring_lmap_equiv_self](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/ring-lmap-equiv-self--6c9b78996193618ba4633800.md) | 167 | `declaration-track:6c9b78996193618ba46338002d4ef010f4bf85a443058fa85c6df0b57674cdff` |
| 22 | `def` | [lsmul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/lsmul--d75f4b48d70f9cbfe6c1ff41.md) | 186 | `declaration-track:d75f4b48d70f9cbfe6c1ff41aba52aa0539a87f366933ab40558d7e6ba76303f` |
| 23 | `theorem` | [lsmul_apply](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/lsmul-apply--7644fe287b58f4b21217c9ed.md) | 191 | `result-track:7644fe287b58f4b21217c9ed4026becdd21b7db1164940833ff9a437d16630da` |
| 24 | `theorem` | [norm_toSpanSingleton](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/norm-tospansingleton--dcd4700d253dd1cf3d136952.md) | 196 | `result-track:dcd4700d253dd1cf3d136952b459e0583bd7726238e481fa4444c2ff21fdd1e2` |
| 25 | `theorem` | [opNorm_lsmul_apply_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-lsmul-apply-le--ae5e9de8c9a57caa23ff4e4f.md) | 203 | `result-track:ae5e9de8c9a57caa23ff4e4fd2587622457f90acf5f66819aefc4e2647c55130` |
| 26 | `theorem` | [opNorm_lsmul_le](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-lsmul-le--39dca89b90e3cef4388e1866.md) | 208 | `result-track:39dca89b90e3cef4388e1866435b4602e743efc071894da168efe9071ebb1a97` |
| 27 | `theorem` | [opNorm_mul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-mul--8e86886cd9dde7c435d45511.md) | 232 | `result-track:8e86886cd9dde7c435d455112d0ed23aeabe5c9bd4e7c73dedcfcbbebf1f783d` |
| 28 | `theorem` | [opNNNorm_mul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnnnorm-mul--6621bfb6e6dc2d7e8e7adb14.md) | 237 | `result-track:6621bfb6e6dc2d7e8e7adb14079f13538ed058ecfbce24b20c40f553010b0296` |
| 29 | `theorem` | [opNorm_lsmul](../../../../mathematics/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean/declarations/opnorm-lsmul--74fa9218d2d030c83df4ee81.md) | 247 | `result-track:74fa9218d2d030c83df4ee818f942259564a31bbe51aa66dc19c18e3e7627bf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
