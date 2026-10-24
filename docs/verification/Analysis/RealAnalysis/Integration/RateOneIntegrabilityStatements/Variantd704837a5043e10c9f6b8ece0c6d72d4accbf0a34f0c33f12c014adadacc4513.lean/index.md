# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrabilityStatements.Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfda5a927c27a8ec42abedd3ff102225b46503ac",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfda5a927c27a8ec42abedd3ff102225b46503ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/rate-one-integrableon-ioc--e63e6e2f98e1c6cbc79e88d1.md) | 15 | `result-track:e63e6e2f98e1c6cbc79e88d1ca21dcff901573071ab5551142029650bce65345` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/rate-one-integrable-of-eventual-majorant--c4c72416c56bc90595a2e2f9.md) | 37 | `result-track:c4c72416c56bc90595a2e2f979dbdf90a4c1d525d47dca4a0d2063f408bd4593` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/polynomial-stretched-integrable--aeb0ca535b8272f7df86cec2.md) | 71 | `result-track:aeb0ca535b8272f7df86cec218e5ab39efe1b0cc1bb6d54b481eed3f7c6e2432` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/rate-one-majorant-integrable--d160d1d344d72939b0ff658d.md) | 82 | `result-track:d160d1d344d72939b0ff658d90316f121310a8e4ced55f6c24831a903c9b3895` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/rate-one-integrable-of-stretched-majorant--8bed2a95a1235b8f442b6381.md) | 97 | `result-track:8bed2a95a1235b8f442b6381a0ad66ecfd9de6f5fe2641377d7fc1e78e2014c1` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/actual-scale-le--0068ae9842d4ac6b32c6f339.md) | 105 | `result-track:0068ae9842d4ac6b32c6f33956dbf2e85f093adad2c2b0aeee05d482a5a4b24e` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/weighted-negativesource-le-of-pairing-bound--7854f7394cf22a9f46c7b021.md) | 116 | `result-track:7854f7394cf22a9f46c7b0217d323d5199bc9ecbef01602f076d0a2fdd932894` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/rate-one-integrable-of-pairing-bound--dd0630e384c2ed675bf7de21.md) | 166 | `result-track:dd0630e384c2ed675bf7de21b5a1b8941cd6584dc8a55a5e51e9ec9f5730ef5f` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/integrable-of-one-le-rate--631c468ac38e8d7420bbf6e8.md) | 177 | `result-track:631c468ac38e8d7420bbf6e8b3292ffe51c9ab8d5b786d320c5b77e628d917be` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--472e89991378d15aa4bfeadd.md) | 199 | `declaration-track:472e89991378d15aa4bfeaddbe47f49d4c4adfbe7e889719f51a10f835f50a98` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--3a18e45d0272bcef43edcae4.md) | 203 | `declaration-track:3a18e45d0272bcef43edcae4249025f4385f5ffe8d569933a403c0e656659fb3` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--a3500d2cec4b5f7cc9225449.md) | 209 | `declaration-track:a3500d2cec4b5f7cc9225449dd59a8bd6f98b3583ef366e965b48ed67788e8cc` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--6d23cb3f9a298f40b2dabf6a.md) | 213 | `declaration-track:6d23cb3f9a298f40b2dabf6a2675e7089bfb6658ea379a01de67592f16f5f6ed` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--0e041afdc982ba394483e5a8.md) | 219 | `declaration-track:0e041afdc982ba394483e5a88621b1d55351a6a0caa36bf04a78903cd1ab9149` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--6a85998feec5b6d7a84d377e.md) | 226 | `declaration-track:6a85998feec5b6d7a84d377e370f8e84f8b8ecad5acef3da5cb6121eca18c339` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--0a674f744c03c3d0be452827.md) | 230 | `declaration-track:0a674f744c03c3d0be452827a9b796cfccbaa6701f05aaec0031ccd81c74b4bc` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--4f498f51683353a9e58ea2cc.md) | 240 | `declaration-track:4f498f51683353a9e58ea2cc063607a4f0ae17beaf94637a03edeb99a624a4ab` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variantd704837a5043e10c9f6b8ece0c6d72d4accbf0a34f0c33f12c014adadacc4513.lean/declarations/example--ed87f3f80e63830ada428b3e.md) | 247 | `declaration-track:ed87f3f80e63830ada428b3ee1c67ac2ab6a2599c155691f0cf128e65b0137a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
