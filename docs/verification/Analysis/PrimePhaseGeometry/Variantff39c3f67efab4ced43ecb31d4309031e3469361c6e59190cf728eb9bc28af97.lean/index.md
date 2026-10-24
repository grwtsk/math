# Verification target: GRWTSK.Analysis.PrimePhaseGeometry.Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4174357179a9e4962fcf6a571f6cd68575846a0d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/index.md) · [Full source](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4174357179a9e4962fcf6a571f6cd68575846a0d`.

Source path: `GRWTSK/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLog](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/primelog--881d9f475316e2a4d6c1ed90.md) | 18 | `declaration-track:881d9f475316e2a4d6c1ed90e3a7bb100e37f74283631d44eaaeec36567091f9` |
| 2 | `def` | [phase](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/phase--5307aa43d185f7ced027566d.md) | 20 | `declaration-track:5307aa43d185f7ced027566dddb550d27d0f333be6b5adeb073fd886f02249b6` |
| 3 | `def` | [phaseDistance](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/phasedistance--d1f6babf1bd8999fbbc408aa.md) | 23 | `declaration-track:d1f6babf1bd8999fbbc408aac1c8fd35185c3846a11ee61af577e9d688a89983` |
| 4 | `def` | [logLength](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/loglength--83912f1b06f9fad171ebd055.md) | 25 | `declaration-track:83912f1b06f9fad171ebd05519867abb0e5b8aa9f1875a2e495383b88d67b9fa` |
| 5 | `def` | [matveevExponent](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/matveevexponent--deff221dc08913a8a76febfa.md) | 27 | `declaration-track:deff221dc08913a8a76febfa8487bf820997cc2ac0a99734e496430bd1e8c837` |
| 6 | `def` | [certificateConstant](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/certificateconstant--e1b8bb7aa4b7ae1b74d5c713.md) | 29 | `declaration-track:e1b8bb7aa4b7ae1b74d5c7139b8a620fe179829c50a9a62e16cddaa306f76c2b` |
| 7 | `def` | [PhaseCertificate](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/phasecertificate--da5de995dc7813e8bb5038cb.md) | 33 | `declaration-track:da5de995dc7813e8bb5038cbd900a81d2ed0eaf8fed887c920ed1713907d2c65` |
| 8 | `theorem` | [logLength_positive](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/loglength-positive--a6e5d0410c3d8f005b583c0f.md) | 37 | `result-track:a6e5d0410c3d8f005b583c0fe1da69b81cd109f75387cf87d0d83958244d5e97` |
| 9 | `theorem` | [certificateConstant_positive](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/certificateconstant-positive--d199b81061cabbefb1291f19.md) | 43 | `result-track:d199b81061cabbefb1291f19cc777ddc22bda7c86fe93ddd6fc8bd30ccda3d7f` |
| 10 | `theorem` | [phase_distance_sq](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/phase-distance-sq--6eebba9ea1c8b87ae29905f8.md) | 47 | `result-track:6eebba9ea1c8b87ae29905f8b411f02071ecfd3f8bb8cc486462add75e302c24` |
| 11 | `theorem` | [unit_phase_difference](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/unit-phase-difference--c33759b33fcb4560bf4141c8.md) | 53 | `result-track:c33759b33fcb4560bf4141c8aeff7b8bfae115bbef38efb32282c1179ee40533` |
| 12 | `theorem` | [unit_phase_difference_le](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/unit-phase-difference-le--df51a77d7ac26b74c8e7df52.md) | 65 | `result-track:df51a77d7ac26b74c8e7df52f6bc56a36bbfb7725794127c1cba8b1951b433b7` |
| 13 | `theorem` | [phase_distance_translation](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/phase-distance-translation--ce1fc211d648eae03e2354cf.md) | 71 | `result-track:ce1fc211d648eae03e2354cf7ffc2e523c62784fbdc224629f880c8b42b186c5` |
| 14 | `theorem` | [coordinate_inverse](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/coordinate-inverse--055eecc49d5d6c452b4bace0.md) | 82 | `result-track:055eecc49d5d6c452b4bace0543f91c91564088a45cfa40367664d34608b62fc` |
| 15 | `theorem` | [inverse_cost_at_polynomial_cutoff](../../../../mathematics/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/declarations/inverse-cost-at-polynomial-cutoff--3ca1b6947ec735731768ea97.md) | 94 | `result-track:3ca1b6947ec735731768ea979aea64b34d256b708c27c68156287fc693c889ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
