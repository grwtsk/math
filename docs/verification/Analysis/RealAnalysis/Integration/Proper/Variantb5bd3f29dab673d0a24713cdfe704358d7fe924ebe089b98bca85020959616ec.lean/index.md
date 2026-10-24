# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Proper.Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23cac378738440e51cbc58f42ea4227f587d467e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23cac378738440e51cbc58f42ea4227f587d467e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper--dd65a5b2490039b2deaaee68.md) | 47 | `declaration-track:dd65a5b2490039b2deaaee68b76fb41785d991c19c8062be3a0997bdf2bde17c` |
| 2 | `lemma` | [isProper_iff_restrict_eq_indicator_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-iff-restrict-eq-indicator-smul--c315c61a47540e44e6edf5c0.md) | 52 | `result-track:c315c61a47540e44e6edf5c0efaf85f0d3f1340522d6208bb31110b110ae8508` |
| 3 | `lemma` | [isProper_iff_inter_eq_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-iff-inter-eq-indicator-mul--1f29c6f6491dc3d2534269fc.md) | 57 | `result-track:1f29c6f6491dc3d2534269fcfdf219ac9b3ef735bf235a3019c424a335aaf7e8` |
| 4 | `lemma` | [IsProper.setLIntegral_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-setlintegral-eq-comp--e0b4c260cfa7231d732ae9f5.md) | 73 | `result-track:e0b4c260cfa7231d732ae9f5ba8fb0613bb4aad642e5f9f378b9c8783fc12580` |
| 5 | `lemma` | [IsProper.lintegral_indicator_mul_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-lintegral-indicator-mul-indicator--7146f327627f78d950993160.md) | 83 | `result-track:7146f327627f78d950993160518c71d3f33c5e7f9261e4781564414bd4f8be5f` |
| 6 | `lemma` | [IsProper.lintegral_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-lintegral-indicator-mul--99e47cbcefb930ba33db4e22.md) | 95 | `result-track:99e47cbcefb930ba33db4e223ef2cc9f808f520e8b5756654c770ae0fa75f85d` |
| 7 | `lemma` | [IsProper.setLIntegral_eq_indicator_mul_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-setlintegral-eq-indicator-mul-lintegral--fec97bc8e1318500d4bb7454.md) | 112 | `result-track:fec97bc8e1318500d4bb74545fd6a8724095bec8b82fb9fd1bfd42bab2510276` |
| 8 | `lemma` | [IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-setlintegral-inter-eq-indicator-mul-setlintegral--24d2e310d430170c954d429c.md) | 118 | `result-track:24d2e310d430170c954d429ce7641be2b22fd820a83aeb22bebba8fcf44ec06b` |
| 9 | `lemma` | [IsProper.lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantb5bd3f29dab673d0a24713cdfe704358d7fe924ebe089b98bca85020959616ec.lean/declarations/isproper-lintegral-mul--5a3713fcf1b697040f9dabc8.md) | 124 | `result-track:5a3713fcf1b697040f9dabc84415180aa94f92fe8d09ea45f5ee1f5b8d4b76da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
