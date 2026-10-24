# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a04a3270470bf1935756deb791def3d6ce68b5a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a04a3270470bf1935756deb791def3d6ce68b5a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_norm_of_tsum_eLpNorm_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/declarations/summable-norm-of-tsum-elpnorm-ne-top--430fcd8d8e0ccc2d8fecdf80.md) | 30 | `result-track:430fcd8d8e0ccc2d8fecdf80ea2e1338eb029e43669892fe39aac5a33a539ffd` |
| 2 | `theorem` | [hasSum_coeFn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/declarations/hassum-coefn-tsum-nat--e824b06c664ad5bc6cfa8f81.md) | 110 | `result-track:e824b06c664ad5bc6cfa8f81566c3c4ad08f1b30a915502fe5db284c3c54d9e2` |
| 3 | `theorem` | [hasSum_coeFn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/declarations/hassum-coefn-tsum--e7e736ef3fb944e09f475b0b.md) | 129 | `result-track:e7e736ef3fb944e09f475b0ba6460d2a73f0411c70ede8df49e5b773c09333d2` |
| 4 | `theorem` | [coeFn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/declarations/coefn-tsum--eeba4064e88db6425e27311f.md) | 146 | `result-track:eeba4064e88db6425e27311f88be54a6ec244b72dcacdbe5be14ceb919341b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
