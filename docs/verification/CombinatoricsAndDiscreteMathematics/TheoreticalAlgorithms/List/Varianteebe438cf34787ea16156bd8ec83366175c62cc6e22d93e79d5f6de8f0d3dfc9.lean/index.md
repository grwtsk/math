# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c47d7b6b45fda151892c9007ac82f869ca8aa299",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c47d7b6b45fda151892c9007ac82f869ca8aa299`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Producers.Monadic.List` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.step_iter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/declarations/list-step-iter-nil--fcdda4867b90b695eb94ce7f.md) | 35 | `result-track:fcdda4867b90b695eb94ce7f98d57af2ef6165e0c22eebdd3cb516737bf821de` |
| 2 | `theorem` | [List.step_iter_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/declarations/list-step-iter-cons--e04fa29895e593b1ec14de1b.md) | 40 | `result-track:e04fa29895e593b1ec14de1b364cd2f02088aa08d8cd034939166fca423d1e4e` |
| 3 | `theorem` | [List.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/declarations/list-toarray-iter--d3b7610342ab9fb85bbd0e0e.md) | 45 | `result-track:d3b7610342ab9fb85bbd0e0e446711de2340d0160077ac434f8f523c586f50bf` |
| 4 | `theorem` | [List.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/declarations/list-tolist-iter--4436ea019d609aaeeb49861a.md) | 50 | `result-track:4436ea019d609aaeeb49861ae0f0e04474d16cba1d553fe9476823e65e748228` |
| 5 | `theorem` | [List.toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianteebe438cf34787ea16156bd8ec83366175c62cc6e22d93e79d5f6de8f0d3dfc9.lean/declarations/list-tolistrev-iter--09700c82880a52f9bbf0ad09.md) | 55 | `result-track:09700c82880a52f9bbf0ad09085e70748c246715cb4b57af2ee1c1363bfb7c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
