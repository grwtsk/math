# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f43411b10e375724b2e0db80ebfe73366dcdc0c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f43411b10e375724b2e0db80ebfe73366dcdc0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.DHashMap.IteratorLemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.HashSet.RawLemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/tolist-iter--1e1a7803695b5682346a5245.md) | 31 | `result-track:1e1a7803695b5682346a52458477042798a68c506293c81913d5b7fde6df07e2` |
| 2 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/tolistrev-iter--27ef3f612a7820c30045570a.md) | 37 | `result-track:27ef3f612a7820c30045570a907af58c5ba7aee3dc16b9880ad34787b2391893` |
| 3 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/toarray-iter--29fdf9655c4cae67cd800250.md) | 42 | `result-track:29fdf9655c4cae67cd8002504f764147a06de5f5baaf8d6dde73665dfe5f3193` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/tolist-iter--f9f3c7f0a0ff179fb37b5e4d.md) | 54 | `result-track:f9f3c7f0a0ff179fb37b5e4d8a11856b64e2c3486b6409d2ac4a1948658c7e2f` |
| 5 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/tolistrev-iter--5d1279af3145e7def784d043.md) | 59 | `result-track:5d1279af3145e7def784d043705ea4e8f5fa2699df88eadf39d5fe13a23efa36` |
| 6 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variant48421f954a98a2869b65eb2c268b3347b389c44a56eff9cc4abb3dc28fb85991.lean/declarations/toarray-iter--5d20bc72a2467683ab17911f.md) | 64 | `result-track:5d20bc72a2467683ab17911fd95ffe3af74560485a5aa96575914f7f66230808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
