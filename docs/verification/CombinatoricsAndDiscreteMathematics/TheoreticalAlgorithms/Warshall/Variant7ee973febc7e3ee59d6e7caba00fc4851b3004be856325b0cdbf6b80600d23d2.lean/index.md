# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Warshall.Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab90770d8f586e5dfc9dd5c9f5272b668aeebbf7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab90770d8f586e5dfc9dd5c9f5272b668aeebbf7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolMatrix.warshallStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/declarations/boolmatrix-warshallstep--81fcd037b8bdc7029244ddb9.md) | 19 | `declaration-track:81fcd037b8bdc7029244ddb990937d08c24ab70a1ad2ee05aad121fdcff8452b` |
| 2 | `theorem` | [BoolMatrix.entry_warshallStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/declarations/boolmatrix-entry-warshallstep--dadbffc4c68c122a476d0971.md) | 26 | `result-track:dadbffc4c68c122a476d0971f38357d2081910346c18dcaa95f27fc6856517d1` |
| 3 | `def` | [BoolMatrix.warshallAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/declarations/boolmatrix-warshallaux--7c0e71b2eb632e751c801df1.md) | 43 | `declaration-track:7c0e71b2eb632e751c801df144f553bd9f881a9b7b5286bc8b2574e2e4a917bb` |
| 4 | `def` | [BoolMatrix.warshall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/declarations/boolmatrix-warshall--d7ad16ae5ae0c5922c36d017.md) | 63 | `declaration-track:d7ad16ae5ae0c5922c36d017b4cb352904987b535cc37f04870f0d83fe33eb11` |
| 5 | `theorem` | [BoolMatrix.warshallAux_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warshall/Variant7ee973febc7e3ee59d6e7caba00fc4851b3004be856325b0cdbf6b80600d23d2.lean/declarations/boolmatrix-warshallaux-zero--67df5511e819a98b903eca30.md) | 69 | `result-track:67df5511e819a98b903eca3001f6df05b577746051fd4e86b9648cc23cd9d1b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
