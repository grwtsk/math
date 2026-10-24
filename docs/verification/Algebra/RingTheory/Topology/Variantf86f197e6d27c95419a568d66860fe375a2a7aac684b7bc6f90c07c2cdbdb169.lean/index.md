# Verification target: GRWTSK.Algebra.RingTheory.Topology.Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c44955c9cf26b4d3550a3da84494905d238fd0f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c44955c9cf26b4d3550a3da84494905d238fd0f`.

Source path: `GRWTSK/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsAdic.isHausdorff_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/isadic-ishausdorff-iff--62ab0572fec00983893bf322.md) | 31 | `result-track:62ab0572fec00983893bf3225c18a9947c3c779539c382e68287ac1b05ddf0cd` |
| 2 | `lemma` | [IsAdic.isPrecomplete_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/isadic-isprecomplete-iff--54ea59b25b57e687afa7e3a4.md) | 46 | `result-track:54ea59b25b57e687afa7e3a4fa5398b644a8e3d5afa205e232f35f8489557605` |
| 3 | `lemma` | [IsAdic.isAdicComplete_iff](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/isadic-isadiccomplete-iff--d1ca67c266870cf5ff6fc050.md) | 76 | `result-track:d1ca67c266870cf5ff6fc050454264453377cdb8106c131898760d9d6b666885` |
| 4 | `theorem` | [IsPrecomplete.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/isprecomplete-congr-ringequiv--c88b64331ada6464f1a50735.md) | 85 | `result-track:c88b64331ada6464f1a50735b42ec75cd39d068c0b31163ff6ae8573ea185b40` |
| 5 | `theorem` | [IsHausdorff.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/ishausdorff-congr-ringequiv--a968a44d70ced6caef3820b4.md) | 92 | `result-track:a968a44d70ced6caef3820b480fe78b96382d956497671330bcd7f96b5e1518d` |
| 6 | `theorem` | [IsAdicComplete.congr_ringEquiv](../../../../../mathematics/Algebra/RingTheory/Topology/Variantf86f197e6d27c95419a568d66860fe375a2a7aac684b7bc6f90c07c2cdbdb169.lean/declarations/isadiccomplete-congr-ringequiv--ff4d4aef843094cd87ef813e.md) | 99 | `result-track:ff4d4aef843094cd87ef813e36d738181ab40c6cf212352ce85f960567165ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
