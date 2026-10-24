# Verification target: GRWTSK.Analysis.MeasureTheory.RadonNikodym.Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccfeaaf21f44042ec63d19df1630a7479c450bfa",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccfeaaf21f44042ec63d19df1630a7479c450bfa`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.CountableSeparating` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean/declarations/singularpart--8e1e60b5c7ed146460a2e18a.md) | 34 | `result-track:8e1e60b5c7ed146460a2e18ab6df82c2cd57256345bfd67531286df350c09905` |
| 2 | `theorem` | [withDensity_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean/declarations/withdensity-rnderiv--0e2ef5051af8de78ec51147a.md) | 56 | `result-track:0e2ef5051af8de78ec51147a61e57608a62ee746299f449feee16ed1c2e22cf4` |
| 3 | `theorem` | [rnDeriv_comp_aeEq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant3aec2ece9a8988612d62b80350e669c37a5cae3dc7812215a310f87bc6cfee4d.lean/declarations/rnderiv-comp-aeeq--77db8de5f074fa71ddf65662.md) | 68 | `result-track:77db8de5f074fa71ddf656625ee053efd790659d09b1b87bd2e5f5859844b4c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
