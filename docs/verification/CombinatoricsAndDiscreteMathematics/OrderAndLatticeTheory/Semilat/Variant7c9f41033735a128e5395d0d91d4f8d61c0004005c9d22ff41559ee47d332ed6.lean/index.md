# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Semilat.Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99697228e445ab7ccfb6f75c259cce2386b9381c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99697228e445ab7ccfb6f75c259cce2386b9381c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.BoundedLattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/semilatsupcat--a653035775484ebefb05dea6.md) | 26 | `declaration-track:a653035775484ebefb05dea6a3a5be88bd3b5f2de206aae17c38dc72ff331f66` |
| 2 | `structure` | [SemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/semilatinfcat--d2f5ba8fbc7fac8854baf58a.md) | 33 | `declaration-track:d2f5ba8fbc7fac8854baf58aff32e2d81296d25832849af51ebacc0cd88d67d6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--42f7c152c3d424ba540e28ec.md) | 41 | `declaration-track:42f7c152c3d424ba540e28eceea6936b88ce23bf9e64421c50f53e497021b8a1` |
| 4 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/of--fe76c8a75fd1c9169ff161cf.md) | 47 | `declaration-track:fe76c8a75fd1c9169ff161cffe9646f4da3f7e8c50344a273aea6e0aac353702` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/coe-of--fa09d5a0fa611159909ef960.md) | 50 | `result-track:fa09d5a0fa611159909ef9609589a6e5ed173eac922ed789e566237ba030a5d2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--667e8ac04c499ccc5ef8a201.md) | 53 | `declaration-track:667e8ac04c499ccc5ef8a201216a087247b49b67f4a1fa2725a1e43be7ac4fbe` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--af992cc09b5904d67d6e67f9.md) | 56 | `declaration-track:af992cc09b5904d67d6e67f9f00561a9994ce0953f9611de143186df744cbf7b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--8408f057c88747c9fc9d34c7.md) | 64 | `declaration-track:8408f057c88747c9fc9d34c79dc3a2cd964e10c4e739f80a6c17301975a66cc5` |
| 9 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/hasforgettopartord--b72223cc8e24ede91fdfc3bf.md) | 68 | `declaration-track:b72223cc8e24ede91fdfc3bf5c61c6e38b612aac43a3b186fd651d3f2b29e74f` |
| 10 | `theorem` | [coe_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/coe-forget-to-partord--9393fec66a202491b49c4004.md) | 73 | `result-track:9393fec66a202491b49c4004759436835488a1a26e1856748b928c41f527447d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--e2df2692bd6428b1d35667ba.md) | 81 | `declaration-track:e2df2692bd6428b1d35667ba46c07393ade1e9c8694bf4798ec12d7ef2c4434a` |
| 12 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/of--651cb93c65cec55ee0232733.md) | 87 | `declaration-track:651cb93c65cec55ee023273345258d10f0218ccf922641ea9e501175a607949f` |
| 13 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/coe-of--da31c4e5a92d2a6781b0c1bb.md) | 90 | `result-track:da31c4e5a92d2a6781b0c1bb2f83e99409c8257e3674d56c0395ef9d16bb2e3d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--705fdbc3865f5868ae519331.md) | 93 | `declaration-track:705fdbc3865f5868ae5193312bce0c03f53b38b68a963247b2904047e4119eb8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--8bb15436dd8e283230f3857a.md) | 96 | `declaration-track:8bb15436dd8e283230f3857aaa04e22dfedb4002c15aaf19e010a53a805ae3ab` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/instance--76bd6b4b0de052dffdb4cbb2.md) | 104 | `declaration-track:76bd6b4b0de052dffdb4cbb22988304e31eec99c63885f4e0a61cae7032c2404` |
| 17 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/hasforgettopartord--b2c5bd6496532fce2b59b93c.md) | 108 | `declaration-track:b2c5bd6496532fce2b59b93cb9de45141ec2976411d3ed2919a7f81086858506` |
| 18 | `theorem` | [coe_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/coe-forget-to-partord--e8782438abde8439e6936c10.md) | 113 | `result-track:e8782438abde8439e6936c10a4581b9071315260dedc1e3abf825515e624de92` |
| 19 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/iso-mk--28004873f87892fbff50f9d4.md) | 125 | `declaration-track:28004873f87892fbff50f9d4a3412d9184e8b6b4b5dd0a12c3657b760b8b6dae` |
| 20 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/dual--d254c67381025035c77da77a.md) | 133 | `declaration-track:d254c67381025035c77da77a08a8427ba4a470734af284b886d942b3d96ef3a0` |
| 21 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/iso-mk--18cc2d7a0600694985ac24b7.md) | 143 | `declaration-track:18cc2d7a0600694985ac24b77a51d673ad6094208b4ed3af976a32e8ca850a45` |
| 22 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/dual--b6c628a649d32ce55a1fed78.md) | 151 | `declaration-track:b6c628a649d32ce55a1fed78b12b2c6885dab12eab66a4e2048799c74f2481ab` |
| 23 | `def` | [SemilatSupCatEquivSemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/semilatsupcatequivsemilatinfcat--1c85375ae1bb79f97be0d235.md) | 159 | `declaration-track:1c85375ae1bb79f97be0d2350afcd9bbb955273efc0728ec9dd8c7be8c6fbbe9` |
| 24 | `theorem` | [SemilatSupCat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/semilatsupcat-dual-comp-forget-to-partord--5c1ff84c061aa6b2f4d39dd0.md) | 165 | `result-track:5c1ff84c061aa6b2f4d39dd0ff848af25bccb591e4633245aff87f5953265214` |
| 25 | `theorem` | [SemilatInfCat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant7c9f41033735a128e5395d0d91d4f8d61c0004005c9d22ff41559ee47d332ed6.lean/declarations/semilatinfcat-dual-comp-forget-to-partord--4c4f002efac8642a99412fb7.md) | 170 | `result-track:4c4f002efac8642a99412fb7d9acc86756c30b0ac9853b2074adca732838cb7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
