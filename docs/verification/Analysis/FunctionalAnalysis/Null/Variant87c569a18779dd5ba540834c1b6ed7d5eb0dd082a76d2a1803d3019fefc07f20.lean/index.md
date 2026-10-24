# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Null.Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b66d8e690a228012c407d42ae8eba66d4866c6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b66d8e690a228012c407d42ae8eba66d4866c6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Raw` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawEnergyZero_orthogonal_all](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/rawenergyzero-orthogonal-all--15e05b966fbfc9d1b3d8bd3c.md) | 23 | `result-track:15e05b966fbfc9d1b3d8bd3c61e63d301357dbf4f089273c01081b7d198d1288` |
| 2 | `def` | [kernelNullSubmodule](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/kernelnullsubmodule--0a3b08ccb1bfce11a3005949.md) | 34 | `declaration-track:0a3b08ccb1bfce11a3005949b5df961b3b230fd723d6b1a2630832b1ac3172c4` |
| 3 | `theorem` | [mem_kernelNullSubmodule_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/mem-kernelnullsubmodule-iff--03ccc865c58a1486084e52e7.md) | 50 | `result-track:03ccc865c58a1486084e52e723aacb05ba4734b99050ead4361d605550651712` |
| 4 | `theorem` | [null_orthogonal_all](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/null-orthogonal-all--36da4f598a7b0c63f132141d.md) | 55 | `result-track:36da4f598a7b0c63f132141d911be3536c7443b09fb75a79eb5b5baa09430dcf` |
| 5 | `theorem` | [inner_self_eq_zero_iff_mem_kernelNullSubmodule](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/inner-self-eq-zero-iff-mem-kernelnullsubmodule--4a9076af7b975115f037ee2b.md) | 63 | `result-track:4a9076af7b975115f037ee2bdfe5acfaf46e45f079e9b1d987970314669d0f2d` |
| 6 | `theorem` | [rawInner_eq_of_sub_mem_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/rawinner-eq-of-sub-mem-left--e92b4362edffdaac1cf7a6f6.md) | 70 | `result-track:e92b4362edffdaac1cf7a6f6293c879c59d8954c32891c123b603d584f51bb5b` |
| 7 | `theorem` | [rawInner_eq_of_sub_mem_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Null/Variant87c569a18779dd5ba540834c1b6ed7d5eb0dd082a76d2a1803d3019fefc07f20.lean/declarations/rawinner-eq-of-sub-mem-right--80b8bb118fe07e9195fcec60.md) | 83 | `result-track:80b8bb118fe07e9195fcec6001d419b5f3fa0c1e69b83d079fed4048acfc648f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
