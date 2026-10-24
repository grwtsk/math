# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c3dd1dcd53fdc8f7ccfebd9eaff3e06f4c9d560",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c3dd1dcd53fdc8f7ccfebd9eaff3e06f4c9d560`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor--37736319424d0ec6ee67a2e7.md) | 48 | `declaration-track:37736319424d0ec6ee67a2e7e094d6ca7addf283e8b662b26030b1ee60a0410f` |
| 2 | `lemma` | [contract_delete_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/contract-delete-isminor--466230f8489d5a0ebb3c3d6c.md) | 54 | `result-track:466230f8489d5a0ebb3c3d6c076a7810d4ac1d1f236a1469f615c5d487b9b85e` |
| 3 | `lemma` | [IsMinor.exists_eq_contract_delete_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-exists-eq-contract-delete-disjoint--6b5a4d32f77c4ff3378b5629.md) | 57 | `result-track:6b5a4d32f77c4ff3378b5629d9b6efcc6a85d855dd87c2b5a7edd67d12186468` |
| 4 | `def` | [IsStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor--5ae1421b44e8238dd612084e.md) | 67 | `declaration-track:5ae1421b44e8238dd612084e5208b4983001b29c1d332aec48c2e03e10edf5c2` |
| 5 | `lemma` | [IsMinor.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-subset--a26c89e016bcaf2c4c4875ee.md) | 72 | `result-track:a26c89e016bcaf2c4c4875ee393006fdfcbfbeda8b26160e42628eb8be4f152a` |
| 6 | `lemma` | [IsMinor.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-refl--b37ccd8d566d30526d84c44f.md) | 76 | `result-track:b37ccd8d566d30526d84c44f1ad48b59b5870d94d1591243ebd32a5e1ac5362b` |
| 7 | `lemma` | [IsMinor.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-trans--3571b2d6439ab3e62c9c24a6.md) | 78 | `result-track:3571b2d6439ab3e62c9c24a6c5278bbb6e2d52446de105a4a4e8a7b287039977` |
| 8 | `lemma` | [IsMinor.eq_of_ground_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-eq-of-ground-subset--3b0aa527ed023f71e5cf759a.md) | 83 | `result-track:3b0aa527ed023f71e5cf759aa5cce0d35ff55268ca9959d7fb134645082fb27d` |
| 9 | `lemma` | [IsMinor.antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-antisymm--c7e8056c3603918b7712b335.md) | 89 | `result-track:c7e8056c3603918b7712b335548c6d7bb4da2634ad89a38c4e0e852804ad70ef` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/instance--08fe5dd1676926399977bee8.md) | 94 | `declaration-track:08fe5dd1676926399977bee8a55f4d10eb97b925266f988b06bcab277748dfd4` |
| 11 | `lemma` | [IsMinor.le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-le--3eba5271a6bf59faeb2fd767.md) | 101 | `result-track:3eba5271a6bf59faeb2fd767f43cae76aebdc138029da1cafea5081af71b8a0d` |
| 12 | `lemma` | [IsStrictMinor.lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-lt--bd73ceb0557966f335dba29e.md) | 103 | `result-track:bd73ceb0557966f335dba29e705c9fd325a1e0ba4081cd0c59e1a61e51bb282d` |
| 13 | `lemma` | [le_eq_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/le-eq-isminor--fac56f36b5ce8b028880c383.md) | 106 | `result-track:fac56f36b5ce8b028880c3835baa3eb68ef3380d373cbee7cef7a1546cfae4c0` |
| 14 | `lemma` | [lt_eq_isStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/lt-eq-isstrictminor--b7abfe443545202d703e6ccc.md) | 109 | `result-track:b7abfe443545202d703e6cccf88e1f92abc3d18e0b45d740f42c4be01e9957d3` |
| 15 | `lemma` | [isStrictMinor_iff_isMinor_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-iff-isminor-ne--49ecc2a564a9ac071bc4aae6.md) | 111 | `result-track:49ecc2a564a9ac071bc4aae6fccdb0639e804a0a09d4e7ba50f04bb7eb7d534f` |
| 16 | `lemma` | [IsStrictMinor.ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-ne--47e0bc921d41751d34f413c9.md) | 114 | `result-track:47e0bc921d41751d34f413c980c20cd7a2cb6fee499d186fd2606d9e34868f49` |
| 17 | `lemma` | [isStrictMinor_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-irrefl--c206318756ffe82f608f4b1b.md) | 117 | `result-track:c206318756ffe82f608f4b1b4e3dcec2c13e288026c1bc51634273155aad967d` |
| 18 | `lemma` | [IsStrictMinor.isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-isminor--23e0eefe39d701c37b385775.md) | 120 | `result-track:23e0eefe39d701c37b385775820e17b5b3f8533e1fad8701587291632c0c1d20` |
| 19 | `lemma` | [IsStrictMinor.not_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-not-isminor--e21f2ec94d668e2b266f0cba.md) | 123 | `result-track:e21f2ec94d668e2b266f0cbaf40d2150d3c892de80731acfde9bec45e6b79199` |
| 20 | `lemma` | [IsStrictMinor.ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-ssubset--9b9a0bdb7e442b6ef51e5276.md) | 126 | `result-track:9b9a0bdb7e442b6ef51e52760c7ae95f1a26c804675f29322f09c9bbb71feed3` |
| 21 | `lemma` | [isStrictMinor_iff_isMinor_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-iff-isminor-ssubset--97d38945f2e16e3eb6343bec.md) | 129 | `result-track:97d38945f2e16e3eb6343bec826f3c3e13bfff1a3bd4e5993d1811cfd112eb60` |
| 22 | `lemma` | [IsStrictMinor.trans_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-trans-isminor--a16d4f85f12821e37cda2588.md) | 132 | `result-track:a16d4f85f12821e37cda2588f0e2d8104d564cd437dea8fe55bc62507d69ac42` |
| 23 | `lemma` | [IsMinor.trans_isStrictMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isminor-trans-isstrictminor--023c28837c726245f58a391f.md) | 135 | `result-track:023c28837c726245f58a391f363a804fbe071b88b00279a8fd676483ac09bc94` |
| 24 | `lemma` | [IsStrictMinor.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isstrictminor-trans--bade6afbeb755df74c0bac42.md) | 138 | `result-track:bade6afbeb755df74c0bac42d4c35c0f1a9427a312f1b1b6d3ea28d36c94e157` |
| 25 | `lemma` | [Indep.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/indep-of-isminor--f5f060b54078d3aff9a68afd.md) | 141 | `result-track:f5f060b54078d3aff9a68afd348e050eb71524b693ab4c655025c7ba9a62b461` |
| 26 | `lemma` | [IsNonloop.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isnonloop-of-isminor--1c15634d62b3eb12752aefee.md) | 145 | `result-track:1c15634d62b3eb12752aefee4688f1a8dae8c026931fe88aa7e57b435207ef62` |
| 27 | `lemma` | [Dep.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/dep-of-isminor--a5c51fd9ea1f1f27d96e21c3.md) | 149 | `result-track:a5c51fd9ea1f1f27d96e21c39fb3ecb8639874f6611fde8176895360c166679f` |
| 28 | `lemma` | [IsLoop.of_isMinor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant434f51c9d1532b4837f9876520cc0b1e7ac9968fb71488c5e16a40f9e592eb5c.lean/declarations/isloop-of-isminor--fcd8d397f834f754c3358ad8.md) | 152 | `result-track:fcd8d397f834f754c3358ad8ade1caa51df3b7c6929959086eea24b49fae94e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
