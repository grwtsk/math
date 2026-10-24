# Verification target: GRWTSK.Analysis.MeasureTheory.Complex.Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f30e4443b5d751f707eb6dfd0d1ec3ac6f57fb1b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f30e4443b5d751f707eb6dfd0d1ec3ac6f57fb1b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/declarations/instance--7a7855854a6c49980a80598b.md) | 22 | `declaration-track:7a7855854a6c49980a80598b13aec98dba1d07f2660d2505cf8f2945ffce62da` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/declarations/instance--5e9860606f2525ab806b239f.md) | 25 | `declaration-track:5e9860606f2525ab806b239f3d364914e12ab660ff0b535baf078d251a1350a4` |
| 3 | `instance` | [Complex.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/declarations/complex-measurablespace--1f48d5b5f256d6f1e5f232e5.md) | 28 | `declaration-track:1f48d5b5f256d6f1e5f232e50c7ffb6594a5d58b8adb3c45202844c591685a99` |
| 4 | `instance` | [Complex.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variantdb97bfd9ef738221d6a8f923a9f7cb524a36c2141fdd70dcc7fa020d65b88870.lean/declarations/complex-borelspace--1c641d8d918191aceec86a5c.md) | 31 | `declaration-track:1c641d8d918191aceec86a5ce3d84602670162eba6767a6ac411c6b782f40fc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
