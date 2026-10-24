# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CountKernel.Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939193eb909504de26304c17db9b6d7e48d59ca9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939193eb909504de26304c17db9b6d7e48d59ca9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_stieltjes_20261004.CountOccurrences` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positiveoccurrence--83a6aa9798390742694011ee.md) | 25 | `declaration-track:83a6aa9798390742694011ee64586e7b97726f1572253f0199653f8cd23cd782` |
| 2 | `def` | [positiveOrdinate](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positiveordinate--d9abcdc81b6b90e13854bffe.md) | 27 | `declaration-track:d9abcdc81b6b90e13854bffe437cf546e339caa8732db6ba843386ae4bc3492e` |
| 3 | `def` | [positiveClosedCountSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positiveclosedcountset--eb0c5dbb24121a8685cc40f2.md) | 29 | `declaration-track:eb0c5dbb24121a8685cc40f2f1c177cb037f3bbcb2d72176b13f8eb9986dfd55` |
| 4 | `def` | [positiveClosedCountKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positiveclosedcountkernel--df32ea97e91eb1cbc6077fa8.md) | 32 | `declaration-track:df32ea97e91eb1cbc6077fa8cd6b67a70347d02e2f8cd2414b9a9e33ba25e721` |
| 5 | `def` | [positiveClosedWindowEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positiveclosedwindowequiv--2f06eacddfac4101c72177cd.md) | 36 | `declaration-track:2f06eacddfac4101c72177cd59d847204a958ca01545609e692363c3f042ff39` |
| 6 | `theorem` | [positive_closed_count_set_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positive-closed-count-set-finite--6104236508513cf28e49bc03.md) | 43 | `result-track:6104236508513cf28e49bc03e86d08935b569eb79b6c8f3386a961c4437991c2` |
| 7 | `theorem` | [positive_closed_count_kernel_hasFiniteSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positive-closed-count-kernel-hasfinitesupport--f4ddb156f5c0adab699fa870.md) | 49 | `result-track:f4ddb156f5c0adab699fa87080241ce8e24605171c3a2a0fd81d82e0c4a29f89` |
| 8 | `theorem` | [positive_closed_count_kernel_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positive-closed-count-kernel-summable--45bc0fb5afcbdf171f8b4149.md) | 58 | `result-track:45bc0fb5afcbdf171f8b414999e1e712cd69018a923a087083f769360f409e6b` |
| 9 | `theorem` | [positive_closed_count_kernel_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positive-closed-count-kernel-tsum--c15080fb12c89a81a70f73aa.md) | 64 | `result-track:c15080fb12c89a81a70f73aa099ac345d7c84ae0739111f56d628bcbfb741737` |
| 10 | `def` | [positiveStrictTailEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positivestricttailequiv--7bc0bc31ee5c4ad44a5525cd.md) | 81 | `declaration-track:7bc0bc31ee5c4ad44a5525cd0b2089ac993f93d4a102618b5188fe1d4f798c66` |
| 11 | `theorem` | [positive_strict_tail_tsum_transport](../../../../../mathematics/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/declarations/positive-strict-tail-tsum-transport--bd0a4cdcbc4d3c7ccac6e2fb.md) | 91 | `result-track:bd0a4cdcbc4d3c7ccac6e2fb0c18762433b07484acf87b264d8249637531efe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
