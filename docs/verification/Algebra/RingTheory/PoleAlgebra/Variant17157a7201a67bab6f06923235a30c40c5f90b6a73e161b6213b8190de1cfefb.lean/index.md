# Verification target: GRWTSK.Algebra.RingTheory.PoleAlgebra.Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3edf29141d6f5209aed678776ee54af197057891",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3edf29141d6f5209aed678776ee54af197057891`.

Source path: `GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.JacobsonObservation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleQuadratic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polequadratic--150604907dbe70b99406ef83.md) | 44 | `declaration-track:150604907dbe70b99406ef8386f2a604b613319021dbb83908d944660da32aa4` |
| 2 | `def` | [PolePolynomial](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polepolynomial--c3101662557f7190637771ed.md) | 47 | `declaration-track:c3101662557f7190637771ed11b7e56a8164b0fead30863505cf3f0a55080603` |
| 3 | `abbrev` | [PoleOperatorAlgebra](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/poleoperatoralgebra--9fe3cb556bafa9d3910aba3b.md) | 50 | `declaration-track:9fe3cb556bafa9d3910aba3bba691ac99b841f2d17329c227d52a89cf4de8106` |
| 4 | `def` | [poleInfinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/poleinfinitesimal--ceca5e6e2055234e432d7706.md) | 53 | `declaration-track:ceca5e6e2055234e432d770692350e35d89bcbe35f3a9d82d837b28f5f861188` |
| 5 | `theorem` | [pole_quadratic_factorization](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-quadratic-factorization--cf31b907453770525d5a6df9.md) | 56 | `result-track:cf31b907453770525d5a6df908d9f952d18e6d9b33746c5364ddad3a9e89baeb` |
| 6 | `theorem` | [pole_polynomial_factorization](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-polynomial-factorization--77a787e450830a8cc5e079ee.md) | 68 | `result-track:77a787e450830a8cc5e079eef139ff0df88e98b7b3fda087643030aaf96f9103` |
| 7 | `theorem` | [pole_quadratic_monic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-quadratic-monic--cc82a7eaa301421a3e88aaac.md) | 72 | `result-track:cc82a7eaa301421a3e88aaac120f35bf38de23b01d49cce7f858e762a69eae27` |
| 8 | `theorem` | [pole_polynomial_monic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-polynomial-monic--76645784a84518124ba1fd4f.md) | 75 | `result-track:76645784a84518124ba1fd4f428a5e15e79d1bfd833bb154413821a2dceb6736` |
| 9 | `theorem` | [pole_quadratic_degree](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-quadratic-degree--785957c3437d653297ad5384.md) | 77 | `result-track:785957c3437d653297ad53847a4fa5b07358ca7820370bdb6411f7db6a6ad2be` |
| 10 | `theorem` | [pole_polynomial_degree](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-polynomial-degree--0cd9bc23ffb08858b95dc349.md) | 80 | `result-track:0cd9bc23ffb08858b95dc34917f809a7843f2fbbd5f56f85bbc602d97ba87b2d` |
| 11 | `theorem` | [pole_infinitesimal_eq_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-infinitesimal-eq-mk--0674f74f370aea20a43f3169.md) | 84 | `result-track:0674f74f370aea20a43f31693f0c0a113f382ff6517fa3df78356521f8c3d62d` |
| 12 | `theorem` | [pole_infinitesimal_sq](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-infinitesimal-sq--7c72934fdc67d4f90c4fe850.md) | 88 | `result-track:7c72934fdc67d4f90c4fe8509e7fa1ffabb03025beb3bdb95f6ae28a86ed4c7d` |
| 13 | `theorem` | [pole_infinitesimal_ne_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-infinitesimal-ne-zero--fdfb7fffc34ce8167049c981.md) | 91 | `result-track:fdfb7fffc34ce8167049c981c4d0f6026716eb4e8fa3bfe1d3d72d29edbc1cda` |
| 14 | `def` | [polePositiveObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polepositiveobservation--75adca1be652a41fb9ad9e91.md) | 98 | `declaration-track:75adca1be652a41fb9ad9e911e064410bbeffa26a97dc70b8619fe6f9f4908c9` |
| 15 | `def` | [poleNegativeObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polenegativeobservation--3732d328c3ec9680adde34ee.md) | 103 | `declaration-track:3732d328c3ec9680adde34ee622bb73aeb37919d7209b86c5a3a2106b46ad241` |
| 16 | `def` | [poleObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/poleobservation--e5dd2f9e7f5884d2537efa92.md) | 108 | `declaration-track:e5dd2f9e7f5884d2537efa923b2c13bc740a1a94fb30a1b926eb456a97ecb3b0` |
| 17 | `theorem` | [pole_positive_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-positive-observation-surjective--ec6a226d362e3cd3335136f6.md) | 111 | `result-track:ec6a226d362e3cd3335136f6494d51afb45cbcb2a449f58faba5d9f90ef8fb95` |
| 18 | `theorem` | [pole_negative_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-negative-observation-surjective--0b552b3daf45ee34a2b952bb.md) | 115 | `result-track:0b552b3daf45ee34a2b952bb2fbbab1aeed9492e800e638046acda32253e0ea9` |
| 19 | `theorem` | [pole_observation_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-apply-mk--773402afcb3423759d94579a.md) | 119 | `result-track:773402afcb3423759d94579a5d07c27dd37b0391ff08c4d1b5e0ec18247e3f6b` |
| 20 | `theorem` | [pole_observation_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-infinitesimal--6f1391e51292c9e0239b75c5.md) | 123 | `result-track:6f1391e51292c9e0239b75c528809d10ef1c3f1311a0da7376433683ce9ef023` |
| 21 | `theorem` | [pole_quadratic_dvd_of_two_evaluations](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-quadratic-dvd-of-two-evaluations--dfef1b13892e70569dfbce28.md) | 127 | `result-track:dfef1b13892e70569dfbce281a977b893cbeb77c2e5ad38e07ebab169c2670a7` |
| 22 | `theorem` | [pole_observation_kernel_square_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-kernel-square-zero--2c32ed3a8d292af2a58a187a.md) | 133 | `result-track:2c32ed3a8d292af2a58a187a8c1765a922767af1e9e23e3a05539dd5301ddff0` |
| 23 | `theorem` | [pole_observation_ker_eq_jacobson](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-ker-eq-jacobson--a672b36d6591d5a6f646c2cf.md) | 143 | `result-track:a672b36d6591d5a6f646c2cfd0bc6e89a922f1669c4ea50758b9c6aa86f21968` |
| 24 | `theorem` | [pole_operator_jacobson_eq_span](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-operator-jacobson-eq-span--0532b4315421308987ece287.md) | 161 | `result-track:0532b4315421308987ece287949c780e3029ecbbf1f2fa910b4a941cd055a319` |
| 25 | `theorem` | [pole_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-surjective--eaa781364d14401ff88c4b41.md) | 178 | `result-track:eaa781364d14401ff88c4b41e39bdafe7162361b8bfb35ccc2471e42b1cc39b4` |
| 26 | `def` | [poleQuotientEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polequotientequiv--89c31cc5936a4bf05048365d.md) | 186 | `declaration-track:89c31cc5936a4bf05048365dc6e4fa407e64942dcaba0a21326b7ce2a01651c1` |
| 27 | `theorem` | [pole_quotient_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-quotient-equiv-apply-mk--ed4acd80e14003bd04bd140b.md) | 192 | `result-track:ed4acd80e14003bd04bd140baca616e03dda904fc0c5cabfe79ebd1cc5da8f8c` |
| 28 | `theorem` | [pole_operator_finrank](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-operator-finrank--ef8a504361ac9a5019756076.md) | 201 | `result-track:ef8a504361ac9a5019756076c6625b902094e2774724c58773b02be0f2571b83` |
| 29 | `theorem` | [pole_radical_finrank](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-radical-finrank--d5b5af7c1358ff12c66d4aa3.md) | 205 | `result-track:d5b5af7c1358ff12c66d4aa376b98d2351ff49806ada1a72ff2f4fb3e80ad5b2` |
| 30 | `theorem` | [pole_observation_linear_ker_eq_jacobson](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-linear-ker-eq-jacobson--356edba319c556ddb419be0d.md) | 221 | `result-track:356edba319c556ddb419be0db926124d2e74f1c21b7bf1f514716c273364dbf6` |
| 31 | `theorem` | [pole_observation_fiber_eq_affine_coset](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-fiber-eq-affine-coset--d0be3cd4d58a863aa4a43d00.md) | 230 | `result-track:d0be3cd4d58a863aa4a43d007c802e4af7c9b3a18def23587da17ee8cb222165` |
| 32 | `abbrev` | [ShiftedPoleFiber](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shiftedpolefiber--2048f348e7e7b7b287d2805f.md) | 237 | `declaration-track:2048f348e7e7b7b287d2805f00a42d05736d0ad67f1d6c3d5e5363c5fa8caf2d` |
| 33 | `def` | [shiftedPoleInfinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shiftedpoleinfinitesimal--f12848650a9675419865a1b1.md) | 240 | `declaration-track:f12848650a9675419865a1b1059f35216c571fd84388724502f5b10e5ac52a1e` |
| 34 | `theorem` | [shifted_pole_infinitesimal_sq](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shifted-pole-infinitesimal-sq--925315abcbc45195575b842e.md) | 243 | `result-track:925315abcbc45195575b842ed3abba6dd31c75b4283b05c8ee0e6951626a6c53` |
| 35 | `theorem` | [shifted_pole_infinitesimal_eq_root_sub](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shifted-pole-infinitesimal-eq-root-sub--96418dca0e2aed6ec36c994a.md) | 246 | `result-track:96418dca0e2aed6ec36c994a6a5ced9f573226ad2b2f1d00e24663dced98f0ee` |
| 36 | `def` | [shiftedPoleToDual](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shiftedpoletodual--1a3aa2eba842e9b14f7a387d.md) | 251 | `declaration-track:1a3aa2eba842e9b14f7a387d4643a5f5f966004b5adc7687bfd2ed5d55346ba6` |
| 37 | `def` | [dualToShiftedPole](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/dualtoshiftedpole--a79e60fb838c78b8a5336ca6.md) | 256 | `declaration-track:a79e60fb838c78b8a5336ca6cf43bae79e212c385cca8e724fdd382c88a0e062` |
| 38 | `theorem` | [shifted_pole_to_dual_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shifted-pole-to-dual-infinitesimal--df5730a207c2492adc219a7a.md) | 260 | `result-track:df5730a207c2492adc219a7ad243bb23d751bae7de6f3f855bcff1ce3de97ce0` |
| 39 | `theorem` | [dual_to_shifted_pole_eps](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/dual-to-shifted-pole-eps--8c034c34de4739056959a2c1.md) | 265 | `result-track:8c034c34de4739056959a2c16d1c9dd92355ece55416c94aa34154e29ff03cd5` |
| 40 | `def` | [shiftedPoleDualEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shiftedpoledualequiv--e0c462b5d3125570f404c6f5.md) | 270 | `declaration-track:e0c462b5d3125570f404c6f5606c7fc963a58de6503da0b6ab2fc4d40aca09bd` |
| 41 | `abbrev` | [positivePoleIdeal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/positivepoleideal--9fb440cc48cd27a84f78292e.md) | 284 | `declaration-track:9fb440cc48cd27a84f78292efd718a379fdd92b1b8ae68fb52bb8ee8badc4f79` |
| 42 | `abbrev` | [negativePoleIdeal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/negativepoleideal--235c0bf57de57aa136482c7e.md) | 287 | `declaration-track:235c0bf57de57aa136482c7e5cb91b6a1578b5d9c14196da58d4c06f76fb26b4` |
| 43 | `theorem` | [pole_local_ideals_coprime](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-local-ideals-coprime--173b248bd9e5c09a3febc4bf.md) | 289 | `result-track:173b248bd9e5c09a3febc4bf17ccf1b72e045cb8821fbd74943367063e04f331` |
| 44 | `theorem` | [pole_polynomial_span_eq_local_product](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-polynomial-span-eq-local-product--55d268f79027e793c2720f54.md) | 294 | `result-track:55d268f79027e793c2720f545a5d6d4a5421345a16fdd0cc06f1651e3c7255e9` |
| 45 | `def` | [poleSplitRingEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polesplitringequiv--cca135ae1f8a64e2d9703207.md) | 299 | `declaration-track:cca135ae1f8a64e2d9703207f3d389a3c3b226b964813fb3e7df63b7b4bf63f8` |
| 46 | `theorem` | [pole_split_ring_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-split-ring-equiv-apply-mk--6634fb60742275c7e7211b15.md) | 306 | `result-track:6634fb60742275c7e7211b1506b2e04082c92a89bdcf196b563218883d31f527` |
| 47 | `def` | [poleSplitEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/polesplitequiv--85f8651059165ad07cc36c4b.md) | 321 | `declaration-track:85f8651059165ad07cc36c4b8781060e4122e7f256ca695b338c6e77f4421e97` |
| 48 | `def` | [poleDualEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/poledualequiv--6c59b73fa33f12ba607320ea.md) | 329 | `declaration-track:6c59b73fa33f12ba607320ea6bff83a0bbaf3434e18ecbe5bca2f59e12e8a6d7` |
| 49 | `theorem` | [pole_split_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-split-equiv-apply-mk--e4cdec126c11df0ba0420754.md) | 333 | `result-track:e4cdec126c11df0ba0420754e79e7ef82fb3bc292535469cde4fc0b7e9030be1` |
| 50 | `theorem` | [shifted_pole_dual_equiv_root](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/shifted-pole-dual-equiv-root--df7ea3b66bf3cff648d31607.md) | 339 | `result-track:df7ea3b66bf3cff648d31607d0e41eab905e61442e53e78e917c4ce8a408a58b` |
| 51 | `theorem` | [pole_dual_equiv_root](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-dual-equiv-root--c362a0bfffe3b4f5bc664752.md) | 345 | `result-track:c362a0bfffe3b4f5bc664752a532023265ba250f9619932ef1039494746516ea` |
| 52 | `theorem` | [pole_dual_equiv_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-dual-equiv-infinitesimal--2015dc6e9800fe9ecce0c08e.md) | 355 | `result-track:2015dc6e9800fe9ecce0c08e888a7a8d67c6de58bddd42f1cbb2b8928fafba3e` |
| 53 | `theorem` | [dual_root_mul_coefficients](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/dual-root-mul-coefficients--f753fc04a0d1a37d7bf17678.md) | 364 | `result-track:f753fc04a0d1a37d7bf17678a33383d1c0778a7ea9eb181da9b02d3cc9b7b929` |
| 54 | `theorem` | [pole_radical_mul_eq_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-radical-mul-eq-zero--bee7bdef905735b83d318e27.md) | 371 | `result-track:bee7bdef905735b83d318e27e7ef0f9ef8269a3a02c0f2c25eb0104919f5ed2a` |
| 55 | `theorem` | [pole_radical_ideal_square_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-radical-ideal-square-zero--9e1056a5aa4ffd11bcb7a97b.md) | 381 | `result-track:9e1056a5aa4ffd11bcb7a97ba9e226643d7730adfd2c7f2f351182d626285118` |
| 56 | `theorem` | [pole_observation_eq_dual_constant_terms](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-observation-eq-dual-constant-terms--6553da9ba9b168aecc19ba8c.md) | 390 | `result-track:6553da9ba9b168aecc19ba8c868fe0cb025b8d76985e928846c921b49f0e0473` |
| 57 | `theorem` | [pole_radical_action_coefficients](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-radical-action-coefficients--e09f4601cf6e48342d83c821.md) | 407 | `result-track:e09f4601cf6e48342d83c821f044f2e24f160705060bd186ce9f13b7fb8a904d` |
| 58 | `theorem` | [pole_representation_annihilates_polynomial](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/pole-representation-annihilates-polynomial--d9523ce8a125feefae1d7f08.md) | 418 | `result-track:d9523ce8a125feefae1d7f083de50e8f1a7cb879e1d48e8b0a9f75b38f99e8bb` |
| 59 | `theorem` | [no_pole_representation_of_polynomial_nonzero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/declarations/no-pole-representation-of-polynomial-nonzero--dbcbfd4d58a00644d62cec12.md) | 424 | `result-track:dbcbfd4d58a00644d62cec12a3ff3a433753197ec0c5231bc085e8291087287e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
