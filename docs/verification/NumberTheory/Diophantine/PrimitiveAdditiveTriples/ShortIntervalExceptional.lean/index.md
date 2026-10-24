# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ShortIntervalExceptional

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fcdd56dd462c694552c9c4aef2c7080ce594c21",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fcdd56dd462c694552c9c4aef2c7080ce594c21`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicPublic`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) — import line 14; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nStarTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstartriples--4c52cf60f836be52fbed3afd.md) | 32 | `declaration-track:4c52cf60f836be52fbed3afdca287d7804cf1521c1383ac7da81c3c4d59e5f4a` |
| 2 | `theorem` | [mem_nStarTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/mem-nstartriples--8c680adf2303ab8dbf2f19f6.md) | 40 | `result-track:8c680adf2303ab8dbf2f19f6009ce730fd3ae045d3f32323c166f192fb1a88b5` |
| 3 | `def` | [nStarCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstarcount--e3e29cc2f6459fde92698e2c.md) | 51 | `declaration-track:e3e29cc2f6459fde92698e2c3cf13b40e44da8db34477d7cd0cda3f73fa6d1c4` |
| 4 | `theorem` | [nStarTriples_subset_boundedTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstartriples-subset-boundedtriples--3effbb45222ffd48265956a4.md) | 54 | `result-track:3effbb45222ffd48265956a44144e066060d249e6e48eca6f5086d7f99e2d3db` |
| 5 | `theorem` | [nStarTriples_subset_covered](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstartriples-subset-covered--717a9545b978621e3ca6e88b.md) | 61 | `result-track:717a9545b978621e3ca6e88bb29e6da16d59879f41c545953af003d5049d32d4` |
| 6 | `theorem` | [nStarCount_le_parameter_mul_sup](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstarcount-le-parameter-mul-sup--4178cd59804911751a20f5a3.md) | 72 | `result-track:4178cd59804911751a20f5a34514f00ed6fdb8054dd8dc09e8828edd2573c95f` |
| 7 | `theorem` | [nStarCount_le_explicit_parameter_bound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean/declarations/nstarcount-le-explicit-parameter-bound--cc20d49feaf4382bd5ff0095.md) | 85 | `result-track:cc20d49feaf4382bd5ff00955d8dd6c3158fcc65284ff7f5b8303cd12fc71e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
