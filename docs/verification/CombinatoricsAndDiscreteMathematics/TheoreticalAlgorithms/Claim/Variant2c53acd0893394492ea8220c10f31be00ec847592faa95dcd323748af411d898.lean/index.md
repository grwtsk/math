# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Claim.Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059d1c3f46796d143b8c22589ef4fed6b232e514",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059d1c3f46796d143b8c22589ef4fed6b232e514`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Evidence` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.AssuranceLevel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/claimstatus--942705fa6aa12d451b06cc00.md) | 25 | `declaration-track:942705fa6aa12d451b06cc00d5189e879abee48e246c307468692b998183c2ed` |
| 2 | `inductive` | [ClaimCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/claimcertificate--3f263f12111d06366d3a4c76.md) | 35 | `declaration-track:3f263f12111d06366d3a4c76cfa943ae6b5e80baf4315fa60f235ce94f8ff19f` |
| 3 | `theorem` | [proof_of_verified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/proof-of-verified--7ba5b2380033293a87e72b1f.md) | 55 | `result-track:7ba5b2380033293a87e72b1f738162285dff3ae36ff39b6d136cf71e826f1c91` |
| 4 | `def` | [ClaimCertificate.ConditionalHypothesis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/claimcertificate-conditionalhypothesis--e9bc5577c8c2f6c506079d17.md) | 63 | `declaration-track:e9bc5577c8c2f6c506079d174171227c3e5898a777a75b63877720f16667a3d9` |
| 5 | `theorem` | [proof_of_conditionally_verified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/proof-of-conditionally-verified--66e4c42a3d2a1c49992f3d12.md) | 71 | `result-track:66e4c42a3d2a1c49992f3d1287a6deb30b6141170717410dac0f1b323d647c36` |
| 6 | `def` | [RequiredAssumptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/requiredassumptions--57e26dfe48f74d77d4e4950d.md) | 82 | `declaration-track:57e26dfe48f74d77d4e4950dc2b17df00af2dd4834f6f08564cfe4aca18ec6ce` |
| 7 | `def` | [MetadataCoherent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/metadatacoherent--dc275f75c8b4b285345577b9.md) | 99 | `declaration-track:dc275f75c8b4b285345577b9764f87889e0019e06ea71719fcc6ba0cbcbad808` |
| 8 | `structure` | [Claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/claim--2be43329ef47fbe925f4980c.md) | 117 | `declaration-track:2be43329ef47fbe925f4980c96b04f00402c1d9f51fbbba6b4cf759bcd9e547b` |
| 9 | `theorem` | [assumptions_match_certificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/assumptions-match-certificate--09e8c7bb03c1847ae5bbf395.md) | 133 | `result-track:09e8c7bb03c1847ae5bbf395328e3014bb60059b19327d0825c23038eadd6cdd` |
| 10 | `theorem` | [metadata_matches_certificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/metadata-matches-certificate--68d840776382ced6636a9874.md) | 139 | `result-track:68d840776382ced6636a98749853ee45b0ca77752754ee408a9453b9c1e5db66` |
| 11 | `structure` | [AtLevel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/atlevel--25a7bf364cdd4ca6654020a6.md) | 146 | `declaration-track:25a7bf364cdd4ca6654020a6f293cd57087d8249d1ff6f96d7fdf3df8be07043` |
| 12 | `def` | [AtLevel.advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/atlevel-advance--f591be62999f1f51727b34b8.md) | 151 | `declaration-track:f591be62999f1f51727b34b811b5b1caa1496edb9d4b75772a76c231444f1602` |
| 13 | `theorem` | [AtLevel.advance_preserves_status](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/atlevel-advance-preserves-status--432ee199350939e8d1f8e5b2.md) | 159 | `result-track:432ee199350939e8d1f8e5b225cce2d74b264cffecc5826a13e26bd336b40e31` |
| 14 | `theorem` | [no_external_certificate_elimination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/no-external-certificate-elimination--d810808c8e044eaed928ec90.md) | 169 | `result-track:d810808c8e044eaed928ec90a319aa7e08b4ce9e51f50f3fc9ce71466cb0ab03` |
| 15 | `theorem` | [no_conjectural_certificate_elimination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/no-conjectural-certificate-elimination--193edd92fd2a6f27e6093c15.md) | 181 | `result-track:193edd92fd2a6f27e6093c1509dbbae6a11f4fa891262c151042f4bf5c4b7bb1` |
| 16 | `theorem` | [no_unsubstantiated_certificate_elimination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/no-unsubstantiated-certificate-elimination--87892950e417215f2cac5614.md) | 188 | `result-track:87892950e417215f2cac56145f8ea5d2f2ef28faafb0226976f2805736f2e8fe` |
| 17 | `def` | [testEvidencePromotionWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/testevidencepromotionwitness--0fffc2ee9dc8fb1144b2360b.md) | 202 | `declaration-track:0fffc2ee9dc8fb1144b2360b2cb961c76e8548436cd2fdc5f4a94d686bca4e1d` |
| 18 | `theorem` | [testEvidence_cannot_promote_to_verified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Claim/Variant2c53acd0893394492ea8220c10f31be00ec847592faa95dcd323748af411d898.lean/declarations/testevidence-cannot-promote-to-verified--c59723fb133a42594cecf81d.md) | 215 | `result-track:c59723fb133a42594cecf81dee252bda00ffcac6706278747f19633e96f51d93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
