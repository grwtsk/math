# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCompleteRegularization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf0a4821d237afe3e26ecf300750de354860ff4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf0a4821d237afe3e26ecf300750de354860ff4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleFiniteRemoval`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weightedPole_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/weightedpole-analyticat--71dcc3b722ea00c02f938e40.md) | 58 | `result-track:71dcc3b722ea00c02f938e40dc47187274916041fd5ec81c648cc8dc21dbca94` |
| 2 | `def` | [nontrivialOtherPrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/nontrivialotherprincipalpart--7ea349d2b616108abb87acc3.md) | 64 | `declaration-track:7ea349d2b616108abb87acc3f8246e96745a14ad61b28f2efe24ec7881ad4d64` |
| 3 | `def` | [trivialOtherPrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/trivialotherprincipalpart--2bb60a779e8978835b196e9c.md) | 70 | `declaration-track:2bb60a779e8978835b196e9c17a70bcc486dd2df9e73a4af083b6d80cee0d56a` |
| 4 | `def` | [poleOtherPrincipalPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/poleotherprincipalpart--caec62ee045633d77516e14a.md) | 76 | `declaration-track:caec62ee045633d77516e14a8891d27f13ab8035b12ba350e9816856184410fb` |
| 5 | `theorem` | [rectanglePrincipalPart_eq_nontrivial_term_add_other](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/rectangleprincipalpart-eq-nontrivial-term-add-other--f8c4e5f5089761b662497bf9.md) | 80 | `result-track:f8c4e5f5089761b662497bf94af1e94eb62478b4221afecae18648516749674f` |
| 6 | `theorem` | [rectanglePrincipalPart_eq_trivial_term_add_other](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/rectangleprincipalpart-eq-trivial-term-add-other--a3a6a9c660e00da8c8d04248.md) | 94 | `result-track:a3a6a9c660e00da8c8d0424857f1f8e910e0a4b1fb3d84a60063404defdc06fb` |
| 7 | `theorem` | [rectanglePrincipalPart_eq_pole_term_add_other](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/rectangleprincipalpart-eq-pole-term-add-other--fdaeef1577a7d645079261bd.md) | 106 | `result-track:fdaeef1577a7d645079261bdf670f1ed60b700265b1d895e0a41416901ceb767` |
| 8 | `theorem` | [erased_nontrivial_sum_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/erased-nontrivial-sum-analyticat--d7a1923aba92765862137424.md) | 114 | `result-track:d7a1923aba927658621374248223966b56c8b926fc001582ea6b73e4fd6772b4` |
| 9 | `theorem` | [trivial_sum_analyticAt_nontrivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/trivial-sum-analyticat-nontrivial--ca8a8af9d8e37bcc21caa0fd.md) | 127 | `result-track:ca8a8af9d8e37bcc21caa0fd4a2fa5166e0fb6797d286f18e8c24e80f0856a8a` |
| 10 | `theorem` | [pole_analyticAt_nontrivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/pole-analyticat-nontrivial--f84c86e5d0684ad020ed935b.md) | 140 | `result-track:f84c86e5d0684ad020ed935b3dc8975635cc2b6821ca400fc215c98149fd962b` |
| 11 | `theorem` | [nontrivialOtherPrincipalPart_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/nontrivialotherprincipalpart-analyticat--4051e0ca292aa840c89135d0.md) | 147 | `result-track:4051e0ca292aa840c89135d09b101f97a68c68dae9213bbfa969d2f19029e408` |
| 12 | `theorem` | [nontrivial_sum_analyticAt_trivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/nontrivial-sum-analyticat-trivial--cae2ef664b473cebbd9c2a22.md) | 156 | `result-track:cae2ef664b473cebbd9c2a22c6c6281fb24aaacbb0e326619f0363826cf54bd6` |
| 13 | `theorem` | [erased_trivial_sum_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/erased-trivial-sum-analyticat--f15c5bb3d2972016afc4fba8.md) | 168 | `result-track:f15c5bb3d2972016afc4fba8ca2325e5d7fe165308bd4bb0b96d083be069559f` |
| 14 | `theorem` | [pole_analyticAt_trivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/pole-analyticat-trivial--40e2c503e30c4bc9d9895186.md) | 183 | `result-track:40e2c503e30c4bc9d98951865ccf361240b9d218c6c180d066fe07f8b201dae5` |
| 15 | `theorem` | [trivialOtherPrincipalPart_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/trivialotherprincipalpart-analyticat--36cbdcc4a24a245755d4bcad.md) | 195 | `result-track:36cbdcc4a24a245755d4bcade27e67f59d22cbb981e1845ff407f597b1b63ec2` |
| 16 | `theorem` | [nontrivial_sum_analyticAt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/nontrivial-sum-analyticat-one--d0c4caa5f74ea4af74bb0ee2.md) | 203 | `result-track:d0c4caa5f74ea4af74bb0ee29682b57dac6997e27242521acd2eb883e0f05d5f` |
| 17 | `theorem` | [trivial_sum_analyticAt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/trivial-sum-analyticat-one--702fc0c0edb9db0173820eff.md) | 211 | `result-track:702fc0c0edb9db0173820effda17c112fe1017556acfa59bd7daa7dd0c1a6e34` |
| 18 | `theorem` | [poleOtherPrincipalPart_analyticAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/poleotherprincipalpart-analyticat--37a3fda7905a4bdc9b8d6af8.md) | 224 | `result-track:37a3fda7905a4bdc9b8d6af842129e42ae7621ce6c2570451af4a32af8adf456` |
| 19 | `theorem` | [exists_nontrivial_raw_germ](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/exists-nontrivial-raw-germ--e95c11d5ca95c1e1cde97cf2.md) | 230 | `result-track:e95c11d5ca95c1e1cde97cf21def3b4870d0d690e3b32073cbb9941d657627f6` |
| 20 | `theorem` | [exists_trivial_raw_germ](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/exists-trivial-raw-germ--078bbc139dc29f531cc2f64f.md) | 244 | `result-track:078bbc139dc29f531cc2f64fca79a956e48832a58bc01753e974069ce3aab5f9` |
| 21 | `theorem` | [exists_pole_raw_germ](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/exists-pole-raw-germ--16f1e82df36a7fe873e349b9.md) | 257 | `result-track:16f1e82df36a7fe873e349b905c888e45ceba13f740c5ae2636493dd64adc527` |
| 22 | `theorem` | [exists_raw_germ_at_singular](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/exists-raw-germ-at-singular--6d69a2dbdccaf5c5182f64ee.md) | 270 | `result-track:6d69a2dbdccaf5c5182f64eea7a3aa9dfa21b2d9bea6e32105f3914ce3adae44` |
| 23 | `def` | [chosenRawGerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/chosenrawgerm--772f939a1352596ae08055d9.md) | 286 | `declaration-track:772f939a1352596ae08055d9160f2d005bd3753d5a762a80d72aa8252c2dabc0` |
| 24 | `theorem` | [chosenRawGerm_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/chosenrawgerm-analytic--519a1e0abf6911329dd9fe7c.md) | 293 | `result-track:519a1e0abf6911329dd9fe7c192fb07a7b909077419c5998e088722034b30f7d` |
| 25 | `theorem` | [chosenRawGerm_agrees](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/chosenrawgerm-agrees--3c67f196d0431fc83d92501a.md) | 301 | `result-track:3c67f196d0431fc83d92501af3ec514ae45024ae74c8def75638836d294e2950` |
| 26 | `def` | [rectangleLocalRemovalData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/rectanglelocalremovaldata--09256d8f2ee8ffb94fab2f13.md) | 309 | `declaration-track:09256d8f2ee8ffb94fab2f132814900dedf82e4e3876cc1349d6bd6839531b48` |
| 27 | `def` | [rectangleRegularExtension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/rectangleregularextension--34bb67b145274b09e0d6a732.md) | 316 | `declaration-track:34bb67b145274b09e0d6a732e5fb96cce0a21ff2892aef564bce7811504df10d` |
| 28 | `theorem` | [normalizedRectangleIndex_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/normalizedrectangleindex-eq-expected--0a286635bb9a0b191d9c7c80.md) | 321 | `result-track:0a286635bb9a0b191d9c7c807c6874cf4af2efde10c67b8bcd4adeecdab4aafd` |
| 29 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/tocanonicalrectangleindexenclosure--11ed27a61ea404727c228f24.md) | 328 | `declaration-track:11ed27a61ea404727c228f24ca3e1f8cf8120160139e4f75aace650dc69b087e` |
| 30 | `theorem` | [wide_interval_still_needs_isolation_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/declarations/wide-interval-still-needs-isolation-fixture--580ca5ea0f254443b233abf6.md) | 338 | `result-track:580ca5ea0f254443b233abf6967d2a76201f70f095d7837abf116b485a807690` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
