# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41dca6386ae0549ea0c6df2345e5ead0eacb1119",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41dca6386ae0549ea0c6df2345e5ead0eacb1119`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem_range'_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/getelem-range-1--e0a489139c282a31f06abe69.md) | 27 | `result-track:e0a489139c282a31f06abe6938c9bcb65b914e4c20afdcdbc307b6a0867aa9fa` |
| 2 | `theorem` | [chain'_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/chain-range-succ--da0778cd8fb74f7432b59386.md) | 30 | `result-track:da0778cd8fb74f7432b593862393d811d21432a1454b7ffeb0fa6d0a07130e58` |
| 3 | `theorem` | [chain_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/chain-range-succ--d567bd110e133464d6b13ad9.md) | 39 | `result-track:d567bd110e133464d6b13ad932f6a8719f6b18c659c715f7ee5038b44f43d297` |
| 4 | `def` | [ranges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/ranges--75c862a26e73f7e877739a9f.md) | 50 | `declaration-track:75c862a26e73f7e877739a9faa3a6c0feebf2e656f4004287faa5068a1edd375` |
| 5 | `theorem` | [ranges_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/ranges-disjoint--db8865f19038d783e0c99f09.md) | 55 | `result-track:db8865f19038d783e0c99f099fe8806a8fb838e538eda8469e88b707bcb8234c` |
| 6 | `theorem` | [ranges_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant52d96bfda272225442b8fb558f7fa41b91a4df6766907d6c6b245d3f76a547da.lean/declarations/ranges-length--8800bb7c2c77030e31f8c394.md) | 76 | `result-track:8800bb7c2c77030e31f8c394a269cbe2a020c7194b3c722263e0a3e4af9982ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
