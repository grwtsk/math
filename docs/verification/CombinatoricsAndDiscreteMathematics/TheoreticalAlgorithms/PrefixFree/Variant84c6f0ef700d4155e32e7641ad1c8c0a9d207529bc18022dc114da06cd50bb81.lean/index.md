# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrefixFree.Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64c385bb457cb25f3cdbd11349abd05c1055d199",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64c385bb457cb25f3cdbd11349abd05c1055d199`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean.json)

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
| 1 | `def` | [IsPrefixFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/declarations/isprefixfree--83c0a98ab24791773bfb945f.md) | 44 | `declaration-track:83c0a98ab24791773bfb945ff8bfb9a33fa4f06ffb95328f2999acc7023cedb4` |
| 2 | `lemma` | [IsPrefixFree.eq_singleton_empty_of_empty_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/declarations/isprefixfree-eq-singleton-empty-of-empty-mem--8e1ef028edaa8cc1db3be0c2.md) | 48 | `result-track:8e1ef028edaa8cc1db3be0c2c8486d894f3c67987787825d6d5df0bdca12fecb` |
| 3 | `lemma` | [IsPrefixFree.anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/declarations/isprefixfree-anti--87893c210418f0a4aa52f98c.md) | 54 | `result-track:87893c210418f0a4aa52f98c54173d76388eff573c5f78fb6ecc1adbc2a92c6b` |
| 4 | `theorem` | [IsPrefixFree.isUniquelyDecodable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/declarations/isprefixfree-isuniquelydecodable--656ab6f6758ff3386c8d3e79.md) | 58 | `result-track:656ab6f6758ff3386c8d3e79d2c8e198148634aed911a533cd80e7989f554fe7` |
| 5 | `theorem` | [IsPrefixFree.isUniquelyDecodable_of_nontrivial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrefixFree/Variant84c6f0ef700d4155e32e7641ad1c8c0a9d207529bc18022dc114da06cd50bb81.lean/declarations/isprefixfree-isuniquelydecodable-of-nontrivial--5f383cfad38464f5df6b529e.md) | 88 | `result-track:5f383cfad38464f5df6b529ee3ff2f18f6d4a207068e9e94926d826f4bb598eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
