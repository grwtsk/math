# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4e42ccabbcb11c828d738a4bd60d89bfdca7cda",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4e42ccabbcb11c828d738a4bd60d89bfdca7cda`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittilt--80d9292beb6e47d685cfb68b.md) | 21 | `declaration-track:80d9292beb6e47d685cfb68b4bc5bd1f7505bbc7b2383ccadc95a2daddfb1264` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittiltenergy--002773e27113a10edd38f79a.md) | 25 | `declaration-track:002773e27113a10edd38f79aa3ee57ede25488b6eff5d0e1007f1d828c80d2ba` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittilt-sq-integrable--433fd7c93ed7dada808e3562.md) | 29 | `result-track:433fd7c93ed7dada808e3562d8ef33db81f15d4c7aa945ad83fdf3f2a6f0524e` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittiltenergy-eq-integral--b1f76c5ec5bc0aec394074f1.md) | 44 | `result-track:b1f76c5ec5bc0aec394074f164b666773f35785b02fc95a0cb1d1b7aa7ba3f7b` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittilt-transform--42a9be7b170b45a77a7f8f1b.md) | 54 | `result-track:42a9be7b170b45a77a7f8f1b334f221f9ded0e1a8fefeac10f62c05e243e335e` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittilt-integral-sq-le--6d56fa5af73b15ce1f786215.md) | 62 | `result-track:6d56fa5af73b15ce1f7862155bb06bab81f6d9dfc1ac0ce0890aa1facecb3517` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittiltenergy-eventually-ge--f4a9407f044153a629c2e7dc.md) | 92 | `result-track:f4a9407f044153a629c2e7dc283c27d023c51399ff32c0efb65eca941adc3ab1` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variant32572032de9c45b0cb3b96869ba0948ebd1a6f693ccf24d5395c802d367559f1.lean/declarations/actualunittiltenergy-tendsto-attop--281882e5bd4aa4c50f58e841.md) | 142 | `result-track:281882e5bd4aa4c50f58e841ec05ed9dab48d3582a97c249205694d345ea1c8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
