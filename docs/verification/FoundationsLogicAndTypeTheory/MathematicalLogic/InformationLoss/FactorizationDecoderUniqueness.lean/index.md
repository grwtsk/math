# Verification target: GRWTSK.Logic.InformationLoss.FactorizationDecoderUniqueness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c568562742645c0bb1b8ae8d9ef89968a32918a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/FactorizationDecoderUniqueness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationDecoderUniqueness.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationDecoderUniqueness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c568562742645c0bb1b8ae8d9ef89968a32918a`.

Source path: `GRWTSK/Logic/InformationLoss/FactorizationDecoderUniqueness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/FactorizationDecoderUniqueness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiberCompleteness.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [decoder_eq_on_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationDecoderUniqueness.lean/declarations/decoder-eq-on-range--6404cb5ae8123f353be95a13.md) | 31 | `result-track:6404cb5ae8123f353be95a13f758b2fdebc5a429f5d96fc9212ed8e07c051f34` |
| 2 | `theorem` | [decoder_unique_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationDecoderUniqueness.lean/declarations/decoder-unique-of-surjective--f30b59a88cfb25330e54f9b2.md) | 48 | `result-track:f30b59a88cfb25330e54f9b2732b6197738aaf31233e4e70dd9713d147b27c5e` |
| 3 | `theorem` | [observedProfile_decoder_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationDecoderUniqueness.lean/declarations/observedprofile-decoder-unique--c4679153d44e2c8f503835fb.md) | 62 | `result-track:c4679153d44e2c8f503835fb49f12cb36b498d0203245b6e8d8741acb7e810c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
