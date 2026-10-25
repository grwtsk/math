# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5b37b23ecc7d62c79f01d977985f0e0818351d1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5b37b23ecc7d62c79f01d977985f0e0818351d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.append_eq_toIter_append_toIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-append-eq-toiter-append-toiterm--42ae0fad7936709593ea2c4e.md) | 31 | `result-track:42ae0fad7936709593ea2c4ea110a5778dfbf9fd6ef078abae0358af18bc9233` |
| 2 | `theorem` | [Iter.Intermediate.appendSnd_eq_toIter_appendSnd_toIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-intermediate-appendsnd-eq-toiter-appendsnd-toiterm--c5cc2248e0723164b9d15af8.md) | 37 | `result-track:c5cc2248e0723164b9d15af872224d8cdde610c3ef52c5caf80495387a4e6915` |
| 3 | `theorem` | [Iter.step_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-step-append--b4f350986470edbc7a4c0d17.md) | 43 | `result-track:b4f350986470edbc7a4c0d179be69a6dd492a89ea084c1e8a84eee89286e343e` |
| 4 | `theorem` | [Iter.Intermediate.step_appendSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-intermediate-step-appendsnd--b4d426a1ccb91cedf1bda824.md) | 56 | `result-track:b4d426a1ccb91cedf1bda8241f3314508d1138815fc5775a1a61f51471859475` |
| 5 | `theorem` | [Iter.toList_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-tolist-append--fa90f27640dfa7f051e6bb9e.md) | 68 | `result-track:fa90f27640dfa7f051e6bb9e879a55d8cea6b81eb66035e9555294b37f7c6775` |
| 6 | `theorem` | [Iter.toListRev_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-tolistrev-append--8e553c7f4db452617eaedbdf.md) | 75 | `result-track:8e553c7f4db452617eaedbdf4ea92cd611673d660180972a848385f0bbf5b8af` |
| 7 | `theorem` | [Iter.toArray_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-toarray-append--0d493ba3706826c54abb0858.md) | 82 | `result-track:0d493ba3706826c54abb08589a7c858d7eaf3b0f5cfdb3850700ef7432a3b262` |
| 8 | `theorem` | [Iter.atIdxSlow?_appendSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-atidxslow-appendsnd--d1aefdac5294a2355d1f3aff.md) | 89 | `result-track:d1aefdac5294a2355d1f3aff7b759e51f4d55064a0136e4e2464de8c2d4c3e66` |
| 9 | `theorem` | [Iter.atIdxSlow?_append_of_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-atidxslow-append-of-eq-some--ee88e0d522c2968070206fa1.md) | 107 | `result-track:ee88e0d522c2968070206fa17dc6fc34174bfd672d6fa0acd13591af925ba6be` |
| 10 | `theorem` | [Iter.atIdxSlow?_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-atidxslow-append--6fd3f0c420f84b9c2ada3197.md) | 126 | `result-track:6fd3f0c420f84b9c2ada31974dc330cc770dc0277f1897617c5fcd494bd0910e` |
| 11 | `theorem` | [Iter.atIdxSlow?_append_of_productive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/declarations/iter-atidxslow-append-of-productive--3b848cff8ecba8d51e2b16ec.md) | 149 | `result-track:3b848cff8ecba8d51e2b16ecf508bc7ec8317212b302fd052e497247bd8f4fc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
