# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b36a2be106fff3fa61157d2e93c06948b0ac5309",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b36a2be106fff3fa61157d2e93c06948b0ac5309`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualNumber](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/dualnumber--07c5200068ae542484d5602b.md) | 50 | `declaration-track:07c5200068ae542484d5602bc17db6c33ab1b23bdc6b93f1a1c91d1bab36d1a2` |
| 2 | `def` | [DualNumber.eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/dualnumber-eps--dc30a42cc6440813673178bf.md) | 54 | `declaration-track:dc30a42cc6440813673178bf6325e8a56b69670926316da5e2ffd8279b7a2fa1` |
| 3 | `theorem` | [fst_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/fst-eps--f1e2287ce144b5bcfd6a3577.md) | 70 | `result-track:f1e2287ce144b5bcfd6a35777e5fe1be801acb4c60a294b5e6bc886627b66580` |
| 4 | `theorem` | [snd_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/snd-eps--282a5a73eb5823e8caad11c4.md) | 74 | `result-track:282a5a73eb5823e8caad11c49458ee34d32a8a98bde9f0415f28f241fe6a0e62` |
| 5 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/snd-mul--b8c331bccab255d432b76c28.md) | 79 | `result-track:b8c331bccab255d432b76c282ccf7ce2d297b79a1a533b365d4b51aa597c8bcd` |
| 6 | `theorem` | [eps_mul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/eps-mul-eps--d46e0478097145902254311e.md) | 83 | `result-track:d46e0478097145902254311e56b1b99b4e1f2301e85cc01f2be91cab397b5cc6` |
| 7 | `theorem` | [inv_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/inv-eps--5ae0cffbceff855c9e507eea.md) | 87 | `result-track:5ae0cffbceff855c9e507eea41725d5e64d29343e5d7cb0416e2ad7c3eca2d54` |
| 8 | `theorem` | [inr_eq_smul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/inr-eq-smul-eps--d224cab8643d7c2b12b66718.md) | 91 | `result-track:d224cab8643d7c2b12b667189a71cbc0ceae30e0102edc3148bd15a25783fc28` |
| 9 | `theorem` | [commute_eps_left](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/commute-eps-left--049b34c2a6a0393f7cc22bf9.md) | 95 | `result-track:049b34c2a6a0393f7cc22bf94cc8581b3684a0269a705927ffb043d454691065` |
| 10 | `theorem` | [commute_eps_right](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/commute-eps-right--25c5be22b16f7274056819f2.md) | 99 | `result-track:25c5be22b16f7274056819f2313a3e7fe6cfb8d09e95ba3910eec2fb46ce15d4` |
| 11 | `theorem` | [algHom_ext'](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/alghom-ext--9f23cbc8e9357b0c5bfeeddb.md) | 106 | `result-track:9f23cbc8e9357b0c5bfeeddb599ba91fccf22f08c24d86fbbd926f86d460620f` |
| 12 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/alghom-ext--1ea105ba3d081f4ad93c14b2.md) | 118 | `result-track:1ea105ba3d081f4ad93c14b2e069c38e91e3301e58ed56721158c1faa35ea583` |
| 13 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift--6e0739eb68fa1a5705f3bc64.md) | 130 | `declaration-track:6e0739eb68fa1a5705f3bc645fb6f39879dd576aa6af0890e5e461d86c69134b` |
| 14 | `theorem` | [lift_apply_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-apply-apply--b7f149ab7a635a28c8d2e31b.md) | 154 | `result-track:b7f149ab7a635a28c8d2e31b0b02fceb82cdecbc51047c0ed327f34fcb38962e` |
| 15 | `theorem` | [coe_lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/coe-lift-symm-apply--3923477afa639908ec643354.md) | 157 | `result-track:3923477afa639908ec643354d093baad6f3ec4a4c663f33679541f38e13e764c` |
| 16 | `theorem` | [lift_apply_inl](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-apply-inl--d38942af3b974152a98b8981.md) | 164 | `result-track:d38942af3b974152a98b89810dbd66a3537d3217f1629b3932c8913bbdcad388` |
| 17 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-smul--2af739b2a29d7c8071e2da15.md) | 172 | `result-track:2af739b2a29d7c8071e2da156d82ca4c4dd9fa78adee2986bedec3d6cb42719f` |
| 18 | `theorem` | [lift_op_smul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-op-smul--0d8b7369f12684aa0b7663b7.md) | 180 | `result-track:0d8b7369f12684aa0b7663b72e8c82751c4a3bdefb3a49ed4de74ce305efb013` |
| 19 | `theorem` | [lift_apply_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-apply-eps--03378234d51308e963dbaf92.md) | 185 | `result-track:03378234d51308e963dbaf92582d795f8a355b56d544b75128f9747f21fb0e2a` |
| 20 | `theorem` | [lift_inlAlgHom_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/lift-inlalghom-eps--f7aee3755e225bbd31f5d79f.md) | 192 | `result-track:f7aee3755e225bbd31f5d79f5fc2091c0a9e22fd41619805048b712f80cb93ce` |
| 21 | `instance` | [instRepr](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variant36879f2e7c77c5b6b881bb123422294914c2863e36fe5b70c12ab1a11eeae17d.lean/declarations/instrepr--b3bab62fb2cc315322098f70.md) | 197 | `declaration-track:b3bab62fb2cc315322098f70a9b13c143af9676be70444382fc9cfcde3487744` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
