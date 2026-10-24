# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SmoothNumberReindexing.Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2734ba1986cbd59a76bb98ae6c65d368dd6da64e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2734ba1986cbd59a76bb98ae6c65d368dd6da64e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteFactorizationPlumbing` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteEulerFactorOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finiteeulerfactorof--edae53e4674a8f79fc195eda.md) | 26 | `declaration-track:edae53e4674a8f79fc195edaa2d631ef423007b43deb9e68019f40a60ebb5869` |
| 2 | `def` | [finiteEulerProductOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finiteeulerproductof--887ff94108482d13cc4bdf73.md) | 32 | `declaration-track:887ff94108482d13cc4bdf73c73e12858d03c70167b9a71712bfc976eb097eac` |
| 3 | `theorem` | [finiteEulerFactorOf_eq_fin_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finiteeulerfactorof-eq-fin-sum--f1ac6faea2c3b4e3842938c8.md) | 39 | `result-track:f1ac6faea2c3b4e3842938c8df20f3e510988198cef06c58b6ae5d1019b6caa3` |
| 4 | `theorem` | [finiteEulerProductOf_expands_exponent_vectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finiteeulerproductof-expands-exponent-vectors--6b2bf59aa2dcef70775241fd.md) | 48 | `result-track:6b2bf59aa2dcef70775241fdbe807a44e9839a6a7f0091c447f4299fdb652cd3` |
| 5 | `theorem` | [completely_multiplicative_exponentVectorNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/completely-multiplicative-exponentvectornat--6d33514bc5014d5c1f3a8d81.md) | 73 | `result-track:6d33514bc5014d5c1f3a8d817a1ab18b89fff01e2219287d33d55c8b35b7332a` |
| 6 | `theorem` | [finiteEulerProductOf_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finiteeulerproductof-expands-boundedsmoothnumbers--0c00f14e590002868b72cce8.md) | 92 | `result-track:0c00f14e590002868b72cce8b396797cae104a5337b84f49507a0568bc4a4022` |
| 7 | `theorem` | [posWeightReal_completely_multiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/posweightreal-completely-multiplicative--fdb28ad4712a0fb6c1cc2c78.md) | 124 | `result-track:fdb28ad4712a0fb6c1cc2c78e575dbfc068c6ad99b9fcd6869e89ec441322ed2` |
| 8 | `theorem` | [posWeightReal_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/posweightreal-prime-power--dfd56a2aa2b9b30ec7626e7e.md) | 138 | `result-track:dfd56a2aa2b9b30ec7626e7e56df56405f7ffb6e0a7e61c6b10b9d00adf1e7cc` |
| 9 | `theorem` | [finiteZetaEulerProductReal_eq_finiteEulerProductOf_posWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finitezetaeulerproductreal-eq-finiteeulerproductof-posweight--4b97896cf195daddc7f34c43.md) | 151 | `result-track:4b97896cf195daddc7f34c433bff9dd15192841dc346522c8ebc3bbc3bf277b2` |
| 10 | `theorem` | [finiteZetaEulerProductReal_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variantab648e78e25a9cf876b96caa824e7c5cd5554aedb66df0ce0e34d9c4ab64734c.lean/declarations/finitezetaeulerproductreal-expands-boundedsmoothnumbers--80a11482bdb952ea4e57e6a1.md) | 166 | `result-track:80a11482bdb952ea4e57e6a1958fb1495de1be4cb293beb88d472542fd3df66a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
