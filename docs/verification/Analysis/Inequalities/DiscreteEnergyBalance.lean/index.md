# Verification target: GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90ff5d9f8341c68b1a688e33138b0c2589b7db2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90ff5d9f8341c68b1a688e33138b0c2589b7db2`.

Source path: `GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/DiscreteEnergyBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_successive_difference](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/sum-successive-difference--6d6cb6edc12b103b7496b5d1.md) | 34 | `result-track:6d6cb6edc12b103b7496b5d172c9f859d06de0a400fa1302767ab3ab444eb2f8` |
| 2 | `structure` | [SignedWorkLedger](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/signedworkledger--364208ada91f8f17c2b1baca.md) | 46 | `declaration-track:364208ada91f8f17c2b1bacab7813236f30a69b4999f2a50532c5a60f0088f36` |
| 3 | `def` | [totalSupply](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/totalsupply--128e37fcd93cfe99047ef300.md) | 61 | `declaration-track:128e37fcd93cfe99047ef300263131bc67e3f1119e0af038c6a2738d4244c5bc` |
| 4 | `def` | [cumulativeSupply](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/cumulativesupply--480d9c81217dcd1e9066e975.md) | 65 | `declaration-track:480d9c81217dcd1e9066e975c9984ee0087ee4e8d70d443972b3394c71c04532` |
| 5 | `def` | [dissipation](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/dissipation--56e741127bc0bf3089821746.md) | 70 | `declaration-track:56e741127bc0bf30898217465bd830499b6ec73234774c2f2099e3d5b426f5f9` |
| 6 | `theorem` | [dissipation_nonnegative](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/dissipation-nonnegative--61b35a0d539e04e1264077ad.md) | 75 | `result-track:61b35a0d539e04e1264077ad433dd8291f25b2837cf54ccbd519ce5e28439985` |
| 7 | `theorem` | [cumulativeSupply_eq_components](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/cumulativesupply-eq-components--4a9eb571f157e617e1c79f5a.md) | 83 | `result-track:4a9eb571f157e617e1c79f5afb0d068551e00c04f29d1b305649090013740498` |
| 8 | `theorem` | [finite_balance](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/finite-balance--3e43214074510f42c303df37.md) | 92 | `result-track:3e43214074510f42c303df37baaf9d8737be5a97bdea95be63426afe62a86391` |
| 9 | `theorem` | [balance_le_initial_add_supply](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/balance-le-initial-add-supply--b2aaa4c39afd82a74405948c.md) | 104 | `result-track:b2aaa4c39afd82a74405948c5878a62882160ee4a9e8030dfca5a3aac4297809` |
| 10 | `theorem` | [energy_le_initial_add_supply](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/energy-le-initial-add-supply--15e4d62a8f32d47cde94da4b.md) | 117 | `result-track:15e4d62a8f32d47cde94da4b818bb42f8e3e85d31ed852b4f0271f3d6059793b` |
| 11 | `def` | [CumulativeSupplyBound](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/cumulativesupplybound--0f822ba8fc4c9bc7a1b5abc7.md) | 126 | `declaration-track:0f822ba8fc4c9bc7a1b5abc76fc0fa4546306713465541a8d0fded88489cea9f` |
| 12 | `theorem` | [energy_le_of_supply_bound](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/energy-le-of-supply-bound--e8910a27b716da374260bfdb.md) | 130 | `result-track:e8910a27b716da374260bfdbb74f1d5d3fe663bbc66dd11267520d7fe369a9ac` |
| 13 | `theorem` | [energy_le_of_cumulativeSupplyBound](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/energy-le-of-cumulativesupplybound--81f619994315c0fbc6e50a9f.md) | 138 | `result-track:81f619994315c0fbc6e50a9f500909f0ab9b9fe43d2566e0909f88bfbaea5356` |
| 14 | `structure` | [ReadoutGeometry](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/readoutgeometry--0e24d242d8bbce368c33ccf1.md) | 155 | `declaration-track:0e24d242d8bbce368c33ccf14e3335e71999906324896bb94a477cf746af10b3` |
| 15 | `theorem` | [bilinear_readout_expansion](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/bilinear-readout-expansion--2d2bfcb4865df11418558539.md) | 163 | `result-track:2d2bfcb4865df11418558539bb9ffa3acb520dfec68e0403736eeef90a5e0a7c` |
| 16 | `theorem` | [bilinear_readout_reconstruction](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/bilinear-readout-reconstruction--808b5cc1ca4dd7d57be95108.md) | 175 | `result-track:808b5cc1ca4dd7d57be951084f807f5292276c7ab7d6d995d47bebd20793c563` |
| 17 | `theorem` | [gram_readout_reconstruction](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/gram-readout-reconstruction--c7b161ada49871c35885f6bd.md) | 183 | `result-track:c7b161ada49871c35885f6bd409bf01ad87cf70ed766a6021a93110551fba0ac` |
| 18 | `theorem` | [signed_readout_reconstruction](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/signed-readout-reconstruction--40649e274694102421ba1abf.md) | 191 | `result-track:40649e274694102421ba1abf10d4dee679454f21cee3f725950dcfba000fe35f` |
| 19 | `theorem` | [gram_residual_nonnegative](../../../../mathematics/Analysis/Inequalities/DiscreteEnergyBalance.lean/declarations/gram-residual-nonnegative--fc0c654de5de31a9963af51d.md) | 200 | `result-track:fc0c654de5de31a9963af51dd86f2b4f9e8bc28d0393f1e4adb57251eca2e671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
