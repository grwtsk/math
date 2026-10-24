# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10044ebd4c58bcb3ce5c8908c689c1976cbea7d4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10044ebd4c58bcb3ce5c8908c689c1976cbea7d4`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-inv-right--41f107ed057d6e3384f66094.md) | 32 | `result-track:41f107ed057d6e3384f66094c0de21da9152af98aa5fe8b4b6d1643ddb74ddb9` |
| 2 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-inv-right-iff--c9e15f69c29ebeec0cd5c64e.md) | 36 | `result-track:c9e15f69c29ebeec0cd5c64ed9c3bb07d5b723c87a26f7adb078a20297577e3c` |
| 3 | `theorem` | [units_inv_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-inv-left--e6e5252409f2b524447189b9.md) | 40 | `result-track:e6e5252409f2b524447189b97afd88958563f27d145b88ce0fc8f3e2d904328d` |
| 4 | `theorem` | [units_inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-inv-left-iff--7952c4b80bfe6c43cda79855.md) | 44 | `result-track:7952c4b80bfe6c43cda79855144888fa58498b9c000ae8329ba3e9d288e95b46` |
| 5 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-val--f0fc8766608a53c6d77147ac.md) | 48 | `result-track:f0fc8766608a53c6d77147acae39136d2a55e5446636b9e59621b0f1195ee5f9` |
| 6 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-of-val--004af578297315d2eabab722.md) | 52 | `result-track:004af578297315d2eabab722728ccffc71be167552230f95b4183476ab24b445` |
| 7 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-val-iff--c0ea4b751a022dbc4eaa5878.md) | 56 | `result-track:c0ea4b751a022dbc4eaa58781c2d480d66b5052b66bf7c9a06f16a16c5e11a08` |
| 8 | `def` | [Units.leftOfMul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-leftofmul--013e999c961e7e226186b8e7.md) | 64 | `declaration-track:013e999c961e7e226186b8e74328c19c651e8f34bafa5fcfdc388e09f24bc3b3` |
| 9 | `def` | [Units.rightOfMul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-rightofmul--86fbf09c556247c5ac97d1ac.md) | 75 | `declaration-track:86fbf09c556247c5ac97d1ac31e0a26cdc09d4d2c79f95c6540181c7b929b762` |
| 10 | `theorem` | [Commute.isUnit_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/commute-isunit-mul-iff--af6dd861167c94ef437af44c.md) | 79 | `result-track:af6dd861167c94ef437af44c31e94321dcb8dad8a10dc5193575478bf902f324` |
| 11 | `theorem` | [isUnit_mul_self_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/isunit-mul-self-iff--594917438599c8a5c9575509.md) | 84 | `result-track:594917438599c8a5c957550955344a96cf0e927773a8aed0286faac75448f89f` |
| 12 | `lemma` | [Commute.units_zpow_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/commute-units-zpow-right--0318ef1f2ffa4c71266120cd.md) | 88 | `result-track:0318ef1f2ffa4c71266120cddd77a749d4011de9ae93e2d07a3193be21ee9e4d` |
| 13 | `lemma` | [Commute.units_zpow_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/commute-units-zpow-left--fd1039ad5ec2b9dffb11d74b.md) | 92 | `result-track:fd1039ad5ec2b9dffb11d74b642e697eab229168e774ba5c95784bcdce28463a` |
| 14 | `def` | [Units.ofPow](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-ofpow--425b50f30d41368aed4e52b3.md) | 97 | `declaration-track:425b50f30d41368aed4e52b38aca48f14a61436640b5a77ba8e47ab938dcb441` |
| 15 | `lemma` | [isUnit_pow_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/isunit-pow-iff--d483c7dde28f5881e3e8a522.md) | 102 | `result-track:d483c7dde28f5881e3e8a52267ea92cc8315af9fb34925e94e455d025d9e97be` |
| 16 | `lemma` | [isUnit_pow_succ_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/isunit-pow-succ-iff--962c92b4ec1bdcfea3c01552.md) | 106 | `result-track:962c92b4ec1bdcfea3c01552430b586bd455e769e693e0fd091d7f09495406b5` |
| 17 | `lemma` | [isUnit_pow_iff_of_not_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/isunit-pow-iff-of-not-isunit--2982412fcb8eb51f0b5ffb40.md) | 108 | `result-track:2982412fcb8eb51f0b5ffb401d27c03032caa41751cf2eed6a5fc752484903ce` |
| 18 | `def` | [Units.ofPowEqOne](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-ofpoweqone--72f508ee021e71fbbd581d00.md) | 115 | `declaration-track:72f508ee021e71fbbd581d0028a21d3d9ac39d5032617dab5827cc84b8fb4e71` |
| 19 | `lemma` | [Units.pow_ofPowEqOne](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/units-pow-ofpoweqone--f644d4c26bb5502f117a2c1c.md) | 118 | `result-track:f644d4c26bb5502f117a2c1c6c4853c52b1e0a416df8ca7dd8a8e25017753f2a` |
| 20 | `lemma` | [IsUnit.of_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/isunit-of-pow-eq-one--f900a62ab8cdddd9585399e4.md) | 122 | `result-track:f900a62ab8cdddd9585399e4c572edc75bd8ebf28783ec067b0c5e8029806ff1` |
| 21 | `lemma` | [Commute.div_eq_div_iff_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantee3d4971ada04f3c217c6a5d121ad167e0930fe4bf464def54febd38a3bf001e.lean/declarations/commute-div-eq-div-iff-of-isunit--cfd8b6bed2e804f3b56a5386.md) | 134 | `result-track:cfd8b6bed2e804f3b56a5386c01741b67c5f59b5eef8e3d3e649bac1110f6528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
