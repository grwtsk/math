# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f05e3750647691d9b3d57460027923905bf7c90",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f05e3750647691d9b3d57460027923905bf7c90`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailTest` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pairedTailTest_eq_balanced_phase_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/pairedtailtest-eq-balanced-phase-prefix--661b5c694118edd74b5fef99.md) | 26 | `result-track:661b5c694118edd74b5fef997247a5cd1e9167c96acf439641a88f40e34d1cad` |
| 2 | `theorem` | [exists_pairedTailTest_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/exists-pairedtailtest-pos--261b42d564737b411654ad3c.md) | 45 | `result-track:261b42d564737b411654ad3cc2959bb0e0aa5dc48d72dd19381d837edc4a2f5e` |
| 3 | `theorem` | [pairedTailTest_early_point_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/pairedtailtest-early-point-neg--7c098d12da30fe671eb71e1e.md) | 65 | `result-track:7c098d12da30fe671eb71e1eec5bb842c20d48d227773a6063431a0c01e5f483` |
| 4 | `theorem` | [exists_pairedTailTest_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/exists-pairedtailtest-neg--a774eaf4037ad999134a16c8.md) | 71 | `result-track:a774eaf4037ad999134a16c8e02c3d23389303331ba73b83e6a1fdcd96c76c02` |
| 5 | `theorem` | [pairedTailTest_has_both_signs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/pairedtailtest-has-both-signs--4782b94f66a77e1c81511b9c.md) | 76 | `result-track:4782b94f66a77e1c81511b9c713cfe08cdc48c1b7e75bb3fa65d0f709f53b0e1` |
| 6 | `theorem` | [pairedTailTest_not_nonneg_on](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/pairedtailtest-not-nonneg-on--92d5ca5ddb90533d27064f82.md) | 82 | `result-track:92d5ca5ddb90533d27064f8294bf5a6adbd1fdff86739c774ce9ce46db2ef7be` |
| 7 | `theorem` | [pairedTailTest_not_nonpos_on](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variantc09d2161fecef7ca3142ce2935ede29d362f4533c50930fa06d8459335bb4a74.lean/declarations/pairedtailtest-not-nonpos-on--d30df95fa70e32aa6ae44124.md) | 90 | `result-track:d30df95fa70e32aa6ae441245695f40acb2b4193266475a30dda46657f441338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
