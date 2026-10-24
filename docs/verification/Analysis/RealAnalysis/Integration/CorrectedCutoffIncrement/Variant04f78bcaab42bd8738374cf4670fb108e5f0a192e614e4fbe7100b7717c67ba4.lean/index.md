# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrectedCutoffIncrement.Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02405b9ad5f745c22c6cefe7b6423a439d392aa8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02405b9ad5f745c22c6cefe7b6423a439d392aa8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffShape](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/cutoffshape--a57b6885100602aefdc76962.md) | 20 | `declaration-track:a57b6885100602aefdc76962dec31a9bfec277b632d59dcd213f9aef73a1ba6a` |
| 2 | `theorem` | [correctedNumerator_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/correctednumerator-one--490430bab832cdcea0747562.md) | 25 | `result-track:490430bab832cdcea0747562e604583d6baeded76e6ed34c9a90bbb89b2a5b87` |
| 3 | `theorem` | [exponential_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/exponential-split--cc850f0f438a43d542f063f6.md) | 28 | `result-track:cc850f0f438a43d542f063f6eaef980e70279333d8f268ce44eb22c52f6840a8` |
| 4 | `theorem` | [reciprocal_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/reciprocal-succ--3421ea53121f53a654e6327c.md) | 39 | `result-track:3421ea53121f53a654e6327c7d93966fda99b1b4897ca4e089d82daf7fa8566e` |
| 5 | `theorem` | [correctedNumerator_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/correctednumerator-succ-sub--18d9188a14d897fec93b02bb.md) | 46 | `result-track:18d9188a14d897fec93b02bbed6813208b3ee8b5bd7effdf8102b1a240ec01da` |
| 6 | `theorem` | [correctedNumerator_eq_sum_increments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/correctednumerator-eq-sum-increments--14ebfddcb7c2d1486e5b4a8e.md) | 58 | `result-track:14ebfddcb7c2d1486e5b4a8e9c1895efbdf6342177eda79a4f94e29312531d95` |
| 7 | `def` | [boundaryResidual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/boundaryresidual--eee34518e48d52679d4a12e1.md) | 69 | `declaration-track:eee34518e48d52679d4a12e1c6715e4dd8f392acaf06f663af8ce7ce924a7ce4` |
| 8 | `theorem` | [boundaryResidual_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/boundaryresidual-succ-sub--2d9e3b2df224194aac4f91de.md) | 74 | `result-track:2d9e3b2df224194aac4f91deb1d19a81d51edec65c9c07eb6e94d5630805a577` |
| 9 | `theorem` | [boundaryResidual_increment_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/boundaryresidual-increment-product--8d9fab54df5e6fd68f4736c1.md) | 84 | `result-track:8d9fab54df5e6fd68f4736c1f661a6819a9594462b4049bc45a7c2c9ac6057eb` |
| 10 | `theorem` | [boundaryResidual_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/boundaryresidual-memlp--fe3ce0d0603509a2a9426f90.md) | 98 | `result-track:fe3ce0d0603509a2a9426f90775495778c9aec34f9472a51e0e85855e30ac4f7` |
| 11 | `theorem` | [boundaryResidual_increment_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrement/Variant04f78bcaab42bd8738374cf4670fb108e5f0a192e614e4fbe7100b7717c67ba4.lean/declarations/boundaryresidual-increment-product-integrable--edf90599a0cce717ea2d65de.md) | 124 | `result-track:edf90599a0cce717ea2d65de2eb6063d9206e59e7f9de35fb106c4c68284fd07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
