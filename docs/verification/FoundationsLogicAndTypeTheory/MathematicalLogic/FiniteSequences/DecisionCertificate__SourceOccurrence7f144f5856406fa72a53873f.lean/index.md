# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32ebaa0270ec25ea3646ebe7375462396f05e346",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32ebaa0270ec25ea3646ebe7375462396f05e346`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DecodesSatisfying](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/decodessatisfying--3d9e015387ca09ee50bc5b4f.md) | 30 | `declaration-track:3d9e015387ca09ee50bc5b4f885aa428d40547ddfe905828bb0ce77fa8db19da` |
| 2 | `structure` | [Certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate--de4c4a442e46975e6c4acb40.md) | 36 | `declaration-track:de4c4a442e46975e6c4acb4043e4dc821f8340f641084a3c4e18d44a7b4b0aaa` |
| 3 | `def` | [Certificate.packed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-packed--ba27c5b2eb9875c047e24455.md) | 44 | `declaration-track:ba27c5b2eb9875c047e24455d38f634a5776be345775a7431b7d8c8990ad5c69` |
| 4 | `theorem` | [Certificate.unpack_packed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-unpack-packed--dcdd2c64e70e273b891d81a5.md) | 48 | `result-track:dcdd2c64e70e273b891d81a510e6c63d6180d37dc2dbc9acda3fc4efb2175a18` |
| 5 | `theorem` | [Certificate.decodesSatisfying](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-decodessatisfying--70db8831abc8cbe1d7b723de.md) | 53 | `result-track:70db8831abc8cbe1d7b723de787049eaaa67fa8525951e5070c7ebc9ae456162` |
| 6 | `theorem` | [Certificate.predicate_of_successful_equal_decoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-predicate-of-successful-equal-decoding--d3fcf305d45213b9955397b3.md) | 58 | `result-track:d3fcf305d45213b9955397b3d1b8efccd2dac469fdabfd5af044eb7e2366779c` |
| 7 | `theorem` | [Certificate.reuse_of_same_decoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-reuse-of-same-decoding--b8221e87156e29329ed4ed88.md) | 70 | `result-track:b8221e87156e29329ed4ed8865df4d154c0fcb62dd35246fded64c152395b945` |
| 8 | `theorem` | [Certificate.reuse_of_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-reuse-of-agreement--3b3bf8cd8539cd0540f8d94a.md) | 77 | `result-track:3b3bf8cd8539cd0540f8d94aa365db1aa733b94f23257f5cb4dd6a44ebe60f7a` |
| 9 | `theorem` | [Certificate.predicate_after_agreement](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/certificate-predicate-after-agreement--3126b629578d1ac2c283bb04.md) | 86 | `result-track:3126b629578d1ac2c283bb0454e96c74164980ff2af8f7f3bc9e3208286baa19` |
| 10 | `theorem` | [stale_premise_counterexample](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/declarations/stale-premise-counterexample--bf415f878b631baeb48e6a75.md) | 98 | `result-track:bf415f878b631baeb48e6a75d185dcc8570c01daf9e84048bd6337b22d27ea26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
