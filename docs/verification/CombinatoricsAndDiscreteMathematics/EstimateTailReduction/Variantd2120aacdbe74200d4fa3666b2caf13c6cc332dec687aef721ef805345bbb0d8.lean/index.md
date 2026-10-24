# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EstimateTailReduction.Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb38517a452ada1608aaa63858a2948e311e648f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb38517a452ada1608aaa63858a2948e311e648f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/primeindices--dd346ff38b21d8e002ca0542.md) | 31 | `declaration-track:dd346ff38b21d8e002ca05425516ed554b1b7bc694932a04715919d8017ccdf8` |
| 2 | `theorem` | [mem_primeIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/mem-primeindices-iff--dfb579f37e5f1c1c17f6d770.md) | 35 | `result-track:dfb579f37e5f1c1c17f6d770b3cccbf6afc8421aacd913f0f686747dd1d7058a` |
| 3 | `theorem` | [primeIndices_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/primeindices-mono--dd94b1c1d13b27ff592a8568.md) | 46 | `result-track:dd94b1c1d13b27ff592a8568a0713ac8527bd0790d1e7e299e5f40534716f229` |
| 4 | `theorem` | [prime_contribution_le_finite_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/prime-contribution-le-finite-budget--3c643fe512966efbf6449e68.md) | 56 | `result-track:3c643fe512966efbf6449e6860e456be2c64eebeecb6707a0043009436157083` |
| 5 | `theorem` | [bounded_radius_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/bounded-radius-lower--caf8729e303a922c586a70a0.md) | 98 | `result-track:caf8729e303a922c586a70a0e705f094df797f310d9e50953fb6afd539bdfe15` |
| 6 | `def` | [QuadraticTailLowerBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/quadratictaillowerbound--c2b77b2c247c19b4277ead67.md) | 120 | `declaration-track:c2b77b2c247c19b4277ead676c5fac38554354dfc2881d3bee5ba5ca0f87d01a` |
| 7 | `def` | [SignedPairingTailLowerBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/signedpairingtaillowerbound--ac95def4e7c54cbb26c0a046.md) | 129 | `declaration-track:ac95def4e7c54cbb26c0a04655deaeb5ecb5e11b9128457ffd4aad3c69b49c33` |
| 8 | `theorem` | [quadratic_tail_of_signed_pairing_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/quadratic-tail-of-signed-pairing-tail--3cfa0899ced5df5883ae0037.md) | 137 | `result-track:3cfa0899ced5df5883ae00370378114b5240429931d315b2d6f7b6a3e1fb196b` |
| 9 | `theorem` | [estimate_of_quadratic_tail_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/estimate-of-quadratic-tail-lower-bound--eee901becc251d6d424bcb1d.md) | 153 | `result-track:eee901becc251d6d424bcb1d86e2317bd229b06cec4fb404ad7997bbf236f83e` |
| 10 | `theorem` | [estimate_of_signed_pairing_tail_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/estimate-of-signed-pairing-tail-lower-bound--8a9ef3559ba03cfc26f732b9.md) | 167 | `result-track:8a9ef3559ba03cfc26f732b918ac700527099d845f4564c74815c6838fd835be` |
| 11 | `theorem` | [estimate_obligation_iff_quadratic_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/estimate-obligation-iff-quadratic-tail--64877812b4609ef515962034.md) | 173 | `result-track:64877812b4609ef515962034b2dc235f7266edf3279f239f9ab4098ad321dfd3` |
| 12 | `theorem` | [signed_pairing_uniform_implies_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/signed-pairing-uniform-implies-tail--bc6b2b93d2e2e373c93f500e.md) | 180 | `result-track:bc6b2b93d2e2e373c93f500e1161d346e028787e57e9494f2de0a7123a045811` |
| 13 | `def` | [TailReductionCheckpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/tailreductioncheckpoint--f724bb3849f5cda7785bfda0.md) | 188 | `declaration-track:f724bb3849f5cda7785bfda0b08d4331bb24f6c4e08e977832e24f5c9e044dc2` |
| 14 | `theorem` | [tail_reduction_checkpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/declarations/tail-reduction-checkpoint--d59a72cbc95ec35258cfbfe6.md) | 198 | `result-track:d59a72cbc95ec35258cfbfe6bcc6f357eaa5ec9d5bdc6832403ea3e4934eccb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
