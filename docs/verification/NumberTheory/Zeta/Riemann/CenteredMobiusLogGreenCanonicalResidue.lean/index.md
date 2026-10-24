# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalResidue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b1ac6239c36988faf6579aa0eb4370a3925e9c1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b1ac6239c36988faf6579aa0eb4370a3925e9c1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalFiniteEnergy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalFiniteEnergy.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenCenteredResidueLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencenteredresiduelower--6706fcfd96bab16e6cb589bc.md) | 16 | `declaration-track:6706fcfd96bab16e6cb589bca27936eeada68d60014726d4324721555940ac29` |
| 2 | `def` | [greenCenteredResidueUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencenteredresidueupper--b567c2d88602ee1edf0bf1b2.md) | 19 | `declaration-track:b567c2d88602ee1edf0bf1b27c4c7f8e3d8c69ab5e1d3046db723c9750643a48` |
| 3 | `def` | [GreenCanonicalResidueCondition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresiduecondition--c81df8bb509cd4ff12aaa6ef.md) | 22 | `declaration-track:c81df8bb509cd4ff12aaa6ef1a858756b74fe560cf21c7a22b5c309bbe9e79b7` |
| 4 | `def` | [greenCanonicalResidue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresidue--28a15762c7503e1f55d43076.md) | 27 | `declaration-track:28a15762c7503e1f55d430766d53e32d545003dd77861520f171ec5e0c951195` |
| 5 | `def` | [greenCanonicalQuotient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalquotient--735fb454d4d7a85993a92d63.md) | 31 | `declaration-track:735fb454d4d7a85993a92d63c6d618c563581f6e486275f500f9b8aa89644758` |
| 6 | `theorem` | [greenCanonicalResidue_range](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresidue-range--8772f72856a6026050d677ee.md) | 34 | `result-track:8772f72856a6026050d677ee9256261b17ca0f7702f2d069763d091a77943495` |
| 7 | `theorem` | [greenCanonicalResidue_mod](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresidue-mod--98c73ab23659b6de4a0b4ecc.md) | 48 | `result-track:98c73ab23659b6de4a0b4ecc7c1113fc0fca3211b16947293285353812f7ded5` |
| 8 | `theorem` | [greenCanonical_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonical-decomposition--deb4ce2e834192e41f562471.md) | 60 | `result-track:deb4ce2e834192e41f562471f2b7e3ab3328512f539e727d6dba95d9abd51e7d` |
| 9 | `theorem` | [greenCanonicalResidue_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresidue-unique--bc94370a7f27f5da94cc2cb2.md) | 75 | `result-track:bc94370a7f27f5da94cc2cb2f0d707f81035f97ace91071ad10f93419a60c789` |
| 10 | `theorem` | [greenCanonicalResidue_eq_of_condition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/declarations/greencanonicalresidue-eq-of-condition--781715e5edb641acf519f213.md) | 103 | `result-track:781715e5edb641acf519f213506117c9e76317058144a3838864cf7afe5313f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
