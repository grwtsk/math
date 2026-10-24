# Verification target: GRWTSK.Algebra.RingTheory.PoleAlgebra.Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db268f85f1f613fa368117b5982239e216f876b4",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db268f85f1f613fa368117b5982239e216f876b4`.

Source path: `GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.JacobsonObservation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Prod` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DualNumber` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleQuadratic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polequadratic--28afe60f9d2ebc45acd568ed.md) | 36 | `declaration-track:28afe60f9d2ebc45acd568ed9728552284a5e9f13adfc4b9f5bfe6a92d7d408b` |
| 2 | `def` | [PolePolynomial](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polepolynomial--88ab95b78458dba1d5eacb2b.md) | 39 | `declaration-track:88ab95b78458dba1d5eacb2b88cbb37e8cf782c45831c009375635239ae8bcf1` |
| 3 | `abbrev` | [PoleOperatorAlgebra](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/poleoperatoralgebra--3df091f04d6f56001fd6d153.md) | 42 | `declaration-track:3df091f04d6f56001fd6d153fde14f6870e0b592b029dfc60f7d058fad360ead` |
| 4 | `def` | [poleInfinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/poleinfinitesimal--411de92fbfe13df30edb53d2.md) | 45 | `declaration-track:411de92fbfe13df30edb53d29e7b72f4341f4507ff9e8e0fdc4efdc6c2332d84` |
| 5 | `theorem` | [pole_quadratic_factorization](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-quadratic-factorization--c83862aeb93e995daeba51fa.md) | 48 | `result-track:c83862aeb93e995daeba51fa3d59cc342384941f94383eef4abcc4495e77bb7c` |
| 6 | `theorem` | [pole_polynomial_factorization](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-polynomial-factorization--b3daa60a86082b6e181638a1.md) | 60 | `result-track:b3daa60a86082b6e181638a1d50861d3e7da8a09a34fff3f7856603dbef45d67` |
| 7 | `theorem` | [pole_quadratic_monic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-quadratic-monic--5ac374b65f11769627d3f2b1.md) | 64 | `result-track:5ac374b65f11769627d3f2b1053e87d7061879bf143fb84c8bb84c3b91b0d354` |
| 8 | `theorem` | [pole_polynomial_monic](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-polynomial-monic--3a9226589b8fc54932ff0d53.md) | 67 | `result-track:3a9226589b8fc54932ff0d5394ce48ec8dca9f4fafb12bb0705d996e5b1de1b6` |
| 9 | `theorem` | [pole_quadratic_degree](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-quadratic-degree--7354b3736c1504709f165261.md) | 69 | `result-track:7354b3736c1504709f165261550d63c7abe043bbf9dd2ecadd3e2ac993a1beff` |
| 10 | `theorem` | [pole_polynomial_degree](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-polynomial-degree--f0947f9bb897b9a9c695e6ab.md) | 72 | `result-track:f0947f9bb897b9a9c695e6ab2d826bbabda5345965292814981f9870a9489914` |
| 11 | `theorem` | [pole_infinitesimal_eq_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-infinitesimal-eq-mk--357b9b04ea76a08c88471619.md) | 76 | `result-track:357b9b04ea76a08c884716194ee9332c6954a2cc887bbea08c90c35f87b7595f` |
| 12 | `theorem` | [pole_infinitesimal_sq](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-infinitesimal-sq--1db7af7af975067ce2eead1a.md) | 80 | `result-track:1db7af7af975067ce2eead1a300a5f731098e37d743e74c5fec30d408f5dd201` |
| 13 | `theorem` | [pole_infinitesimal_ne_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-infinitesimal-ne-zero--9c20a8fc80839fce5559da19.md) | 83 | `result-track:9c20a8fc80839fce5559da19a85b3d0af4a64d4d2477672acf54725f30c132ef` |
| 14 | `def` | [polePositiveObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polepositiveobservation--048cbce0a4fef6292fdc4017.md) | 90 | `declaration-track:048cbce0a4fef6292fdc4017cc093d48009147ca24c649f4cbee16890059b652` |
| 15 | `def` | [poleNegativeObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polenegativeobservation--1aaa5aac69f7eea01875611c.md) | 95 | `declaration-track:1aaa5aac69f7eea01875611c587003205b3a08a79b15eb6271597294b4e16433` |
| 16 | `def` | [poleObservation](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/poleobservation--f56b3ee603b11db8cd0891d3.md) | 100 | `declaration-track:f56b3ee603b11db8cd0891d33802b619696e11a37972ee87897271ef2d623f83` |
| 17 | `theorem` | [pole_positive_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-positive-observation-surjective--0f2ccd662ae5750679ebdb6e.md) | 103 | `result-track:0f2ccd662ae5750679ebdb6e6a2d954d65b98d12aff3ae131977a8b0954dd2c8` |
| 18 | `theorem` | [pole_negative_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-negative-observation-surjective--583c27cd3e41d53d3b7e3c1c.md) | 107 | `result-track:583c27cd3e41d53d3b7e3c1ceb59e5850a21fac519b375f1327cb2a39a3ff8d2` |
| 19 | `theorem` | [pole_observation_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-apply-mk--5092232ed3fec1368bae5416.md) | 111 | `result-track:5092232ed3fec1368bae54163deb0102233be5330aa3ae281250e9b8a035305c` |
| 20 | `theorem` | [pole_observation_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-infinitesimal--82fc5f84e687f44a454d6453.md) | 115 | `result-track:82fc5f84e687f44a454d6453a87e7c231da73da3269c77fb8fb446e7c1cb32cd` |
| 21 | `theorem` | [pole_quadratic_dvd_of_two_evaluations](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-quadratic-dvd-of-two-evaluations--f487ec557c4dbe0cefda0777.md) | 119 | `result-track:f487ec557c4dbe0cefda0777daa542b17c617e8bc2bd48f163475d4aac89b32b` |
| 22 | `theorem` | [pole_observation_kernel_square_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-kernel-square-zero--d94304c349e5760e05dcd00c.md) | 125 | `result-track:d94304c349e5760e05dcd00cc1f9590d15f7cc1c59b5a8f3845e160069073f1b` |
| 23 | `theorem` | [pole_observation_ker_eq_jacobson](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-ker-eq-jacobson--f228addfae52f5e283a2af54.md) | 135 | `result-track:f228addfae52f5e283a2af542dd3029db764e39b4669266497ce445781e3218c` |
| 24 | `theorem` | [pole_operator_jacobson_eq_span](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-operator-jacobson-eq-span--e4a3a080af8fcc3535419903.md) | 153 | `result-track:e4a3a080af8fcc3535419903b53611e48d0cd32923a8c093c73ad2c3543fcfc4` |
| 25 | `theorem` | [pole_observation_surjective](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-surjective--f5a564048d8a7a054487da4f.md) | 170 | `result-track:f5a564048d8a7a054487da4f63efccec4f2ecd7ce7dbf72c65666bb1480f175e` |
| 26 | `def` | [poleQuotientEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polequotientequiv--02c501d203130a75474a763a.md) | 178 | `declaration-track:02c501d203130a75474a763ad316284afdde1ef2d65668134b5690a14ec93add` |
| 27 | `theorem` | [pole_quotient_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-quotient-equiv-apply-mk--f645540acdcbf7875cca7764.md) | 184 | `result-track:f645540acdcbf7875cca776498eb3a33e11c58de27369829afffb15c3649dd79` |
| 28 | `theorem` | [pole_operator_finrank](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-operator-finrank--7d371bb6d70a2ad08d7ba256.md) | 193 | `result-track:7d371bb6d70a2ad08d7ba2562f80fcfe5cd99d2e427589c196f21286398ce661` |
| 29 | `theorem` | [pole_radical_finrank](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-radical-finrank--5dff9045c18e14d6a46f0d46.md) | 197 | `result-track:5dff9045c18e14d6a46f0d46c6618e192a3c51ecab521a8ec45f26ddd994c629` |
| 30 | `theorem` | [pole_observation_linear_ker_eq_jacobson](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-linear-ker-eq-jacobson--f5c87ec0bbf055136ec2c9e9.md) | 213 | `result-track:f5c87ec0bbf055136ec2c9e92c0d9bdabb7bc110a07ae07d75275a0095b644de` |
| 31 | `theorem` | [pole_observation_fiber_eq_affine_coset](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-fiber-eq-affine-coset--ad22c255f9e571d4b6143c46.md) | 222 | `result-track:ad22c255f9e571d4b6143c46af149d0846338ea676908bfa989c9072715ddc8f` |
| 32 | `abbrev` | [ShiftedPoleFiber](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shiftedpolefiber--d20f99e21409a6d63a1d5b12.md) | 229 | `declaration-track:d20f99e21409a6d63a1d5b1267713cfcf8bf37d043bbd58ed5142718a55720af` |
| 33 | `def` | [shiftedPoleInfinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shiftedpoleinfinitesimal--9b770669da6f6d1e4000183c.md) | 232 | `declaration-track:9b770669da6f6d1e4000183c57d8e7322aac9f0e5f1bd80d18396e53d51e4ccd` |
| 34 | `theorem` | [shifted_pole_infinitesimal_sq](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shifted-pole-infinitesimal-sq--2035926caf845c030b29b8be.md) | 235 | `result-track:2035926caf845c030b29b8be5935f9175f5b838c723ef023f9aacbcaaa884ab1` |
| 35 | `theorem` | [shifted_pole_infinitesimal_eq_root_sub](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shifted-pole-infinitesimal-eq-root-sub--96311e5cb3ccebcc7192deff.md) | 238 | `result-track:96311e5cb3ccebcc7192deff79050ff9e20d30f511f5bad3c7dee2241d0c59e9` |
| 36 | `def` | [shiftedPoleToDual](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shiftedpoletodual--f5d6bbab62001b558f485661.md) | 243 | `declaration-track:f5d6bbab62001b558f485661f145dd941872a7215b0a38fcb2030bfa9d53d0ef` |
| 37 | `def` | [dualToShiftedPole](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/dualtoshiftedpole--cf53ec793347a26993cc94e8.md) | 248 | `declaration-track:cf53ec793347a26993cc94e857973a871afc5f7d7725cef8f89548335bf145cb` |
| 38 | `theorem` | [shifted_pole_to_dual_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shifted-pole-to-dual-infinitesimal--ee3d84fc02b582273b97bb13.md) | 252 | `result-track:ee3d84fc02b582273b97bb13d3b9829f0c95b2c5d30583254c0fa3c8211493b3` |
| 39 | `theorem` | [dual_to_shifted_pole_eps](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/dual-to-shifted-pole-eps--809a6354d17f0ac445867c56.md) | 257 | `result-track:809a6354d17f0ac445867c56caff7347b5a4e757964bd3ee84d17e4d976a4bc6` |
| 40 | `def` | [shiftedPoleDualEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shiftedpoledualequiv--2aa3710d94cfba47177e4bca.md) | 262 | `declaration-track:2aa3710d94cfba47177e4bca8da941f2e3ad66c065c0117144dee7f5280a182d` |
| 41 | `abbrev` | [positivePoleIdeal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/positivepoleideal--ab4e79a2186dd1a8edf522e0.md) | 276 | `declaration-track:ab4e79a2186dd1a8edf522e0f038a112bac828ad85a1e53c65229dc45d44df06` |
| 42 | `abbrev` | [negativePoleIdeal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/negativepoleideal--4b0ea905c1586e467e33ce51.md) | 279 | `declaration-track:4b0ea905c1586e467e33ce51d5d680f1fdacca668ed689cfb1b57edcb4f059fc` |
| 43 | `theorem` | [pole_local_ideals_coprime](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-local-ideals-coprime--f77232b2e05fa6d6e89ddf7b.md) | 281 | `result-track:f77232b2e05fa6d6e89ddf7b877681518ba5730051d272a38406ad24769abdb6` |
| 44 | `theorem` | [pole_polynomial_span_eq_local_product](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-polynomial-span-eq-local-product--9133f031d5540f6f0bea23e7.md) | 286 | `result-track:9133f031d5540f6f0bea23e7ff9f1fe6ee169ff347df28d2b65f9cda2c1efa1a` |
| 45 | `def` | [poleSplitRingEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polesplitringequiv--4fbb17504c78e150f6f0bc80.md) | 291 | `declaration-track:4fbb17504c78e150f6f0bc808f1a83234376e3310e6e664f0f06ad2855531942` |
| 46 | `theorem` | [pole_split_ring_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-split-ring-equiv-apply-mk--c8ec69ea5c2d5fb85e153f49.md) | 298 | `result-track:c8ec69ea5c2d5fb85e153f4901403d41d903b5f170ff198739cd4dc321573d06` |
| 47 | `def` | [poleSplitEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/polesplitequiv--3eda70df3e8b15196f4aabca.md) | 313 | `declaration-track:3eda70df3e8b15196f4aabca06cd9a203f7adb6c572fa3ef825e843b7d60215b` |
| 48 | `def` | [poleDualEquiv](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/poledualequiv--f9e778d50bb9c0168f623356.md) | 321 | `declaration-track:f9e778d50bb9c0168f623356685a2893cd674ac2ab0011c80c8cdb1670c981a6` |
| 49 | `theorem` | [pole_split_equiv_apply_mk](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-split-equiv-apply-mk--cf747fe5d099912b11f0373a.md) | 325 | `result-track:cf747fe5d099912b11f0373a4ee7251cb2e0f139b2bb258359facddae3a075a0` |
| 50 | `theorem` | [shifted_pole_dual_equiv_root](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/shifted-pole-dual-equiv-root--ee07404ef67c4a610aed9ded.md) | 331 | `result-track:ee07404ef67c4a610aed9ded47f58504f50de23153e8fc216465295636bdce2d` |
| 51 | `theorem` | [pole_dual_equiv_root](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-dual-equiv-root--b11c318e8627c9c4926b0e16.md) | 337 | `result-track:b11c318e8627c9c4926b0e164cbbb98229f6d0ecabb27c7f3ac101089177c3cd` |
| 52 | `theorem` | [pole_dual_equiv_infinitesimal](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-dual-equiv-infinitesimal--df34fa45b591cf3d2b449da2.md) | 347 | `result-track:df34fa45b591cf3d2b449da2b45af949e265f3652b94437d044d8ca6b8deacc7` |
| 53 | `theorem` | [dual_root_mul_coefficients](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/dual-root-mul-coefficients--01c32c37ccdd0bc6d12d765c.md) | 356 | `result-track:01c32c37ccdd0bc6d12d765cc5fb12ec347554709ec6e4c0f7eb20c0a3fbabf7` |
| 54 | `theorem` | [pole_radical_mul_eq_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-radical-mul-eq-zero--533a1e3378dd34c021b0b0f2.md) | 363 | `result-track:533a1e3378dd34c021b0b0f2bde65bfb2ab18915fa458660d69cc69b4b2c96fc` |
| 55 | `theorem` | [pole_radical_ideal_square_zero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-radical-ideal-square-zero--9a1069128b75e6bb51708559.md) | 373 | `result-track:9a1069128b75e6bb5170855973a3ba57e1b3297288a910700c186d718ad8b5bf` |
| 56 | `theorem` | [pole_observation_eq_dual_constant_terms](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-observation-eq-dual-constant-terms--495ffac37d55c5f786402135.md) | 382 | `result-track:495ffac37d55c5f78640213548fa23ce892ad277ff5ab16430732b60d2a38fbe` |
| 57 | `theorem` | [pole_radical_action_coefficients](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-radical-action-coefficients--3dda8569873865e2b3c83f28.md) | 399 | `result-track:3dda8569873865e2b3c83f28989877089270c6285673d3cc7356fe526a678348` |
| 58 | `theorem` | [pole_representation_annihilates_polynomial](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/pole-representation-annihilates-polynomial--3db2920138ca126cbd386379.md) | 410 | `result-track:3db2920138ca126cbd386379ecaf7918f49be73a28c5f7b5ef9728a542618f3b` |
| 59 | `theorem` | [no_pole_representation_of_polynomial_nonzero](../../../../../mathematics/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/declarations/no-pole-representation-of-polynomial-nonzero--b82d91e89198856e39cf81bf.md) | 416 | `result-track:b82d91e89198856e39cf81bf9c8bf84dcfac2f137b569bacfde4230efccf8a7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
