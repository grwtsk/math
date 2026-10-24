# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Substitution.Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d7a88e15f2af3856b39ffc8e00e97425ac6b8e7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d7a88e15f2af3856b39ffc8e00e97425ac6b8e7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Substitution` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Evaluation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSubst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst--7ef5d3e2b1267364d155faa1.md) | 42 | `declaration-track:7ef5d3e2b1267364d155faa1737feaabe7ce0d08425807cfc51b6e025daca7de` |
| 2 | `theorem` | [hasSubst_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-iff--59dde3ab5bfa28b43fcd2449.md) | 45 | `result-track:59dde3ab5bfa28b43fcd2449a65b0bf24a3c6de49d213aa83ffbcffebc828a74` |
| 3 | `theorem` | [HasSubst.const](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-const--3215afd4a84bfc7a5334d3e5.md) | 50 | `result-track:3215afd4a84bfc7a5334d3e588cf896de32ce1137bb2ece26051d2e7807e1e50` |
| 4 | `theorem` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-iff-haseval-of-discretetopology--54822c27b8f946829ae992f9.md) | 54 | `result-track:54822c27b8f946829ae992f998d4b8cf7250d093c60f161bf81985ff601b7fd9` |
| 5 | `theorem` | [HasSubst.hasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-haseval--02a675623b798de37af83b65.md) | 60 | `result-track:02a675623b798de37af83b6565b41e66c5c47a7f936fff9f442dfa3d1edb1f58` |
| 6 | `theorem` | [HasSubst.of_constantCoeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-of-constantcoeff-zero--46afde0720f5318814d2e63d.md) | 66 | `result-track:46afde0720f5318814d2e63dda91da3381eb86c9e086df7ad4dc9261914c2c1c` |
| 7 | `theorem` | [HasSubst.of_constantCoeff_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-of-constantcoeff-zero--fbfe417f60b792fe843f1b40.md) | 72 | `result-track:fbfe417f60b792fe843f1b400b63f6cdbf3c972d484e093c733f01fbee8eed9a` |
| 8 | `theorem` | [HasSubst.X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-x--f657d9e72415f01735220e0d.md) | 76 | `result-track:f657d9e72415f01735220e0d3a2194caa4ae10185304cbba1f84467f5cb5719c` |
| 9 | `theorem` | [HasSubst.X'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-x--6154b9651f1ec876961ccbe6.md) | 83 | `result-track:6154b9651f1ec876961ccbe688bd721d6fa9aecd44531ce027a45286408aaad1` |
| 10 | `theorem` | [HasSubst.X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-x-pow--75834db354bc52ded0a7754d.md) | 86 | `result-track:75834db354bc52ded0a7754dd43eb620a1b894584e28467b10bfed043dccc978` |
| 11 | `theorem` | [HasSubst.monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-monomial--eb934ec63a01c5f785b778dd.md) | 89 | `result-track:eb934ec63a01c5f785b778dd4aa0c6c9f6839bce3e2c04dbaf091a3434d95a1a` |
| 12 | `theorem` | [HasSubst.monomial'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-monomial--cabcfaa8200a0a8317525ea1.md) | 97 | `result-track:cabcfaa8200a0a8317525ea181ae42bd25b6d130cf6b7c59284d448b56cc9d29` |
| 13 | `theorem` | [HasSubst.zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-zero--9e00b9a9c27d876d21a8523d.md) | 101 | `result-track:9e00b9a9c27d876d21a8523d4df93d37729b412178c3a8121d450e4e55fee114` |
| 14 | `theorem` | [HasSubst.zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-zero--4e3cfe2070a3e047444e89ee.md) | 106 | `result-track:4e3cfe2070a3e047444e89ee1dcf90d4f3b08d2d6e32129398d6eec7f849bb38` |
| 15 | `theorem` | [HasSubst.add](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-add--d2d49a20beebe51f4844fca2.md) | 111 | `result-track:d2d49a20beebe51f4844fca29e9338c2bb8e97eb622d2bee35fadf93ad31b487` |
| 16 | `theorem` | [HasSubst.mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-mul-left--186ab1484e00dec73ad195ed.md) | 116 | `result-track:186ab1484e00dec73ad195ed9f38b48270a4f4ad566e281af8cf14146351d557` |
| 17 | `theorem` | [HasSubst.mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-mul-right--21987c86447da7e414bd79b9.md) | 121 | `result-track:21987c86447da7e414bd79b9e56b10bcf1795819d8366f06d785bdf135353d31` |
| 18 | `theorem` | [HasSubst.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-smul--d216a998c2d6c82ba18a9699.md) | 126 | `result-track:d216a998c2d6c82ba18a96994795f9d03156ce638177752f9d0b241f44ca302c` |
| 19 | `def` | [HasSubst.ideal](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-ideal--7c00ed691f76e521f8ab74cf.md) | 131 | `declaration-track:7c00ed691f76e521f8ab74cf1e6a002240511174e923acbb187efb5186c4f1e6` |
| 20 | `theorem` | [HasSubst.smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-smul--bfa64a6b97f3493d72eb712f.md) | 138 | `result-track:bfa64a6b97f3493d72eb712ffe2ba3b195a349fb679fc095098042fff7e19bf1` |
| 21 | `theorem` | [HasSubst.smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-smul-x--7e505bd04aa6d9b88123236b.md) | 143 | `result-track:7e505bd04aa6d9b88123236b976bd868f994675cf7593fe946e34dfcd0b3afd9` |
| 22 | `theorem` | [HasSubst.smul_X'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-smul-x--c055070ecc8f9f33189f8c1d.md) | 147 | `result-track:c055070ecc8f9f33189f8c1dd43864172adda26c38487414c2ada73ea1873d8b` |
| 23 | `def` | [subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst--64129190d31f6371d496dfee.md) | 153 | `declaration-track:64129190d31f6371d496dfee047855dc14c34ffa0820e3effe719ba9ad246110` |
| 24 | `def` | [substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom--6669237dea366b3bc982e158.md) | 160 | `declaration-track:6669237dea366b3bc982e1584a82089d3f667b7340ea7b673921be82ecce4ab1` |
| 25 | `theorem` | [coe_substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/coe-substalghom--82056099e3a6ed167b33d266.md) | 164 | `result-track:82056099e3a6ed167b33d26683c284820031002ef466cef03458045cfba297fd` |
| 26 | `theorem` | [substAlgHom_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom-eq-aeval--d7b73969be3ee8040418db97.md) | 173 | `result-track:d7b73969be3ee8040418db97649932203cc3b187ed30c7ee94270457d9ba3fad` |
| 27 | `theorem` | [subst_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-add--fee6142846793ac0e6792594.md) | 180 | `result-track:fee6142846793ac0e679259425bf1b924e7169f68984e95e3f2cc3c3040f3036` |
| 28 | `theorem` | [subst_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-pow--63e0121ea5321a1344b7674f.md) | 184 | `result-track:63e0121ea5321a1344b7674ff4300240ead7af740c03727c3049149ca376edff` |
| 29 | `theorem` | [subst_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-mul--5cad6e5a6050b868a4e0dab6.md) | 188 | `result-track:5cad6e5a6050b868a4e0dab66826c622d9c4c8edd46e819200ca385fbd689f36` |
| 30 | `theorem` | [subst_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-smul--2c36f6fb8a5703c5e7ffc841.md) | 192 | `result-track:2c36f6fb8a5703c5e7ffc84195a34e5630c3d94a385c874e7f1d5dd99daab278` |
| 31 | `theorem` | [coeff_subst_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/coeff-subst-finite--a78e401f5a7b88eda712ac1e.md) | 197 | `result-track:a78e401f5a7b88eda712ac1ee87d8b0e7f04394fbeeb6fb69ea58a4e3933f01b` |
| 32 | `theorem` | [coeff_subst_finite'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/coeff-subst-finite--6bb6ef8de447c129e628340a.md) | 207 | `result-track:6bb6ef8de447c129e628340afa1998e533618c1e5cbe42bafc72e7999a83deb8` |
| 33 | `theorem` | [coeff_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/coeff-subst--a7c7e85c144021ef4ec11e14.md) | 211 | `result-track:a7c7e85c144021ef4ec11e1463b7cb00be643f0b2e13f68e69c34cd1e3eee977` |
| 34 | `theorem` | [coeff_subst'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/coeff-subst--aedb70f81f5d182f73807707.md) | 221 | `result-track:aedb70f81f5d182f73807707732742c5f0ef3b778cb171f5e5ac694f4d35d7d4` |
| 35 | `theorem` | [constantCoeff_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/constantcoeff-subst--ca194053c461a8feb5cb6d37.md) | 227 | `result-track:ca194053c461a8feb5cb6d379b2f3b3b75439238058a4c8688913ecc7555c3c7` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/map-algebramap-eq-subst-x--f21346b10308a38c0463c3b0.md) | 232 | `result-track:f21346b10308a38c0463c3b0a4b1e56b0a4821b70c8bb8e72e2079b24c665732` |
| 37 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.HasSubst.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.Polynomial.toPowerSeries_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/root-grwtsk-algebra-commutativealgebra-hassubst-variantb799f24c08ca9d3be--5719abde1678fd75a5bcc0ae.md) | 236 | `result-track:5719abde1678fd75a5bcc0ae8f94625eca1dfbc19efa334e4ac74464cfcfe08f` |
| 38 | `theorem` | [substAlgHom_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom-coe--1265df7ed876d401396639a1.md) | 247 | `result-track:1265df7ed876d401396639a1b1271e9ea32d049c1d82464141032dc0166ec0e0` |
| 39 | `theorem` | [substAlgHom_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom-x--f2d056d5e1c4916084bbf7c1.md) | 255 | `result-track:f2d056d5e1c4916084bbf7c191cb240b2e313b3cb3a3db50b9222302e5593f26` |
| 40 | `theorem` | [subst_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-coe--5a2b935be3c845cd75bff551.md) | 259 | `result-track:5a2b935be3c845cd75bff551eb1d5589a34a7fc5a8e9533c0512b7fe1d949530` |
| 41 | `theorem` | [subst_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-x--333d364fa161d234c6581523.md) | 263 | `result-track:333d364fa161d234c65815238bcc6bc65cfb4bebdf9f2c291b01f05623a3c1ce` |
| 42 | `theorem` | [HasSubst.comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/hassubst-comp--a3501bf2c235ead620754135.md) | 267 | `result-track:a3501bf2c235ead6207541352ee7027d51d58d3af347705f8ab9ffe373588eb5` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom-comp-substalghom--170ee7d17e87f62b6faf41ce.md) | 275 | `result-track:170ee7d17e87f62b6faf41ce11c3a3ca5f982f910e6be7312b21bf074193ab21` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/substalghom-comp-substalghom-apply--68efe3d015b1ecb42ef6fbca.md) | 281 | `result-track:68efe3d015b1ecb42ef6fbca8c3c2d26dc49a9d28490907d6be2e422e77bec39` |
| 45 | `theorem` | [subst_comp_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-comp-subst--d64ebbc1391ad3d9f7f12f8a.md) | 286 | `result-track:d64ebbc1391ad3d9f7f12f8a3d35253b6a34262ea4ebda947d400ea2a757450e` |
| 46 | `theorem` | [subst_comp_subst_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/subst-comp-subst-apply--cc4f4a42efe1ea471171a7fe.md) | 290 | `result-track:cc4f4a42efe1ea471171a7fe1c448d619ebd1587ec6f88a58e1a761e7f885f9e` |
| 47 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.HasSubst.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.MvPowerSeries.rescaleUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/declarations/root-grwtsk-algebra-commutativealgebra-hassubst-variantb799f24c08ca9d3be--b64a771b0fdd3932b1ab1edd.md) | 295 | `result-track:b64a771b0fdd3932b1ab1eddc913a8f2f15b64c98527be19514b6f906ec2bd7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
