# Verification target: GRWTSK.Analysis.Birkhoff.Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bda35c04023356ee90bf1c0b0457515a966b519c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md) · [Full source](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bda35c04023356ee90bf1c0b0457515a966b519c`.

Source path: `GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Extreme` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Hall.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DoublyStochastic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_perm_eq_zero_implies_eq_zero](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/declarations/exists-perm-eq-zero-implies-eq-zero--bc67201b63d308531f525aae.md) | 55 | `result-track:bc67201b63d308531f525aaef9e8221828f0235950d5be6b5a901005d702ef84` |
| 2 | `lemma` | [doublyStochastic_sum_perm_aux](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/declarations/doublystochastic-sum-perm-aux--68ff19ad728161e19d1aacbc.md) | 93 | `result-track:68ff19ad728161e19d1aacbcef23ce9eb74f113f2c48c3ac096fbaba64b41c17` |
| 3 | `lemma` | [exists_eq_sum_perm_of_mem_doublyStochastic](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/declarations/exists-eq-sum-perm-of-mem-doublystochastic--d2232a54d99f454016dd17b8.md) | 154 | `result-track:d2232a54d99f454016dd17b8ee97c846848e5557b89461af74ab0aaf3889478e` |
| 4 | `theorem` | [doublyStochastic_eq_convexHull_permMatrix](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/declarations/doublystochastic-eq-convexhull-permmatrix--2ba7f3d5f50b576a3388ebb8.md) | 172 | `result-track:2ba7f3d5f50b576a3388ebb827a0380de10507231d0cdf1e6f85f9a4af709418` |
| 5 | `theorem` | [extremePoints_doublyStochastic](../../../../mathematics/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/declarations/extremepoints-doublystochastic--acc759667d2b3fcbe574b0c1.md) | 185 | `result-track:acc759667d2b3fcbe574b0c1cd932de83e98c692d9aa50103139c5db930a391c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
