# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt02.Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f53a67b4e8ead66069acb0845c163823a3de9af5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f53a67b4e8ead66069acb0845c163823a3de9af5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/primitive--4ad0b40151adcfa9861bfbaa.md) | 21 | `declaration-track:4ad0b40151adcfa9861bfbaa0859714c7cf54a78d41ef70f9c80bcb195f179f1` |
| 2 | `def` | [halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/halfprefix--acc85626aee4f024ef8a8efd.md) | 24 | `declaration-track:acc85626aee4f024ef8a8efd251f577879af5dd0e41de7ed2c7af474115ac230` |
| 3 | `theorem` | [twiceExp_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/twiceexp-hasderivat--0fc068dc13fbce3b0a8862aa.md) | 27 | `result-track:0fc068dc13fbce3b0a8862aa6c1e7dbe5923d5e677f6e292eedce566cfa2890f` |
| 4 | `theorem` | [twiceExp_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/twiceexp-deriv--bfdc4a59a2cd58a2f34c8946.md) | 33 | `result-track:bfdc4a59a2cd58a2f34c894607bf30f0afb68bdbd435296017e6f6abbb79f782` |
| 5 | `theorem` | [logSum_eq_halfPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/logsum-eq-halfprefix--0bba40aba76b7fce0a09b3ab.md) | 37 | `result-track:0bba40aba76b7fce0a09b3abedbb478db51af1bd5c1959757e8fe4ebe9ec6ae3` |
| 6 | `theorem` | [prefix_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/prefix-weight-integrable--7dc65e4ced874c9ad6032d72.md) | 52 | `result-track:7dc65e4ced874c9ad6032d7255501e41b58b0e48bd9766af52d61c3e2333d225` |
| 7 | `theorem` | [prefix_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/prefix-weight-integral--d5ee2fd1297dc5ebb148afb8.md) | 58 | `result-track:d5ee2fd1297dc5ebb148afb88fdd24a034a2c08ac9b82c95a263dbd056b5b83d` |
| 8 | `theorem` | [background_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/background-integral--808dc40e0f5a21958050e203.md) | 65 | `result-track:808dc40e0f5a21958050e203c84e367b0438bf44e124dda958cef9485a48cc60` |
| 9 | `theorem` | [primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/primitive-integrable--eaa54cf53998f8b5af269f1a.md) | 79 | `result-track:eaa54cf53998f8b5af269f1a7bbf4114353738bbc7dac8509b66a0f0d669fe3f` |
| 10 | `theorem` | [primitive_eq_finite_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/primitive-eq-finite-arithmetic--3b8d145d7463879521d8e83b.md) | 94 | `result-track:3b8d145d7463879521d8e83b3dbcef11cfc3374ef7acb415a2676e53f6214841` |
| 11 | `theorem` | [halfPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/halfprefix-below-first--ac6188acd5090eca83a7b0d3.md) | 111 | `result-track:ac6188acd5090eca83a7b0d3e541fac3ccd43c0b80f213546894f353cf90f2e6` |
| 12 | `theorem` | [primitive_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt02/Variant47db194fd000fc246e7de09bb853fb0f1f07e19ad37a3fe365df170390c364c5.lean/declarations/primitive-below-first--df7f9f73381b9b683225aa30.md) | 124 | `result-track:df7f9f73381b9b683225aa30f9fbd67779279e1b8cfc3b145434744d04e38b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
