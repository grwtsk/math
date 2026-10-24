# Verification target: GRWTSK.Combinatorics.CodingTheory.Lossless

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdec8c7dadd45cda9b5678ea451757364c6684b1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/CodingTheory/Lossless.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdec8c7dadd45cda9b5678ea451757364c6684b1`.

Source path: `GRWTSK/Combinatorics/CodingTheory/Lossless.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/CodingTheory/Lossless.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.ExactMoment`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ExactMoment.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lossless](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/declarations/lossless--da96df2c561521b307d04942.md) | 21 | `declaration-track:da96df2c561521b307d04942dda8d0ffd796aed7ac625202f09443a47d9788e7` |
| 2 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/declarations/encode-injective--85992afa0202461855294213.md) | 28 | `result-track:85992afa0202461855294213a8e2df13c303ed6ddb21f54b2857bcc3a0b7b8ea` |
| 3 | `theorem` | [decoded_eq_source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/declarations/decoded-eq-source--8a62abb6ae7df0428f24f30c.md) | 35 | `result-track:8a62abb6ae7df0428f24f30ce810f72c847cb846040d435efadc114c8da315c1` |
| 4 | `def` | [comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/declarations/comp--7821e8d15105ce9fcaffec04.md) | 42 | `declaration-track:7821e8d15105ce9fcaffec04233950d1520dd009129ee097d83ad9fe1c7ff6ea` |
| 5 | `theorem` | [same_checkin_of_encoded_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/Lossless.lean/declarations/same-checkin-of-encoded-eq--45f1fe85be60529a6e158120.md) | 49 | `result-track:45f1fe85be60529a6e158120467a63f15fa17a0ed3be6ab698aa60c9d0f7653d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
