# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cc17f5a5cf27b8eaf894cfc835d26c4716a9c3f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cc17f5a5cf27b8eaf894cfc835d26c4716a9c3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.CountableCover` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Perfect` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuum_le_cardinal_of_nontriviallyNormedField](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/continuum-le-cardinal-of-nontriviallynormedfield--bd1b5a7679ac122d015ba6fc.md) | 30 | `result-track:bd1b5a7679ac122d015ba6fcfd3a627f541a05b71b4fc2c1a30037843986de70` |
| 2 | `theorem` | [continuum_le_cardinal_of_module](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/continuum-le-cardinal-of-module--a0455918e6adf8a62092c217.md) | 50 | `result-track:a0455918e6adf8a62092c21793dd08d2a6d23b6b9fdeba56442c2a8647a763ec` |
| 3 | `lemma` | [cardinal_eq_of_mem_nhds_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/cardinal-eq-of-mem-nhds-zero--09678efcbd4c644416529573.md) | 61 | `result-track:09678efcbd4c6444165295735e40646637cad27d8decff444da4f633d4d05fc9` |
| 4 | `theorem` | [cardinal_eq_of_mem_nhds](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/cardinal-eq-of-mem-nhds--5637dfdc9881043df12fc9ac.md) | 98 | `result-track:5637dfdc9881043df12fc9aca32193a923f7099cee7857362183f13b6faa5e75` |
| 5 | `theorem` | [cardinal_eq_of_isOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/cardinal-eq-of-isopen--f8f026ed677bf55fcac9253d.md) | 111 | `result-track:f8f026ed677bf55fcac9253d6a7e3ae4dcfe1e568053ef0e14d9eefcc1fa1947` |
| 6 | `theorem` | [continuum_le_cardinal_of_isOpen](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/continuum-le-cardinal-of-isopen--5368cd46e8538aacc19735b0.md) | 120 | `result-track:5368cd46e8538aacc19735b0888bfb0070d1f0c321da55e212537a3abc86d5a5` |
| 7 | `theorem` | [Set.Countable.dense_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/declarations/set-countable-dense-compl--a7faee7e08b1638e8909e321.md) | 128 | `result-track:a7faee7e08b1638e8909e3217aa1a645670a6f4f2056eac07f7a27ee40e50e48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
