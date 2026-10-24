# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa2c8538790dcaf17ddf1aee54060f307607b3f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa2c8538790dcaf17ddf1aee54060f307607b3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_lt_length_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/countp-lt-length-iff--bad85e5336fa456ed145c582.md) | 33 | `result-track:bad85e5336fa456ed145c582a0f30d450b8bc5edcac8e401df0673b5f2ae8178` |
| 2 | `theorem` | [count_lt_length_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/count-lt-length-iff--c76d2e8779c64a78f9e50b15.md) | 40 | `result-track:c76d2e8779c64a78f9e50b15d7ec101a8ee57e26b1e041067e1329a00d075482` |
| 3 | `lemma` | [countP_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/countp-erase--97fedb2c1014d28125a7827e.md) | 42 | `result-track:97fedb2c1014d28125a7827e25443d30f441769b8cb665af8db106f7c46bb9b8` |
| 4 | `lemma` | [count_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/count-diff--4c0fc2c514b140b5a918f1b8.md) | 47 | `result-track:4c0fc2c514b140b5a918f1b86272af796a1fa8c658584dccc614cf8abdc2bc75` |
| 5 | `lemma` | [countP_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/countp-diff--fedac5e392196119eac7adf3.md) | 54 | `result-track:fedac5e392196119eac7adf3ed6eae87665a4934c1537b282de86b3b9f6b26c3` |
| 6 | `theorem` | [count_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9.lean/declarations/count-map-of-injective--005d95f6773b6ae56ab0ec18.md) | 62 | `result-track:005d95f6773b6ae56ab0ec1896b06d46495381aa7fee2d17d5739ef971ae7ac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
