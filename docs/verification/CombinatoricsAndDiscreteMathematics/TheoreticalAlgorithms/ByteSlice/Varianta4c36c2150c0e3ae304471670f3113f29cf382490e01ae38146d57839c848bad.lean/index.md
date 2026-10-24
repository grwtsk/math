# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteSlice.Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4abc7342fe347d2cd888179fc4ef88e1da78d85",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4abc7342fe347d2cd888179fc4ef88e1da78d85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/isempty--4b448dd157f7857f40a7b295.md) | 23 | `declaration-track:4b448dd157f7857f40a7b2958497fbde2bf18be1584ca970aac0dd83f97afadd` |
| 2 | `theorem` | [stop_eq_start_add_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/stop-eq-start-add-size--b0519ff4ea091f3917c80e65.md) | 25 | `result-track:b0519ff4ea091f3917c80e65acb5a49b4cbdb467ee4bf65a06740638009afaf1` |
| 3 | `abbrev` | [pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/pop--b41f4eab0d65f133888e259e.md) | 29 | `declaration-track:b41f4eab0d65f133888e259e5c3fd40f55b44fbc6093af93792fc5d626e64c8d` |
| 4 | `abbrev` | [popFront](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/popfront--69b9cc8ed3f137f91ae90aee.md) | 33 | `declaration-track:69b9cc8ed3f137f91ae90aee63f89d7510d2deceee2fd0bee22fb4f966965466` |
| 5 | `def` | [foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/foldlm--b9def7e15d24a913d9abee87.md) | 38 | `declaration-track:b9def7e15d24a913d9abee8799caab7268cb99be198a55e1f02eb8d15ea3807d` |
| 6 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/foldl--0a24074381360a97033a3013.md) | 43 | `declaration-track:0a24074381360a97033a301304a4634e132730a2256adeb0c48454d4f5912954` |
| 7 | `def` | [forIn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/forin--77177f2b733e84839a688885.md) | 48 | `declaration-track:77177f2b733e84839a688885ed2a8e51b2012b7b51c406d47d0be4c110248e2c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/instance--ff10b17e1b048805f90e547d.md) | 60 | `declaration-track:ff10b17e1b048805f90e547dce49af8b5929307866ab2cdfb4a84885ca725389` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/instance--baf5f900d56f914013d47772.md) | 63 | `declaration-track:baf5f900d56f914013d477720f05055a2f96c3a6f53f195c8f303197882705ef` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteSlice/Varianta4c36c2150c0e3ae304471670f3113f29cf382490e01ae38146d57839c848bad.lean/declarations/instance--58f1f170a6277981ac001f68.md) | 66 | `declaration-track:58f1f170a6277981ac001f6891b8c9fb489d92029959cc7245bf333a8ec95c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
