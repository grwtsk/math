# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b84f9c9c29a34eca6f3796f56612629f2010630",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b84f9c9c29a34eca6f3796f56612629f2010630`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/center--c0eb07d51c585114e8641c2d.md) | 34 | `declaration-track:c0eb07d51c585114e8641c2dfd01a283257ce3bb9d4416396d3d5265a6113594` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/coe-center--c3c69bc8f54c805578a71642.md) | 40 | `result-track:c3c69bc8f54c805578a71642c5279c3738b9d58d950699779ca673e351b8e9f6` |
| 3 | `theorem` | [center_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/center-tosubmonoid--af9b5ec64d2a2c4888b3619c.md) | 44 | `result-track:af9b5ec64d2a2c4888b3619c86c05c0a00edb3f890c2fdc44da6503253babe42` |
| 4 | `instance` | [center.isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/center-ismulcommutative--ac033a77aa8508356e48b836.md) | 47 | `declaration-track:ac033a77aa8508356e48b8362e6dbdbeaf255acad0b3dfdf14f106e175c40e30` |
| 5 | `def` | [centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/centercongr--acebbddeebedf2bd29c52a4c.md) | 55 | `declaration-track:acebbddeebedf2bd29c52a4c9047d8e4513f7e1231edaf1b3b9c2f801fe4448b` |
| 6 | `def` | [centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/centertomulopposite--1473823866bdf1bb28300f4d.md) | 60 | `declaration-track:1473823866bdf1bb28300f4d8750ea7a5bbad41f6415f33122aab22f04335809` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/mem-center-iff--57d1a3e8bd3d4a60d839912a.md) | 65 | `result-track:57d1a3e8bd3d4a60d839912a2ed0b9831545481d50487ec058c1ab809f56352c` |
| 8 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/decidablememcenter--cfae1586069e765e47c30552.md) | 69 | `declaration-track:cfae1586069e765e47c30552154ce30198d8701ded9b660c8da060b7a9ed7672` |
| 9 | `instance` | [centerCharacteristic](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/centercharacteristic--b05d0a12bdc285fa35fb9835.md) | 73 | `declaration-track:b05d0a12bdc285fa35fb9835443fb0b18133d78c04d11bf4a95c7e28083762ac` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.CommGroup.center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/root-grwtsk-algebra-grouptheory-center-variant9d942e40771b918d4d3886c2d1--a062f4bbb19489ec9a201c75.md) | 80 | `result-track:a062f4bbb19489ec9a201c75f5f76c16143a6f2b29a2d288f66b4b18a6e3f498` |
| 11 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Center.Variant9d942e40771b918d4d3886c2d1202416e0f112347b3151b14ee701265767688a.Group.commGroupOfCenterEqTop](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/root-grwtsk-algebra-grouptheory-center-variant9d942e40771b918d4d3886c2d1--fd7d5c21578628904ab53558.md) | 88 | `declaration-track:fd7d5c21578628904ab53558a0715e801be18a0ecc3cf180457c29dad14a571e` |
| 12 | `theorem` | [center_le_normalizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/center-le-normalizer--a2d0c68f0d9996a9aed1eefc.md) | 102 | `result-track:a2d0c68f0d9996a9aed1eefc91c3a9e6bb454d45903eefc40a78549647c1cdbd` |
| 13 | `theorem` | [eq_of_left_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/eq-of-left-mem-center--9ee1ca78e1eb6022a2384034.md) | 113 | `result-track:9ee1ca78e1eb6022a2384034c08f0ce0e1e94082963093fdc474b8f82e5e5032` |
| 14 | `theorem` | [eq_of_right_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/eq-of-right-mem-center--2c77f9e2ce1a4ebd082094fa.md) | 116 | `result-track:2c77f9e2ce1a4ebd082094fad9040dd1a59a3f77141b11a4d5e03c482ce70aa3` |
| 15 | `theorem` | [mk_bijOn](../../../../../mathematics/Algebra/GroupTheory/Center/Variant73050f65871eb8f83fb16be359a6076c53bb9930dbd45bcd084b4a27859ab343.lean/declarations/mk-bijon--3eb65c5fe2f3f5acf3c2f0bb.md) | 123 | `result-track:3eb65c5fe2f3f5acf3c2f0bb2bcf39493445e77c51ea3d8fb97c31fdae59ea88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
