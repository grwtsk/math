# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebedf0c84d50b5aa24c3f2678b1f02b017fd68f7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebedf0c84d50b5aa24c3f2678b1f02b017fd68f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Monadic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_mem_range'_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/mem-of-mem-range-aux--355af1bbdd576f94b82fa30b.md) | 28 | `result-track:355af1bbdd576f94b82fa30be9068d1db55690ac10456841cc13fd1f37e05bb5` |
| 2 | `theorem` | [mem_of_mem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/mem-of-mem-range--8eb28d22dcfcd240d2cc33f6.md) | 38 | `result-track:8eb28d22dcfcd240d2cc33f6389cbff622ccc174236028c4ec2d696db5dbd8ae` |
| 3 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/size-eq--0d726f957cf5a83a266e90e2.md) | 42 | `result-track:0d726f957cf5a83a266e90e263af595ee249e8c6af1757150b135ac14982e2f0` |
| 4 | `theorem` | [forIn'_loop_eq_forIn'_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/forin-loop-eq-forin-range--770a11f3a1381791f14e80e4.md) | 62 | `result-track:770a11f3a1381791f14e80e45ef1b6c59d972a2543754d043128931f18b35816` |
| 5 | `theorem` | [forIn'_eq_forIn'_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/forin-eq-forin-range--f3251d71821b53c0ab5ee24e.md) | 80 | `result-track:f3251d71821b53c0ab5ee24ed0549559824132e0474014575e7d0f06372d2ecb` |
| 6 | `theorem` | [forIn_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/forin-eq-forin-range--b331eac84e7e25435a8608d0.md) | 88 | `result-track:b331eac84e7e25435a8608d0bde94f474d1c1af31c1de188d285cb063802e276` |
| 7 | `theorem` | [forM_loop_eq_forM_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/form-loop-eq-form-range--5c626f4b25e23db63b0fe200.md) | 93 | `result-track:5c626f4b25e23db63b0fe200bae04bcd8375f66dabc8b23f80debe42cfda4338` |
| 8 | `theorem` | [forM_eq_forM_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant769dc70ccc7012f99400748758bccfb4c106150f7a2fafe06809549478c0010b.lean/declarations/form-eq-form-range--d0668580237365630e876302.md) | 106 | `result-track:d0668580237365630e8763022e465fca0d96845c6164dd0501d58eb0452baf28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
