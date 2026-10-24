# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e92fbab7d6c6c84ce2c088ede757cd93040b9aa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e92fbab7d6c6c84ce2c088ede757cd93040b9aa`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.MulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperVAdd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/propervadd--c7e76b67aa3712ffb6a0ca04.md) | 42 | `declaration-track:c7e76b67aa3712ffb6a0ca04f770fbfbd9eb671d0af5e6ab67fbcfb1100e5274` |
| 2 | `class` | [ProperSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/propersmul--35af33d51e2f418378e8dec1.md) | 51 | `declaration-track:35af33d51e2f418378e8dec19b00237fa323e59e0ddcf942d775713368f7ac15` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/instance--8fc9b1a492c64b2676413776.md) | 65 | `declaration-track:8fc9b1a492c64b267641377629e63c04b58236992c4608dda020670101a936b8` |
| 4 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto--281d143585af08b3d430b255.md) | 75 | `result-track:281d143585af08b3d430b2550d7a58cd8c9071ad43b0c3132a83e98d94c57a75` |
| 5 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto-t2--aa555b76feb84af40df21caa.md) | 96 | `result-track:aa555b76feb84af40df21caa86e7d02ef3add6cb9a8730412df0545be4f92937` |
| 6 | `theorem` | [t2Space_quotient_mulAction_of_properSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/t2space-quotient-mulaction-of-propersmul--165eff70f45f879457d39bdd.md) | 109 | `result-track:165eff70f45f879457d39bdd56102eae9f9988e33508cdc538881dbf55c8db66` |
| 7 | `theorem` | [t2Space_of_properSMul_of_t1Group](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/t2space-of-propersmul-of-t1group--a5e840b51abfc74acb393877.md) | 127 | `result-track:a5e840b51abfc74acb3938772da2cfaf2a2585dd009f919a88b0e2e02bf2623a` |
| 8 | `theorem` | [properSMul_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/propersmul-of-isclosedembedding--25a35429d7ab8e900b31bf2a.md) | 154 | `result-track:25a35429d7ab8e900b31bf2a58370e018d5985645f43673b7e1d2a78b59bb292` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/declarations/instance--28eee1d43c232d62dc08809a.md) | 166 | `declaration-track:28eee1d43c232d62dc08809aebc9063d4b78f6482eb068bf2413afeadb68c050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
