# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt05.Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d966b9bfb160f804a6dd9e2b877ddba641f530",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d966b9bfb160f804a6dd9e2b877ddba641f530`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayvalue--718472d3a1c70aa54976d579.md) | 20 | `declaration-track:718472d3a1c70aa54976d579dd6143b811098a8a689de4df4bd2227fce2fe2bf` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayslope--8ca8b8b265c485144825bedc.md) | 21 | `declaration-track:8ca8b8b265c485144825bedc67c7b94c2e7a3b54243e1d79e3e3174f0d25ae6e` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weightedmass--5c62c8c3c06138b2fa8ea57a.md) | 22 | `declaration-track:5c62c8c3c06138b2fa8ea57a98ccc955f9d7478b5a3dabd482197aeb636649af` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weightedenergy--76458d884a1de56636344a91.md) | 23 | `declaration-track:76458d884a1de56636344a918d0270fe2655af470bd04db42851a1da2e763c9e` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayvalue-hasderivat--5bbb37e3ccb9e756b3d695f0.md) | 25 | `result-track:5bbb37e3ccb9e756b3d695f0fe7d2864a8762383fbec14a325c8c8a195beeeaa` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayslope-hasderivat--806b5d13244f62dec85ad659.md) | 33 | `result-track:806b5d13244f62dec85ad659463666506f5553908887477292c6897c578228bb` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayvalue-continuous--7815e7f4c3a9e2c1815d7bf8.md) | 41 | `result-track:7815e7f4c3a9e2c1815d7bf846b7b90768cbcc4bc70922bc9241091e4f10715e` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayslope-continuous--11c7af07d246ff3297867fd4.md) | 44 | `result-track:11c7af07d246ff3297867fd4834ad05b334ee5bd5d595118666463c7b941a555` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weightedray-hasderivat--8f9727a134be453a9bfef23b.md) | 47 | `result-track:8f9727a134be453a9bfef23b068b7d1d7cd14af7240948accf23f164a6fbbc96` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/conjugateray-hasderivat--de6ac7c79d0e1665ddc11fe7.md) | 59 | `result-track:de6ac7c79d0e1665ddc11fe70f01e761b8371dff42c733a44381971221e14aca` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/mass-integrand-continuous--4c8dd6f262ed89fe1b852638.md) | 63 | `result-track:4c8dd6f262ed89fe1b8526381e1bef3e88f9dbca65d91269c34558eb276661eb` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/energy-integrand-continuous--22aa952fc407d01d4cdd5147.md) | 67 | `result-track:22aa952fc407d01d4cdd51476abb0349e21f564c178f3de78236d677d444d945` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weightedenergy-nonneg--00e0ab8e286f304e7111819e.md) | 71 | `result-track:00e0ab8e286f304e7111819e73f8e2ae9ab3ccbdcb385717c2663d34d4d195b0` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/rayvalue-zero--b25415baae3589219ccd2ba4.md) | 75 | `result-track:b25415baae3589219ccd2ba483521634473bc376e30584838c9ce695df4082ca` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weightedmass-pos--36f0f919820ed34ba73b099a.md) | 78 | `result-track:36f0f919820ed34ba73b099a945fc8802dd530b78a85f1704e86cb056f86e2ba` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/weighted-energy-identity--fc06fb8454b0806d84221b1b.md) | 93 | `result-track:fc06fb8454b0806d84221b1bedd57f1da78593c4a8caa5660004a9a98f0945ae` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/literal-quartic-nonzero--6f4a6e38465a446fffdf3b04.md) | 135 | `result-track:6f4a6e38465a446fffdf3b0457a2eacc7f7bd778041ce6b416a6d3ca757c2825` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt05/Variant29a8b5bb6813cbe8655d684a3ee9a392ea1eb828a28493ba47e00804ea0dfd1a.lean/declarations/actual-mellin-halfstrip-nonzero--28b9115f23677a85bea77ad3.md) | 150 | `result-track:28b9115f23677a85bea77ad33847d769f6dcdb66d19fc3102c91d0c30c2cda1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
