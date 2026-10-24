# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EstimateTailReduction.Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "398eb99b1f2d4efbe2308f728affcd40f5ec87f2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `398eb99b1f2d4efbe2308f728affcd40f5ec87f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/primeindices--9d9d6433365e8e1c52219640.md) | 36 | `declaration-track:9d9d6433365e8e1c522196406e16b81cf9d3eb1975fe5129629b034cbdb3714e` |
| 2 | `theorem` | [mem_primeIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/mem-primeindices-iff--b0743b6fff076682792f9b19.md) | 40 | `result-track:b0743b6fff076682792f9b194e77eb90d9bc5885ac8ba1c4474140a52a154b5a` |
| 3 | `theorem` | [primeIndices_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/primeindices-mono--9ebffc4dbadc1cc873581660.md) | 51 | `result-track:9ebffc4dbadc1cc873581660b59839ac0f210c04f17678e216318b8da0dde2c8` |
| 4 | `theorem` | [prime_contribution_le_finite_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/prime-contribution-le-finite-budget--246856acff6fcfada65dd921.md) | 61 | `result-track:246856acff6fcfada65dd92100fca89d481dcca827a0ca4122e7c84b0c6f6ace` |
| 5 | `theorem` | [bounded_radius_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/bounded-radius-lower--a1a56e7fcdff6e679f786e52.md) | 103 | `result-track:a1a56e7fcdff6e679f786e525e5f2fee93ba90786e6b686e979fcfea39883aee` |
| 6 | `def` | [QuadraticTailLowerBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/quadratictaillowerbound--85207f8e2a9c3397bc6ad96d.md) | 123 | `declaration-track:85207f8e2a9c3397bc6ad96d14236bb191fbd250d92aee0219ab949d4c48c466` |
| 7 | `def` | [SignedPairingTailLowerBound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/signedpairingtaillowerbound--994369c07f167f55a42fdf77.md) | 130 | `declaration-track:994369c07f167f55a42fdf774a975fb8847d83eeb0ab738d8ddc263e898c0cc2` |
| 8 | `theorem` | [quadratic_tail_of_signed_pairing_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/quadratic-tail-of-signed-pairing-tail--a7c4d9bcd0c7edc6c33b631c.md) | 138 | `result-track:a7c4d9bcd0c7edc6c33b631c544c4bb9d11afd7dc21b0bbfa2fd89e2e96822b6` |
| 9 | `theorem` | [estimate_of_quadratic_tail_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/estimate-of-quadratic-tail-lower-bound--ba59f738ea640cebe5cee33f.md) | 154 | `result-track:ba59f738ea640cebe5cee33fca907cdbc176db17b4756a2839c212d7f2ca62bc` |
| 10 | `theorem` | [estimate_of_signed_pairing_tail_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/estimate-of-signed-pairing-tail-lower-bound--ebc2cc391f217d903fdd294d.md) | 168 | `result-track:ebc2cc391f217d903fdd294dc2dfabbbb543be88b93be6ef909133fef1c92af7` |
| 11 | `theorem` | [estimate_obligation_iff_quadratic_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/estimate-obligation-iff-quadratic-tail--05783a0a9e5f7c3ef727d7c2.md) | 174 | `result-track:05783a0a9e5f7c3ef727d7c2bbb79a25db9d7d6e68c6088d150b793b778b293e` |
| 12 | `theorem` | [signed_pairing_uniform_implies_tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/signed-pairing-uniform-implies-tail--e47664d01d5707d3eccc1951.md) | 181 | `result-track:e47664d01d5707d3eccc195141ce6be34a8cfd219a9c00a39e477be0b876b623` |
| 13 | `def` | [TailReductionCheckpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/tailreductioncheckpoint--b2bda8a8113e376ddeae4256.md) | 187 | `declaration-track:b2bda8a8113e376ddeae42563b0856abbf749a4b6fc0a9534465f4c9169a6ffe` |
| 14 | `theorem` | [tail_reduction_checkpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/declarations/tail-reduction-checkpoint--445dd68357720b77f1d19e7c.md) | 197 | `result-track:445dd68357720b77f1d19e7cccb4cb912d478e72319153193ac1c7188c637ac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
