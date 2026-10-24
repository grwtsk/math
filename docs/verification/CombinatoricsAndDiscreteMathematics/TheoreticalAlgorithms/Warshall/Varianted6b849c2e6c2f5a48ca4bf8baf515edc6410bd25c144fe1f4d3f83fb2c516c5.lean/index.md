# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Warshall.Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e3299a6a27d3a735b9823d7fb94d3782ab50c04",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e3299a6a27d3a735b9823d7fb94d3782ab50c04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolMatrix.warshallStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/declarations/boolmatrix-warshallstep--55fd48518bfb01e900a974d1.md) | 11 | `declaration-track:55fd48518bfb01e900a974d14f909ea2ad59a128bf5495b6f1bc7b0b241deac1` |
| 2 | `theorem` | [BoolMatrix.entry_warshallStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/declarations/boolmatrix-entry-warshallstep--e966dfbb0d48b24c445ff854.md) | 18 | `result-track:e966dfbb0d48b24c445ff854a4e9cd7c04bd44994237e039a7ec3c6c1671830c` |
| 3 | `def` | [BoolMatrix.warshallAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/declarations/boolmatrix-warshallaux--ae2e2bf27405ff1b6105051f.md) | 35 | `declaration-track:ae2e2bf27405ff1b6105051f44963f43c8111b47948b253c6f11abf845be2f15` |
| 4 | `def` | [BoolMatrix.warshall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/declarations/boolmatrix-warshall--352d36a92ead211908d3c007.md) | 55 | `declaration-track:352d36a92ead211908d3c007f8992ecd395ba1704b5ea770745666b28509042d` |
| 5 | `theorem` | [BoolMatrix.warshallAux_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Varianted6b849c2e6c2f5a48ca4bf8baf515edc6410bd25c144fe1f4d3f83fb2c516c5.lean/declarations/boolmatrix-warshallaux-zero--ed3e4732b5532568eb45b3ab.md) | 61 | `result-track:ed3e4732b5532568eb45b3ab7975251ad6ca7a9dd277bb52a9917dfe66337e80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
