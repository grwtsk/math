# Verification target: GRWTSK.Algebra.Opposite.Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "572fa6888e3625b9c4169a8c8e1917afc8e443d6",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `572fa6888e3625b9c4169a8c8e1917afc8e443d6`.

Source path: `GRWTSK/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instdistrib--aa3ae515bf04ea6a96962c45.md) | 18 | `declaration-track:aa3ae515bf04ea6a96962c45d509f07a942854c85d5448e21faaf9d263d6bac1` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalnonassocsemiring--cfcd1c03f9938c1ed1d9726b.md) | 22 | `declaration-track:cfcd1c03f9938c1ed1d9726b1d95c251b5a26e4d9f5ed3f7584757fa727c317d` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalsemiring--49887e7fe175f0434bc8a638.md) | 28 | `declaration-track:49887e7fe175f0434bc8a63888967eb655a98344e4990a0b4fc0560f2c9b68a6` |
| 4 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonassocsemiring--3f7e45461005fa0d6ca07af0.md) | 32 | `declaration-track:3f7e45461005fa0d6ca07af0632789db6f7d1e5424cf9172edcc64cd99c29f0b` |
| 5 | `instance` | [instSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instsemiring--6dc0f2f4eb8d98c5fc879688.md) | 37 | `declaration-track:6dc0f2f4eb8d98c5fc8796880c3c78ad2be08cb267d46cdb0a1f9e7bf38c0797` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalcommsemiring--1a5798f00b41bce94bb95e62.md) | 42 | `declaration-track:1a5798f00b41bce94bb95e62d83614e9a091d63e7132576c2d20dd8a938f97f0` |
| 7 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instcommsemiring--2e5319b2115922ea5118feff.md) | 46 | `declaration-track:2e5319b2115922ea5118feff5405889c85bf82b06bd9928f66b8d04e245ab790` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalnonassocring--6b39350a5ad7175e35e74c35.md) | 50 | `declaration-track:6b39350a5ad7175e35e74c35cb0c53700a0ff6cf6bf7b98fb556bcabddc8453c` |
| 9 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalring--c19e5038bb95e6455350dbd8.md) | 54 | `declaration-track:c19e5038bb95e6455350dbd800f1e36cdebc5a15204182718c16a1d3ea79ef8f` |
| 10 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonassocring--dda163208f8674d87436b315.md) | 58 | `declaration-track:dda163208f8674d87436b31555703df9b475996945c223c1927471f99cd17c06` |
| 11 | `instance` | [instRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instring--1ab19ee4e43eb4f1c5467c59.md) | 63 | `declaration-track:1ab19ee4e43eb4f1c5467c59f848cf7125aa11b48807cc415f3cf99173946abb` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalcommring--817dd80faa7bb896cea02507.md) | 67 | `declaration-track:817dd80faa7bb896cea02507ed96fc8fb138843e5c9f2c4560be75a0840b1b32` |
| 13 | `instance` | [instCommRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instcommring--7ae0fb8e372ff52afcebbc0c.md) | 71 | `declaration-track:7ae0fb8e372ff52afcebbc0c5ed4668c95a69cee6582f1ef1b3f5a84a827e44f` |
| 14 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instisdomain--f1ff3782e61d9fccdc0f43e5.md) | 75 | `declaration-track:f1ff3782e61d9fccdc0f43e54fa170b9fdb17cade4c3eeb2685ac0dec6893435` |
| 15 | `instance` | [instDistrib](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instdistrib--2d666f73925607b2ff7be5a2.md) | 82 | `declaration-track:2d666f73925607b2ff7be5a2e7851b946d534b0c60c4a9c507fd774544e55b7a` |
| 16 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalnonassocsemiring--be58991eafdace793820cdb4.md) | 86 | `declaration-track:be58991eafdace793820cdb4e24a0f74ffd7c572c9b3a116842209604b303942` |
| 17 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalsemiring--c75b4f9a3923b44933f23304.md) | 92 | `declaration-track:c75b4f9a3923b44933f2330413dbd2b174a8f309d81078653804397314986b8c` |
| 18 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonassocsemiring--dd2fdda0e480a6440115c998.md) | 96 | `declaration-track:dd2fdda0e480a6440115c99870e9e976c30709e6bfe16724652c4667f07559e7` |
| 19 | `instance` | [instSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instsemiring--a8c2459d7fab397bd82d5e0e.md) | 101 | `declaration-track:a8c2459d7fab397bd82d5e0e74a5804d3d38cf80cc5aa09310c52b76f1960028` |
| 20 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalcommsemiring--a852c1d3c30a808ac20823e8.md) | 106 | `declaration-track:a852c1d3c30a808ac20823e83621d794b733c8480f31b0d2350c6668916849ad` |
| 21 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instcommsemiring--884d9f77368c8e2e8570b3e8.md) | 110 | `declaration-track:884d9f77368c8e2e8570b3e8b1bfb5fce39b7763da6c48cbb0bab7ff42004e39` |
| 22 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalnonassocring--a788356b8ac76887e026fc15.md) | 114 | `declaration-track:a788356b8ac76887e026fc15670db756dd727eed21424e44ddfe4223ff8f60c9` |
| 23 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalring--585d74ec59403b8be2ee012c.md) | 118 | `declaration-track:585d74ec59403b8be2ee012cb6d0c473be4dc1720d4dc7e0ab99d199a2b2113a` |
| 24 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonassocring--39b124332178d61621ce47dc.md) | 122 | `declaration-track:39b124332178d61621ce47dc5111cf15f4bca6eec4a8f170c563497bf6f2d0c5` |
| 25 | `instance` | [instRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instring--ec58632d432a72ee0ff5ef85.md) | 127 | `declaration-track:ec58632d432a72ee0ff5ef855180bffa5350c4443c4c481bdc1356fe48716b53` |
| 26 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instnonunitalcommring--ef4fb1bd9b66a30aa4e1ef35.md) | 131 | `declaration-track:ef4fb1bd9b66a30aa4e1ef35beded464676f6a2e1acec9b7cd16375e374a83be` |
| 27 | `instance` | [instCommRing](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instcommring--7a56e89302c53aa5aa6125e2.md) | 135 | `declaration-track:7a56e89302c53aa5aa6125e23660a58892bde15ab8f8e40933f41703d2ac764c` |
| 28 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/instisdomain--4c7ec4c9358e56cb711c5f71.md) | 139 | `declaration-track:4c7ec4c9358e56cb711c5f7107cc118657c1b91ec09d2046f8692f6881378d08` |
| 29 | `def` | [NonUnitalRingHom.toOpposite](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/nonunitalringhom-toopposite--e7a1487533733e248fa0fd31.md) | 149 | `declaration-track:e7a1487533733e248fa0fd3164504e6456dc48aaeb18a968077ed94315347f2e` |
| 30 | `def` | [NonUnitalRingHom.fromOpposite](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/nonunitalringhom-fromopposite--50565b8737a15156e11f73bb.md) | 157 | `declaration-track:50565b8737a15156e11f73bbe944525b200a8bfa38de3269902d0883143732ff` |
| 31 | `def` | [NonUnitalRingHom.op](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/nonunitalringhom-op--703740de5fbbf10001f2d0e3.md) | 165 | `declaration-track:703740de5fbbf10001f2d0e3e75da101b1958f4c6199e507ded907fc2b9cc94a` |
| 32 | `def` | [NonUnitalRingHom.unop](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/nonunitalringhom-unop--6275a68e162ecdf111510d8c.md) | 175 | `declaration-track:6275a68e162ecdf111510d8ca9203388e19c5657499463bdb24d475a4baecb72` |
| 33 | `def` | [RingHom.toOpposite](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/ringhom-toopposite--6f6775172ed56e78ceec128d.md) | 182 | `declaration-track:6f6775172ed56e78ceec128dd0c8d60e47ce5a7bcd395666cc46c2e0ff1892c3` |
| 34 | `def` | [RingHom.fromOpposite](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/ringhom-fromopposite--56081ef5edf0c3bfc96d7aed.md) | 190 | `declaration-track:56081ef5edf0c3bfc96d7aed23fe73ca1cf7fe1ce22ebc82138fd38b95463a63` |
| 35 | `def` | [RingHom.op](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/ringhom-op--49a20927c33033e92881a1a8.md) | 198 | `declaration-track:49a20927c33033e92881a1a8965d1c6e03023eb019f0405c87ef88c5a6f09314` |
| 36 | `def` | [RingHom.unop](../../../../mathematics/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/declarations/ringhom-unop--f0c27036bd32b8f56719d82a.md) | 207 | `declaration-track:f0c27036bd32b8f56719d82abb9e9dd8ec88f3511cd59d45a3c0bda6c7d39468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
