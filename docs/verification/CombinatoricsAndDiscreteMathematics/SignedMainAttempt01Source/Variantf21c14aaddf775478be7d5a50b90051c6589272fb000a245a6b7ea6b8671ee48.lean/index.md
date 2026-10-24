# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SignedMainAttempt01Source.Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a3b591aa8023baeb379841850c2990c57d79cf0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a3b591aa8023baeb379841850c2990c57d79cf0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveVaughanNoLongProducts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adaptiveLogSample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/declarations/adaptivelogsample--0d3224745cc8ad7af43d8d6b.md) | 24 | `declaration-track:0d3224745cc8ad7af43d8d6bee008d65c0cb238a0578225a790774b0e7f2af3b` |
| 2 | `def` | [adaptivePlainSample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/declarations/adaptiveplainsample--ceb1a44e4863c4b1e1859e88.md) | 28 | `declaration-track:ceb1a44e4863c4b1e1859e88ea008ad44e4dab07ece923c5219e4074f518c7f6` |
| 3 | `def` | [adaptiveIndependentMain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/declarations/adaptiveindependentmain--745e830e0c3fc18560d8f67a.md) | 33 | `declaration-track:745e830e0c3fc18560d8f67a343730deef1205a5ce8a468f4f04dd8affedce15` |
| 4 | `def` | [adaptiveSignedSamplingError](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/declarations/adaptivesignedsamplingerror--646f1affc5f3febf0d564451.md) | 43 | `declaration-track:646f1affc5f3febf0d56445116ac3f51f1515ffd799932515e1508cfc988c960` |
| 5 | `theorem` | [fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/declarations/fullmangoldtrow-eq-adaptiveindependentmain-add-signederror--a50955f333eb66cf7dc96416.md) | 50 | `result-track:a50955f333eb66cf7dc964160ead3327d21a32ac72723ef5c0dd0144514fc4e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
