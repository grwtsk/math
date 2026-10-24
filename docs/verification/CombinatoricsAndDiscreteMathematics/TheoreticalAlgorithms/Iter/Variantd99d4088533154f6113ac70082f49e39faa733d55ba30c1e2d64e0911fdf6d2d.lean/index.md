# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iter.Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc557d73da341ba3449480bda6f09e7dece8a448",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc557d73da341ba3449480bda6f09e7dece8a448`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Intercalate` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [joinString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/declarations/joinstring-eq--245a30e712c7492ff55b6a72.md) | 28 | `result-track:245a30e712c7492ff55b6a72e8b24c9d5b2a832537407735ab7e5b1be5cd9136` |
| 2 | `theorem` | [intercalateString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/declarations/intercalatestring-eq--d8b595ec16aa8dbcb38a6e46.md) | 34 | `result-track:d8b595ec16aa8dbcb38a6e462cba21b08bb81d45bb7bc21865daea228fee918b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
