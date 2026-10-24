# Verification target: GRWTSK.Algebra.GroupTheory.ULift.Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0814ba3858c091295fb63c80a5949f83f25b5a9",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0814ba3858c091295fb63c80a5949f83f25b5a9`.

Source path: `GRWTSK/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/one--be1c979ef3aa8a6de90b42dd.md) | 38 | `declaration-track:be1c979ef3aa8a6de90b42dd787f00bdaf063ea76851f961912bf3177a9ac25c` |
| 2 | `theorem` | [one_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/one-down--a56600e6d6fb5de10bb2e84b.md) | 44 | `result-track:a56600e6d6fb5de10bb2e84be192226dad5143bfaa5b24126cdaf27a8ebd8fcf` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/mul--f4545fbce2c835997cf063e3.md) | 50 | `declaration-track:f4545fbce2c835997cf063e3f1ffe4008e50820440668eb4b333894bf2ed020c` |
| 4 | `theorem` | [mul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/mul-down--d9f8773ebe3cec3f8b08f4e3.md) | 56 | `result-track:d9f8773ebe3cec3f8b08f4e36879a614e45a0997606c8898bc17a161e00719c8` |
| 5 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/div--8cc2084106fe41936fbc5a7b.md) | 62 | `declaration-track:8cc2084106fe41936fbc5a7bbce588d0572ccff245a48a5f8a7ba09b8486d5ea` |
| 6 | `theorem` | [div_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/div-down--4d4c09ec30afdc20cc2175ef.md) | 68 | `result-track:4d4c09ec30afdc20cc2175ef7c1445afbe29ada5b17edabb9f0eeac133fb4acb` |
| 7 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/inv--46ab5ed5e81cc0472a461ec9.md) | 74 | `declaration-track:46ab5ed5e81cc0472a461ec965edfb4ef899f613f33fdbc786583bba61feeed3` |
| 8 | `theorem` | [inv_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/inv-down--a49d47597db0149344732f0b.md) | 80 | `result-track:a49d47597db0149344732f0b43d90619f222d047341642831aa6292a8fc13c37` |
| 9 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/smul--7b86d5d519854ee98e58b503.md) | 86 | `declaration-track:7b86d5d519854ee98e58b503d096028646f48083b540765779709d3997e1901c` |
| 10 | `theorem` | [smul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/smul-down--21a5555d8d41508a264a07c4.md) | 92 | `result-track:21a5555d8d41508a264a07c4259a2f605028dbab05f98e543d59007761e787af` |
| 11 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/pow--284387db30a9ad0bdec4d7ba.md) | 98 | `declaration-track:284387db30a9ad0bdec4d7ba01b888e94b18516ae377c2cccab8aabf0f51685d` |
| 12 | `theorem` | [pow_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/pow-down--ae59f75a8aae72af931555fc.md) | 103 | `result-track:ae59f75a8aae72af931555fca755764e7c7b8858eb724172669cb6643b802e93` |
| 13 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.OneDown.Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.MulEquiv.ulift](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/root-grwtsk-algebra-grouptheory-onedown-variant409475013b1db6550562991f0--3f57ec31027e416228713fee.md) | 110 | `declaration-track:3f57ec31027e416228713feebfcf4b0733ae9be95fc979d6e5a616da23cff27f` |
| 14 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/semigroup--7b7f1f14703facdf3625c12c.md) | 116 | `declaration-track:7b7f1f14703facdf3625c12c2e2f5abb4bda103def9da2c76ea47d8b91233fd4` |
| 15 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/addsemigroup--a6a964972552f6a699e33eab.md) | 120 | `declaration-track:a6a964972552f6a699e33eabcb4513a960c557b37305b57507a20814ebafbad9` |
| 16 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/commsemigroup--938776a35fa2389a5de77d73.md) | 126 | `declaration-track:938776a35fa2389a5de77d73c2c79de373f981516572822ab72f5c5c88a185eb` |
| 17 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/muloneclass--d5590813822f48838b4afcd2.md) | 132 | `declaration-track:d5590813822f48838b4afcd24389063046abda8e15587ef14dc612802031d800` |
| 18 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/mulzerooneclass--0b5359d349df0c2c944d03de.md) | 137 | `declaration-track:0b5359d349df0c2c944d03dead6936e5ad6c1fa5345561cde4f6df52590dbded` |
| 19 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/monoid--8cbc4cb53bfcf92e8ce05763.md) | 142 | `declaration-track:8cbc4cb53bfcf92e8ce05763104b54dd39ea17b59cbf478af29ccab7d17080c1` |
| 20 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/commmonoid--2ff176ceff29649354a40f97.md) | 148 | `declaration-track:2ff176ceff29649354a40f973430e5fbeb7038660b845424d43bbd95a4f9eb2b` |
| 21 | `instance` | [natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/natcast--82d52b48667ee1d7b45363c1.md) | 153 | `declaration-track:82d52b48667ee1d7b45363c1b013d2297586a12bd539a56b23797fa95c0eccfe` |
| 22 | `instance` | [intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/intcast--95a3eb1c9e8abf05f4126659.md) | 155 | `declaration-track:95a3eb1c9e8abf05f412665981ae08f46086c4f947dece7be1409f04a8722120` |
| 23 | `theorem` | [up_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/up-natcast--c6d77987d3bd3db32e1b337a.md) | 159 | `result-track:c6d77987d3bd3db32e1b337af7486275d4dfe7a96902099bb7c3b3b11a141692` |
| 24 | `theorem` | [up_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/up-intcast--df72589c7e19ec4e58e70518.md) | 164 | `result-track:df72589c7e19ec4e58e70518c6327a041e3e1c96dca9147e4bfd966a4aca74b0` |
| 25 | `theorem` | [down_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/down-natcast--ec27675d52df2f1189cb5e56.md) | 169 | `result-track:ec27675d52df2f1189cb5e56a164782d848c352ab9da90df9f2b2f36ed5bef92` |
| 26 | `theorem` | [down_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/down-intcast--c449cf4a15a1c32863d5dbe2.md) | 174 | `result-track:c449cf4a15a1c32863d5dbe245de8d45dc3f1ced56ef7089ec6b44b8358bc593` |
| 27 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/addmonoidwithone--2fa991af9794905ee02bc4a8.md) | 178 | `declaration-track:2fa991af9794905ee02bc4a853e789a90c193a12d12359b8803ac82eab187fe9` |
| 28 | `instance` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/addcommmonoidwithone--47655e89cb20b34d2faaef72.md) | 185 | `declaration-track:47655e89cb20b34d2faaef7234b7f9874ecf45569ab765fa5a39d4f64a4087c3` |
| 29 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/monoidwithzero--0b33cd4a4ce75238cc2c07c4.md) | 189 | `declaration-track:0b33cd4a4ce75238cc2c07c496abec303933cdd5b5f3003be6dc8bb925c467c4` |
| 30 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/commmonoidwithzero--d4a6969f36dbd25c141c2529.md) | 193 | `declaration-track:d4a6969f36dbd25c141c25294a039ffd181c24f8d79e7e125da606de59f5e283` |
| 31 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/divinvmonoid--8d8902014fcb3fab1fc2482c.md) | 198 | `declaration-track:8d8902014fcb3fab1fc2482c210772e13fa2573867a8b33eb831d99cbc7f7730` |
| 32 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/group--2cd502b6a35ff7e05d88519d.md) | 205 | `declaration-track:2cd502b6a35ff7e05d88519d95fa1be6ced36c4491896d3fde5fedfaaea57877` |
| 33 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/commgroup--93760c14642abad44976f42f.md) | 212 | `declaration-track:93760c14642abad44976f42f4ffbfc6ce7c66792e1ed92ec63a4febf55f94197` |
| 34 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/addgroupwithone--3428fc46bc61da91536c0b33.md) | 218 | `declaration-track:3428fc46bc61da91536c0b33e40c9a79f6d26be76d96b8a3410cc8207a4b0a6a` |
| 35 | `instance` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/addcommgroupwithone--86b740dec605b655c1037547.md) | 225 | `declaration-track:86b740dec605b655c1037547de647ce4ea259294e2abd769c9742a62e16ea14d` |
| 36 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/groupwithzero--ebd2e3929f8327a18619b0e4.md) | 229 | `declaration-track:ebd2e3929f8327a18619b0e46592c973f0fb08152cd197f744cb4aff18facc6d` |
| 37 | `instance` | [commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/commgroupwithzero--e702cd3aa5ef38ff56e702e0.md) | 234 | `declaration-track:e702cd3aa5ef38ff56e702e09f6883492616828904d8a2149def9a7ffff847db` |
| 38 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/leftcancelsemigroup--788bd770e29701b4bc9ff947.md) | 240 | `declaration-track:788bd770e29701b4bc9ff947b8d90135beb9017d89dc355a0e068a3d51f7f242` |
| 39 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/rightcancelsemigroup--9ec2516ee66ccf525c770bd7.md) | 246 | `declaration-track:9ec2516ee66ccf525c770bd73dd2174919c82c6b51cc015bd1426a0d4c3379f2` |
| 40 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/leftcancelmonoid--5200e8abbe250dd5e7534a49.md) | 252 | `declaration-track:5200e8abbe250dd5e7534a49cef69c77068cc48abcadb2e65a291e69566ecc8b` |
| 41 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/rightcancelmonoid--1151b462c730ce7d170ad5c4.md) | 258 | `declaration-track:1151b462c730ce7d170ad5c44e6ec6ce601c4d0aa0bf2bd4a28dac7289c0940d` |
| 42 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/cancelmonoid--925ada54a5fab0d6c8b22a24.md) | 264 | `declaration-track:925ada54a5fab0d6c8b22a2453110f1b8040a90124772ab8e89c428cfdb016a0` |
| 43 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/cancelcommmonoid--f3df1324fa05028ebabcacbf.md) | 270 | `declaration-track:f3df1324fa05028ebabcacbfcb747634b86a204b0d58b0656a0cc41b75ed7f73` |
| 44 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant43614884d424ab1a8a7fef6b97fa2399ef3c13b756bf8b62e2f76e686af13d55.lean/declarations/nontrivial--3a8747572e3a0edc986d5465.md) | 275 | `declaration-track:3a8747572e3a0edc986d54651794abc82185191d9e8a2f405966fb38a46e2eaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
