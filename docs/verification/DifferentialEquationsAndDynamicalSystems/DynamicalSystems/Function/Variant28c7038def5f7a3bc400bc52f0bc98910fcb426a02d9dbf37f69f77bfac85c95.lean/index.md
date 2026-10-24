# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.Function.Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abced278e5d2bb2615b89b80714756d0e94c341c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abced278e5d2bb2615b89b80714756d0e94c341c`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqFun` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [QuasiErgodic.ae_eq_const_of_ae_eq_comp_of_ae_range₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/quasiergodic-ae-eq-const-of-ae-eq-comp-of-ae-range--a28ac5d4ce040ffe0713ddfd.md) | 27 | `result-track:a28ac5d4ce040ffe0713ddfd840a9625138a3ebc12f9bdb0a72e811b284e9de1` |
| 2 | `theorem` | [PreErgodic.ae_eq_const_of_ae_eq_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/preergodic-ae-eq-const-of-ae-eq-comp--376b3a3cba094d059f63298b.md) | 46 | `result-track:376b3a3cba094d059f63298b365cca73bcdf33d78de0f4f72ab184b7c53984c5` |
| 3 | `theorem` | [QuasiErgodic.ae_eq_const_of_ae_eq_comp₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/quasiergodic-ae-eq-const-of-ae-eq-comp--f5369d5688d57c5c69c18443.md) | 55 | `result-track:f5369d5688d57c5c69c18443a05c79daf57f21b34cbac767dc501638a8591852` |
| 4 | `theorem` | [Ergodic.ae_eq_const_of_ae_eq_comp₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/ergodic-ae-eq-const-of-ae-eq-comp--6afbcbb101f8c4a1e3c640a1.md) | 63 | `result-track:6afbcbb101f8c4a1e3c640a1d340f2b24383fe6461c481d081ed0bb06797d69c` |
| 5 | `theorem` | [ae_eq_const_of_ae_eq_comp_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/ae-eq-const-of-ae-eq-comp-ae--aa0269578133fa6f8ae27888.md) | 77 | `result-track:aa0269578133fa6f8ae27888f2d6e010a5f8eefae62b42cbac33b4a219449694` |
| 6 | `theorem` | [eq_const_of_compQuasiMeasurePreserving_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/eq-const-of-compquasimeasurepreserving-eq--0bfbb868be78a285f03e938b.md) | 84 | `result-track:0bfbb868be78a285f03e938b5fc6a995d799e9eaf7aff954e095da4fff531481` |
| 7 | `theorem` | [ae_eq_const_of_ae_eq_comp_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/ae-eq-const-of-ae-eq-comp-ae--ebe50c7912bffcc150ef8f0b.md) | 99 | `result-track:ebe50c7912bffcc150ef8f0b9f008282895584dfd18c39efc6254b15b5896743` |
| 8 | `theorem` | [eq_const_of_compMeasurePreserving_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant28c7038def5f7a3bc400bc52f0bc98910fcb426a02d9dbf37f69f77bfac85c95.lean/declarations/eq-const-of-compmeasurepreserving-eq--c61a4dbabd8ef43e538cac1b.md) | 103 | `result-track:c61a4dbabd8ef43e538cac1ba12817e119ec79d3e739e740f51e1af244e11ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
