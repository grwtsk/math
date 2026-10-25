# Verification target: GRWTSK.Logic.FiniteSequences.DecisionCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a3918feac33db32651580e71346d9cdafacc56",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/DecisionCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a3918feac33db32651580e71346d9cdafacc56`.

Source path: `GRWTSK/Logic/FiniteSequences/DecisionCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/DecisionCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.FiniteSequences.DictionaryRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrenceaca87234f3b7037a7f107897.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DecodesSatisfying](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/decodessatisfying--36b6a6438fac9b554304bd28.md) | 30 | `declaration-track:36b6a6438fac9b554304bd28710088b073f8ea85961252961816e4fd761df19a` |
| 2 | `structure` | [Certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate--5f08d0dcfd98d2d032e75479.md) | 36 | `declaration-track:5f08d0dcfd98d2d032e75479b31aaaaaab7b2dd2e739932cb8f740b6f708e754` |
| 3 | `def` | [Certificate.packed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-packed--670a70822c38b2e276731ac6.md) | 44 | `declaration-track:670a70822c38b2e276731ac61980658fb6859058e0c270481f35eebe5a63ead1` |
| 4 | `theorem` | [Certificate.unpack_packed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-unpack-packed--4ab38d63d75c46b52e285ce2.md) | 48 | `result-track:4ab38d63d75c46b52e285ce27e313491afe7d47fbc91a01e5085b2c15bf9728d` |
| 5 | `theorem` | [Certificate.decodesSatisfying](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-decodessatisfying--51244eaeb5e294498d6c213b.md) | 53 | `result-track:51244eaeb5e294498d6c213b1a73d03774ec9c8e95864aae41d95b5df6d8b99a` |
| 6 | `theorem` | [Certificate.predicate_of_successful_equal_decoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-predicate-of-successful-equal-decoding--9a82cf9896a4011ad8df377f.md) | 58 | `result-track:9a82cf9896a4011ad8df377f8d85c2e514d42cd316e1417963765ce87d259720` |
| 7 | `theorem` | [Certificate.reuse_of_same_decoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-reuse-of-same-decoding--53b619000958bbc52a3730f6.md) | 70 | `result-track:53b619000958bbc52a3730f626355277d42420240bcc29725c1c78ed26d6344c` |
| 8 | `theorem` | [Certificate.reuse_of_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-reuse-of-agreement--258cec1e82dbf59115bdc84a.md) | 77 | `result-track:258cec1e82dbf59115bdc84a754314cccba6a74d6795c086f728b146a5fb633d` |
| 9 | `theorem` | [Certificate.predicate_after_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/certificate-predicate-after-agreement--6a5a53131f6df0bf0c27deea.md) | 86 | `result-track:6a5a53131f6df0bf0c27deeadb3b4c370259a443404bc0de1ed1b89db969a23a` |
| 10 | `theorem` | [stale_premise_counterexample](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence92bf156f892b5af4b12f540c.lean/declarations/stale-premise-counterexample--e286fa0353943ff2d148f662.md) | 98 | `result-track:e286fa0353943ff2d148f662f8dac5dec9bc3e3de45ff6fef7cdb76f83995199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
