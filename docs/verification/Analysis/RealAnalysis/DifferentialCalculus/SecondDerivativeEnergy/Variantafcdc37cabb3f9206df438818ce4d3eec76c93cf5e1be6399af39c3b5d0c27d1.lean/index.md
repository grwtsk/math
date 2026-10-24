# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SecondDerivativeEnergy.Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d94cb29f507722480ad82437f9823c35503bae1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d94cb29f507722480ad82437f9823c35503bae1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DerivativeEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourthInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/fourthinterior--ccdb29b44b7afed38abefe1c.md) | 28 | `declaration-track:ccdb29b44b7afed38abefe1c364b1e19056284620e1c07a029d61a132e872821` |
| 2 | `def` | [normalizedSecondInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondinterior--dcd741cb86bb8b7760175d92.md) | 32 | `declaration-track:dcd741cb86bb8b7760175d92e956739e7ee74fd199774812527acfd7a07640e1` |
| 3 | `def` | [normalizedSecondTest](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest--142e4d6c37a68753e9a9c8ae.md) | 36 | `declaration-track:142e4d6c37a68753e9a9c8ae087febe1364ee2ce47cee4e66a066c5506e6d4d9` |
| 4 | `theorem` | [thirdInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/thirdinterior-hasderivat--c744de17629dca8d28fb6c11.md) | 40 | `result-track:c744de17629dca8d28fb6c119c30ecdc16aec2f2339ab34ae6d1ac0701bcb8f8` |
| 5 | `theorem` | [normalizedInteriorDerivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedinteriorderivative-hasderivat--a45f34a068119a22d2b68773.md) | 51 | `result-track:a45f34a068119a22d2b6877337e98ed6e35f27bca5a17f3c1e9bee2618b64306` |
| 6 | `theorem` | [normalizedSecondInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondinterior-continuous--cac2c97441f108f4773d3dc4.md) | 56 | `result-track:cac2c97441f108f4773d3dc48ea1ff1207ee0afe58824b38ae9a473a5a278583` |
| 7 | `theorem` | [normalizedSecondTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-integrable--fb0df19d08fb6811595bfe5f.md) | 61 | `result-track:fb0df19d08fb6811595bfe5f1082dd22f96eb67990a8615fb043cec349fed5fe` |
| 8 | `theorem` | [normalizedSecondTest_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-square-integrable--f57b7669f5443880616e2dbe.md) | 65 | `result-track:f57b7669f5443880616e2dbe87afd1f2713e262e079b89e9167a3154bd45cb01` |
| 9 | `theorem` | [normalized_derivative_hasDerivAt_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-derivative-hasderivat-ae--88f7110f7ea4b11b6bfc6452.md) | 76 | `result-track:88f7110f7ea4b11b6bfc645260829df161d60fd9f3d664109dd6ae5b0af8bef3` |
| 10 | `theorem` | [normalized_second_derivative_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-second-derivative-ae--90bc410788feb3e8c8118e1e.md) | 102 | `result-track:90bc410788feb3e8c8118e1e6063b84d217bfd7ef5ff3a4b8b6443be9fce12ee` |
| 11 | `def` | [unitSecond](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unitsecond--6660d57521955b5564421d3d.md) | 108 | `declaration-track:6660d57521955b5564421d3dec49eff32fe6a505a2c720c4f8bd881b77a98f66` |
| 12 | `def` | [unitFourth](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unitfourth--3da15b66ca376909526b5d7a.md) | 109 | `declaration-track:3da15b66ca376909526b5d7a15072b946c25ecfd3d7a8add7e6335410d2a12ba` |
| 13 | `theorem` | [unitSecond_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unitsecond-square-integral--a2b2c576f313b041d6ff31b2.md) | 111 | `result-track:a2b2c576f313b041d6ff31b2ed6088e39cce1e87efec0ab3476601f5a2e0c6c8` |
| 14 | `theorem` | [unitFourth_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unitfourth-square-integral--5607868a2faeb64c7c20eb12.md) | 125 | `result-track:5607868a2faeb64c7c20eb12f1ccde8882b344843cd0b298b28fec97f6a3ebda` |
| 15 | `theorem` | [unitFourth_mul_second_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unitfourth-mul-second-integral--15c7e1874d038b19c52848d5.md) | 139 | `result-track:15c7e1874d038b19c52848d5d37b05582bef7a463c553960611b55d09594a2ce` |
| 16 | `theorem` | [interior_square_scaling](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/interior-square-scaling--df7359b3bb0eda1d5cb53fb3.md) | 155 | `result-track:df7359b3bb0eda1d5cb53fb3e90034d314be041407602265abf23d805c66b0cb` |
| 17 | `theorem` | [unit_second_derivative_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/unit-second-derivative-square-integral--3bea5bd18170ee24945567ac.md) | 168 | `result-track:3bea5bd18170ee24945567ac62a1188c90cdc5befc7ec5cba3c7816a45ec3731` |
| 18 | `theorem` | [normalizedSecondTest_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-square-integral--c943ecab00a69e555e8ab1b3.md) | 185 | `result-track:c943ecab00a69e555e8ab1b303e397784c69fc3ffb4aa75bc4592c7b644e7374` |
| 19 | `theorem` | [normalizedSecondTest_square_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-square-integral-le--cabbf33b12523e3b455612b3.md) | 203 | `result-track:cabbf33b12523e3b455612b3332a21eebf1bfc803338acf2a3b91638fa4521a9` |
| 20 | `theorem` | [normalized_second_derivative_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-second-derivative-square-integrable--cdb622d08da3ea73ded994ac.md) | 214 | `result-track:cdb622d08da3ea73ded994ac872cc2e84ca11ca207979c7d165a34fdceffa4b6` |
| 21 | `theorem` | [normalized_second_derivative_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-second-derivative-square-integral--c60cdd1703f75b47156d014b.md) | 222 | `result-track:c60cdd1703f75b47156d014be229f324e17009705a73a1042bda2e2ed3e17693` |
| 22 | `theorem` | [normalized_second_derivative_square_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-second-derivative-square-integral-le--b7023a7f5d56a1c4752a382f.md) | 232 | `result-track:b7023a7f5d56a1c4752a382fc0932b1e7e5bd4a3471bf78d28b94b688e5d4303` |
| 23 | `theorem` | [normalizedInteriorDerivative_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedinteriorderivative-endpoints--99c0cdcb6d0679d050877712.md) | 241 | `result-track:99c0cdcb6d0679d050877712521dd2ebc2e2c41f9a1eacd95d476bebb5ea30d7` |
| 24 | `theorem` | [normalizedSecondTest_pairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-pairing-integrable--5aa56fa38bd0acc5db09e951.md) | 252 | `result-track:5aa56fa38bd0acc5db09e9510ad0b55dda774a2dce1134f37bf1d563ba2eab5e` |
| 25 | `theorem` | [normalized_derivative_pairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-derivative-pairing-integrable--bacc82f3e1161bf4d74f79e8.md) | 258 | `result-track:bacc82f3e1161bf4d74f79e8c49bb5264032ea3ad8c87fe43c84b74abe536bbb` |
| 26 | `theorem` | [normalizedSecondTest_weakDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalizedsecondtest-weakderivative--e4407017014d66754cd0f20e.md) | 268 | `result-track:e4407017014d66754cd0f20e7fb0f6e11c6ef334729ef9af7b8ef3c88d8433ec` |
| 27 | `theorem` | [normalized_derivative_eq_projected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-derivative-eq-projected--63689f67c7522cc57287c810.md) | 290 | `result-track:63689f67c7522cc57287c810973f282ed61997223e41785ab7d3f1347743e349` |
| 28 | `theorem` | [normalized_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1.lean/declarations/normalized-derivative-lipschitz--65bb6c2f947861d6e5145fd8.md) | 310 | `result-track:65bb6c2f947861d6e5145fd8a73a187ef4c3dc808fb2b28eb7438c9e208bd6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
