# Verification target: GRWTSK.Algebra.UniversalCoefficient.Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0521bc46e1b18a1795456bd3ee7356c5d7fab2c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/index.md) · [Full source](../../../../mathematics/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0521bc46e1b18a1795456bd3ee7356c5d7fab2c`.

Source path: `GRWTSK/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.TorsionLedger` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniversalCoefficientTorsionTransfer](../../../../mathematics/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/declarations/universalcoefficienttorsiontransfer--f11856d8521e184a8b8fdc0d.md) | 30 | `declaration-track:f11856d8521e184a8b8fdc0d17e6dc43fbe47443b739903aafe5cf59793249da` |
| 2 | `def` | [cohomologyDegree](../../../../mathematics/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/declarations/cohomologydegree--e5e6aaddce3f46fb843103b7.md) | 71 | `declaration-track:e5e6aaddce3f46fb843103b77a147d56de4e55fcd086662240c3b8e647cf9a44` |
| 3 | `instance` | [instFiniteIntegralTorsion](../../../../mathematics/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/declarations/instfiniteintegraltorsion--c22baa77e5c35396aed6d2b8.md) | 75 | `declaration-track:c22baa77e5c35396aed6d2b8d8ffdab15c01f4ec93fd1fc7d2216080512e2060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
