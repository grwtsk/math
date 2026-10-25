# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cdc33df79ecdc692115a2fe89b8d5c68b04758c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cdc33df79ecdc692115a2fe89b8d5c68b04758c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.CountableCover` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Perfect` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuum_le_cardinal_of_nontriviallyNormedField](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/continuum-le-cardinal-of-nontriviallynormedfield--97de423108c86eacda21cced.md) | 38 | `result-track:97de423108c86eacda21cced91232bbbd66034acb6236dedda523e77f43dc8aa` |
| 2 | `theorem` | [continuum_le_cardinal_of_module](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/continuum-le-cardinal-of-module--b6709f51d202e873d623acce.md) | 58 | `result-track:b6709f51d202e873d623acce437dd701775fd0843881dacd9947385a3c2ad83a` |
| 3 | `lemma` | [cardinal_eq_of_mem_nhds_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/cardinal-eq-of-mem-nhds-zero--df390ad4f93f2d1dbe16d1a3.md) | 69 | `result-track:df390ad4f93f2d1dbe16d1a3ad69caf40d5cb37436bf0e2b679bee5427aebd37` |
| 4 | `theorem` | [cardinal_eq_of_mem_nhds](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/cardinal-eq-of-mem-nhds--1763174b89dd92cdb898b8e8.md) | 106 | `result-track:1763174b89dd92cdb898b8e87b8aeddef2677c24c8a4fbce6a0753f982f74b8c` |
| 5 | `theorem` | [cardinal_eq_of_isOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/cardinal-eq-of-isopen--32abb0743d93ead90c09cb45.md) | 119 | `result-track:32abb0743d93ead90c09cb4582d039d2bbf5d5356637a976fdf94fa1ecaefa2f` |
| 6 | `theorem` | [continuum_le_cardinal_of_isOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/continuum-le-cardinal-of-isopen--d27422d16053102ccb4decf1.md) | 128 | `result-track:d27422d16053102ccb4decf13d8d93d4be8d5fb4b50a7a3e53cf47c84135526b` |
| 7 | `theorem` | [Set.Countable.dense_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4d4667ef4c356c53d4396b79b486d2a6dd663f13217b2f3c14e15e5b23fa9980.lean/declarations/set-countable-dense-compl--9daf70c99d1f9480777d1bbb.md) | 136 | `result-track:9daf70c99d1f9480777d1bbb54c99aad4a90b9fb8ec5cf480e098664c9a0576b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
