# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dfb3e0b366461e3fd40c78759b8b62bccc466b0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dfb3e0b366461e3fd40c78759b8b62bccc466b0`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/instance--de012d785f0ccdc10fce3dc5.md) | 30 | `declaration-track:de012d785f0ccdc10fce3dc5479dc4e55a6d69cbd000229e2e4f008531a7da0b` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/coe-one--b4d4a0f6d32b3585ca51420d.md) | 35 | `result-track:b4d4a0f6d32b3585ca51420dbdb2ad7562a456ecf640b7dd4d1c636aef89f2d1` |
| 3 | `theorem` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/mem-one--eef657c55ecc6ed88524c245.md) | 39 | `result-track:eef657c55ecc6ed88524c245f9047d7017596914840b8dccec55c4f307ac53a5` |
| 4 | `theorem` | [subset_coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/subset-coe-one--0bcd778683dfa31e4eec3265.md) | 42 | `result-track:0bcd778683dfa31e4eec3265411da77e32a484f94ae050cfc4826af91b7198fd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/instance--a1cc7436ce9e5950268da19d.md) | 51 | `declaration-track:a1cc7436ce9e5950268da19d647d33030faf699bd0d565ee8655def8286d6d35` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/coe-mul--1aa292d814219d409f684804.md) | 58 | `result-track:1aa292d814219d409f684804d86bf959818b52fed5e85e666613cb7727e43e94` |
| 7 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/mem-mul--ebeb031ef314c0838b4ae0a1.md) | 61 | `result-track:ebeb031ef314c0838b4ae0a1b4484be9723b617372ce301b8b315a2a58ed6992` |
| 8 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/muloneclass--6e5f872ffd94ead16339719e.md) | 71 | `declaration-track:6e5f872ffd94ead16339719e771646375b7e5caf13bb790a191078ff8c572247` |
| 9 | `instance` | [semiGroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/semigroup--8c597ee86fac27e5e0034e0a.md) | 96 | `declaration-track:8c597ee86fac27e5e0034e0affcb7bf864b6f0635c6d3a67ac6c68df81c0e194` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/instance--ccaa3d3f9eeb7d08b1e3b347.md) | 106 | `declaration-track:ccaa3d3f9eeb7d08b1e3b34742016419cbc3525974cbea14b69177ec3976bea5` |
| 11 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/coe-pow--348347d7ac00b091517fad41.md) | 110 | `result-track:348347d7ac00b091517fad41e7d892e55b126c7244d9becd271c259c0608f7cc` |
| 12 | `theorem` | [subset_coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/declarations/subset-coe-pow--53a43702485f04dee7a6a209.md) | 116 | `result-track:53a43702485f04dee7a6a2094ed3bbe2c5da4d49da0a28122a502efb2c041734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
