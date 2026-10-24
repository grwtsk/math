# Verification target: GRWTSK.Algebra.Module.Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "336b4385b9a3f9cff61b4948da6ef195e41dcb1b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Module/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ModuleTheory/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean/index.md) · [Full source](../../../../mathematics/Algebra/ModuleTheory/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `336b4385b9a3f9cff61b4948da6ef195e41dcb1b`.

Source path: `GRWTSK/Algebra/Module/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Module/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Ico_by_parts](../../../../mathematics/Algebra/ModuleTheory/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean/declarations/sum-ico-by-parts--fb13ab465da9285e581ca13d.md) | 29 | `result-track:fb13ab465da9285e581ca13d1e30a279e4b6f87b6d594696cd1acbb64512173c` |
| 2 | `theorem` | [sum_Ioc_by_parts](../../../../mathematics/Algebra/ModuleTheory/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean/declarations/sum-ioc-by-parts--d138ee326e08bcac143f5845.md) | 52 | `result-track:d138ee326e08bcac143f5845035cd8b4aa81de4f0bf22260a09dcd825ff2798f` |
| 3 | `theorem` | [sum_range_by_parts](../../../../mathematics/Algebra/ModuleTheory/Varianta68d92a60168de697964248f330ae0fa6c02e736b969970b2bd3bbbc90ba7a67.lean/declarations/sum-range-by-parts--6cff5aca4e6c3ad25e210c13.md) | 62 | `result-track:6cff5aca4e6c3ad25e210c13c29c6d513cb5d9a7a61af0dbc786bc3d0a72178a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
