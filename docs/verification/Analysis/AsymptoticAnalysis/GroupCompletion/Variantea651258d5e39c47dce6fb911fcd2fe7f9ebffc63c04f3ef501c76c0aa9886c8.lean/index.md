# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GroupCompletion.Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b055d1cb8680d612d0ca8bd17a670e5991db9a8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b055d1cb8680d612d0ca8bd17a670e5991db9a8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupCompletion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_iff_hasSum_compl](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/declarations/hassum-iff-hassum-compl--4f107d8542929c39429a47dc.md) | 27 | `result-track:4f107d8542929c39429a47dcdd66034aba2b3bd6c2bade4a390eaa34816adb6a` |
| 2 | `theorem` | [summable_iff_summable_compl_and_tsum_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/declarations/summable-iff-summable-compl-and-tsum-mem--6cf8901fb53687d4ecad5f42.md) | 32 | `result-track:6cf8901fb53687d4ecad5f42c6077628b65d1347358658bf52e219d365f6c3a9` |
| 3 | `theorem` | [summable_iff_cauchySeq_finset_and_tsum_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/declarations/summable-iff-cauchyseq-finset-and-tsum-mem--4b0810b623b51a2b8cd9f576.md) | 40 | `result-track:4b0810b623b51a2b8cd9f576502f0764ba486395815d241eaef740ef93f223cf` |
| 4 | `theorem` | [Summable.toCompl_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/GroupCompletion/Variantea651258d5e39c47dce6fb911fcd2fe7f9ebffc63c04f3ef501c76c0aa9886c8.lean/declarations/summable-tocompl-tsum--6eb3f21adc65c3653227b90f.md) | 57 | `result-track:6eb3f21adc65c3653227b90f990cf969d4ff54258dbc40f88db51d5ad63dd3ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
