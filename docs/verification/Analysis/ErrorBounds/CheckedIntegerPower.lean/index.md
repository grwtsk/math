# Verification target: GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68938063e5c2e993936d59c3eea3786c9c51c1ab",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/CheckedIntegerPower.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68938063e5c2e993936d59c3eea3786c9c51c1ab`.

Source path: `GRWTSK/Analysis/ErrorBounds/CheckedIntegerPower.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/CheckedIntegerPower.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness`](../../../../mathematics/Analysis/ErrorBounds/IntegerSquareWitness.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [start](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/start--0185ec3167d84486e8ef781d.md) | 24 | `declaration-track:0185ec3167d84486e8ef781ddd5d0db6828dc44dbade827ec5146de965c4582a` |
| 2 | `def` | [finish](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/finish--a8e2eabd4d97fe284ec482e8.md) | 30 | `declaration-track:a8e2eabd4d97fe284ec482e81148b6ba1c9029bc7414a3e935e90955a09a05d5` |
| 3 | `def` | [evaluate](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/evaluate--7b68f15af6e782e9393132be.md) | 35 | `declaration-track:7b68f15af6e782e9393132be5933e8c5fe0b7f0e4e4bf59550d35941810c6ce9` |
| 4 | `theorem` | [evaluate_eq_some_iff](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/evaluate-eq-some-iff--d907f87454810da31b87a787.md) | 41 | `result-track:d907f87454810da31b87a7876e38b5e4ef747fc79fdd85b0ee6d746bad3e3417` |
| 5 | `theorem` | [finish_eq_reference](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/finish-eq-reference--d6d3086cb0491c4dd4fe9df0.md) | 52 | `result-track:d6d3086cb0491c4dd4fe9df0269de51d06ec20da23a99e50000f80ace12d3e65` |
| 6 | `theorem` | [evaluate_refines](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/evaluate-refines--1ed0d6f712b507c84904e0a0.md) | 61 | `result-track:1ed0d6f712b507c84904e0a091b4be1c07719b7a4b41d7e11bbf9556a99df862` |
| 7 | `theorem` | [evaluate_sound](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/evaluate-sound--69efbdcd1734035782800e13.md) | 70 | `result-track:69efbdcd1734035782800e13a9386623dfaea2764ddec4a31dd1ed50ee328917` |
| 8 | `theorem` | [accepted_length](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/accepted-length--918ee335732180cc9655b818.md) | 75 | `result-track:918ee335732180cc9655b818c2808a2d1499200a770bdf2fcfdf79d822dd1916` |
| 9 | `theorem` | [exists_rows_iff](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/exists-rows-iff--9a7b295ba4a044176f3e93d0.md) | 82 | `result-track:9a7b295ba4a044176f3e93d0b43a551f6440553059fe498328bb2c33d0a142b4` |
| 10 | `def` | [evaluateWithin](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/evaluatewithin--6388370805024088f82166bb.md) | 95 | `declaration-track:6388370805024088f82166bbe19888bed2a8d99a6acbc2625f7b894eadfc21df` |
| 11 | `theorem` | [within_refines](../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/declarations/within-refines--46742bbd72addc9c3bcab72b.md) | 101 | `result-track:46742bbd72addc9c3bcab72b5fd8be343d0a0b642cc45929dfd65a7afe87c053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
