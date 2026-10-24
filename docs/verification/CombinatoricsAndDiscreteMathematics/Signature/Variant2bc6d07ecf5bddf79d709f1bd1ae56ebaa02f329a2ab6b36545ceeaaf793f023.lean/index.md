# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Signature.Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c01dcf4004024905f254c1ceaf323cd3edb3ebb4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c01dcf4004024905f254c1ceaf323cd3edb3ebb4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Coverage` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MutationCoordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/mutationcoordinate--2add765e11625dfb051eb116.md) | 15 | `declaration-track:2add765e11625dfb051eb1165ff1aecf8fe8ea7f71312e0db304ee1cbb3db913` |
| 2 | `structure` | [BoundaryCrossing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/boundarycrossing--aac43023a541cf6a880f2368.md) | 27 | `declaration-track:aac43023a541cf6a880f2368250c7ce9ce31bfe252148e526bef5fd10660c75b` |
| 3 | `def` | [causalCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/causalcone--ce014ecc42c6830ce141eb8c.md) | 34 | `declaration-track:ce014ecc42c6830ce141eb8c2c1ec76f5cf35ab787e982adc84f3f687e7ba9f2` |
| 4 | `def` | [mutationFrontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/mutationfrontier--9c5852c6170d2c1b0b35329a.md) | 41 | `declaration-track:9c5852c6170d2c1b0b35329a54dd50f26c1af3d35eeb264b9895a60ae07a1736` |
| 5 | `structure` | [MutationSignature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/mutationsignature--019c6e1ddb632261d0269df2.md) | 47 | `declaration-track:019c6e1ddb632261d0269df2c17144b3762a88b7ba33434d0a6304b700210b07` |
| 6 | `def` | [mutationSignature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/mutationsignature--880d81e988ffb742d697d194.md) | 59 | `declaration-track:880d81e988ffb742d697d194aaf8ac75184538faa5bab42c08600aa2f4d619e8` |
| 7 | `theorem` | [boundary_crossing_declares_law](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Signature/Variant2bc6d07ecf5bddf79d709f1bd1ae56ebaa02f329a2ab6b36545ceeaaf793f023.lean/declarations/boundary-crossing-declares-law--41a480cf4a0b5fc4999c8403.md) | 64 | `result-track:41a480cf4a0b5fc4999c840332a9d74640cd9e2eff115498a0dd6605d1449796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
