# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca1e1dcf8ed9120e41e6bac9350e72e87f94834b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca1e1dcf8ed9120e41e6bac9350e72e87f94834b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.IsHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/submodule-ishomogeneous--a34ff3e36a627a256dd384a9.md) | 56 | `declaration-track:a34ff3e36a627a256dd384a9671b3f3d46fe7c822e8deda97772bd6a59b85977` |
| 2 | `theorem` | [Submodule.IsHomogeneous.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/submodule-ishomogeneous-mem-iff--9168498190613ae9a7adcfaf.md) | 60 | `result-track:9168498190613ae9a7adcfaf64a0334dc57ecdf25a5fba515cf2281a17d1b34d` |
| 3 | `structure` | [HomogeneousSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule--b229c1092fd1ee873c497cc1.md) | 68 | `declaration-track:b229c1092fd1ee873c497cc1b95f40576dbfae2a2016983e61963a96a8757d95` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/instance--dcb029f059898a1b386dcf0a.md) | 80 | `declaration-track:dcb029f059898a1b386dcf0affff835179dbb15b679bfad0a94e18acc55449a9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/instance--f9d3ae59c5de68f3e811c5d1.md) | 86 | `declaration-track:f9d3ae59c5de68f3e811c5d10496ab227884a6e3fcdf4945ebbc0c7d348f8c29` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/instance--e2a4adff96b019c0d2d920b8.md) | 90 | `declaration-track:e2a4adff96b019c0d2d920b89f2256d16d938b77986a5d91ba58c7a600727601` |
| 7 | `theorem` | [HomogeneousSubmodule.isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-ishomogeneous--4e4b411f83241882fd98656c.md) | 96 | `result-track:4e4b411f83241882fd98656c30f19649a04350e69c5bb64a4878df163eff16d3` |
| 8 | `theorem` | [HomogeneousSubmodule.toSubmodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-tosubmodule-injective--9c1e4dd8cf95f5010568db36.md) | 100 | `result-track:9c1e4dd8cf95f5010568db36551f3d7cf0fd0ceff9df9ca83026d2399e1197c2` |
| 9 | `instance` | [HomogeneousSubmodule.setLike](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-setlike--9c867bdfddd3ebe1104e4417.md) | 105 | `declaration-track:9c867bdfddd3ebe1104e4417941052bde3948c8b49347688da251ef920423dc3` |
| 10 | `theorem` | [HomogeneousSubmodule.ext](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-ext--e3384d3d00063918445496b6.md) | 110 | `result-track:e3384d3d00063918445496b6030396c7426bd03b404460387b6fd2bdc13ecd19` |
| 11 | `theorem` | [HomogeneousSubmodule.ext'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-ext--938b226630c98089b8bbbfcb.md) | 117 | `result-track:938b226630c98089b8bbbfcb9a67eb816780c3f709348a96046379eea043d3e5` |
| 12 | `theorem` | [HomogeneousSubmodule.mem_toSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant7fa57fc09d44d66c9b6a790ab0837e4057b62635773c4d7200cd94901301ed44.lean/declarations/homogeneoussubmodule-mem-tosubmodule-iff--af38e3a3aebbbe73bf0a7dc9.md) | 126 | `result-track:af38e3a3aebbbe73bf0a7dc9b42642363e8255924b9ca1dd0a33a0f7b31cc9c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
