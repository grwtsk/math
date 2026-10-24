# Verification target: GRWTSK.NumberTheory.ZeroDefinitions.Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b110c43429fd3bf17b7ddbafa471803b8e0f3a5a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b110c43429fd3bf17b7ddbafa471803b8e0f3a5a`.

Source path: `GRWTSK/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ComplexAnalysis.CriticalReflection`](../../../../mathematics/Analysis/ComplexAnalysis/CriticalReflection__SourceOccurrence013a3c275aede884c0f49329.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NontrivialZetaZero](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/declarations/nontrivialzetazero--53293d53bd1b10b4e292851d.md) | 18 | `declaration-track:53293d53bd1b10b4e292851d9c6419800efe9ae548bc3e6ee4a7b01d7904073d` |
| 2 | `def` | [zeroConjugate](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/declarations/zeroconjugate--0520b5fa90ecdc3d4aa17ba4.md) | 22 | `declaration-track:0520b5fa90ecdc3d4aa17ba426a740220c9a68440dd3fb3c0a973b74e192f172` |
| 3 | `def` | [zeroReflect](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/declarations/zeroreflect--a809bccb1a6583aec4f1699a.md) | 25 | `declaration-track:a809bccb1a6583aec4f1699a3996dfc9924f5db28fa7c9cafcfe9e93b5b15e9d` |
| 4 | `def` | [rhDefect](../../../../mathematics/NumberTheory/ZeroDefinitions/Variantf60ca54226c6604f801aa4ad88b7f09375626378b907b27105aa3805aff05929.lean/declarations/rhdefect--eaf55c7fce13dbaa5ecfa157.md) | 28 | `declaration-track:eaf55c7fce13dbaa5ecfa15727f3a65bbec9e523042b45c00ba220d1359aa3e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
