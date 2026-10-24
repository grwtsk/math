# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stability.Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dad975309875f306cc4226d6ce070933d15c4eee",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dad975309875f306cc4226d6ce070933d15c4eee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StabilityScope](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityscope--3f062083bfe19a842fec817b.md) | 20 | `declaration-track:3f062083bfe19a842fec817b525e6269611fdb4c48b7dcdb00f9a01df06ab205` |
| 2 | `inductive` | [StabilityUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityunit--44f56140cad35a14448b5e1f.md) | 35 | `declaration-track:44f56140cad35a14448b5e1fe0d297eb42439881511d8403477c59d166cdadf1` |
| 3 | `structure` | [StabilityTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityterm--56992a5ba070a844f0ed36d1.md) | 45 | `declaration-track:56992a5ba070a844f0ed36d11436584973d85f6ea190ddf65d6ae100b7b71ab6` |
| 4 | `structure` | [StabilityProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityprofile--e29c4986dfa519f7bc929c31.md) | 54 | `declaration-track:e29c4986dfa519f7bc929c31babe4e0ad6dbac1c673c1d5c462dd1b76d445712` |
| 5 | `structure` | [StabilityTerms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityterms--ab694a8b3fb11a406cc75fbc.md) | 65 | `declaration-track:ab694a8b3fb11a406cc75fbc151185523226806ac0647d354634701a78b00bdc` |
| 6 | `def` | [stabilityEnergy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/stabilityenergy--e92ebdb840600c30a2a5710a.md) | 74 | `declaration-track:e92ebdb840600c30a2a5710acc39366dcb31cdffdc9a74a28614ddb478a19b93` |
| 7 | `structure` | [ProofGate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/proofgate--85628f8180c2936cf0ec73dd.md) | 85 | `declaration-track:85628f8180c2936cf0ec73dd993dad48e86a1b822bda0424167c022036997823` |
| 8 | `structure` | [CertifiedRepresentationMigration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/certifiedrepresentationmigration--a6ce6630722f85018a4a55ba.md) | 105 | `declaration-track:a6ce6630722f85018a4a55ba838ac261425ea15c5a8b49ad55bb667f6dea3ba4` |
| 9 | `theorem` | [proof_stable_under_representation_migration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/proof-stable-under-representation-migration--65e817ef1475280d689a8c42.md) | 115 | `result-track:65e817ef1475280d689a8c42e478a6f8a0f6aaa05bbd51cf9a291724cc5f895f` |
| 10 | `theorem` | [representation_migration_authority_nonpromotion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/representation-migration-authority-nonpromotion--de1a6162b53197ca2b299440.md) | 125 | `result-track:de1a6162b53197ca2b29944012c9efab1cd377ec21b2c53b9c91155c85608991` |
| 11 | `structure` | [DependencyUpdateProofReplay](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/dependencyupdateproofreplay--9a2a272debb804333e8b65d3.md) | 132 | `declaration-track:9a2a272debb804333e8b65d3003fd22d7523a67be7994bdaa75af556acaa72d6` |
| 12 | `theorem` | [proof_stable_under_dependency_update](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/proof-stable-under-dependency-update--a513701c87ac16729d31ec63.md) | 146 | `result-track:a513701c87ac16729d31ec639dbafaf4b2e0a0afc5445066bc64a944629a2c30` |
| 13 | `theorem` | [dependency_update_authority_nonpromotion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/dependency-update-authority-nonpromotion--02c39dba0e0b8911012885d7.md) | 153 | `result-track:02c39dba0e0b8911012885d72c0b301ec58088231419980edd2586ea10a0871d` |
| 14 | `def` | [ProofGate.Passes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/proofgate-passes--36c914597d45b85d3526042b.md) | 160 | `declaration-track:36c914597d45b85d3526042baf49e02e62673be751c950efb638b684dbd4c075` |
| 15 | `structure` | [LocalNumericalStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/localnumericalstabilitycertificate--825d0b2314df38f930cb9d94.md) | 171 | `declaration-track:825d0b2314df38f930cb9d941d28a68d7ea5a62c91440e5bbe73a3f15d90cd02` |
| 16 | `structure` | [ReflectionStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/reflectionstabilitycertificate--5dc554858ece6d75b666778c.md) | 176 | `declaration-track:5dc554858ece6d75b666778cd361225a7b8cba980a860e908d0541b8558a54e7` |
| 17 | `structure` | [TranslationStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/translationstabilitycertificate--8f1e61366c41851195dd8c5b.md) | 181 | `declaration-track:8f1e61366c41851195dd8c5bcb738216619c62d215d12f46871daee2533dd83d` |
| 18 | `structure` | [CohomologicalStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/cohomologicalstabilitycertificate--bbfd1bcf86d43f12cfac5ae0.md) | 186 | `declaration-track:bbfd1bcf86d43f12cfac5ae01bfa7949822a737953c6f2a2133ac5e81d19de99` |
| 19 | `structure` | [ProofStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/proofstabilitycertificate--ea7c7a3717d94827ad17c1fe.md) | 191 | `declaration-track:ea7c7a3717d94827ad17c1fe63fc0ad677ebbd799b9a7ff4d071310cd479530d` |
| 20 | `structure` | [GluingStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/gluingstabilitycertificate--53c837f2e58c54599937e540.md) | 197 | `declaration-track:53c837f2e58c54599937e54097c733b4662a20f949d582d5c66e6bbbae08d905` |
| 21 | `structure` | [CouplingStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/couplingstabilitycertificate--ad910624b9e2f2b1e5679543.md) | 203 | `declaration-track:ad910624b9e2f2b1e5679543afd2ec3fdb9aad9b1dbc1aa3d621006812876bc9` |
| 22 | `structure` | [ScopedSystemStabilityCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/scopedsystemstabilitycertificate--9c7826d45da7834daf019c96.md) | 209 | `declaration-track:9c7826d45da7834daf019c96d384761504f438c98c225539217108d6f4431851` |
| 23 | `theorem` | [failed_proof_gate_blocks_stability](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/failed-proof-gate-blocks-stability--03429bae1ef352bb7a57edc3.md) | 226 | `result-track:03429bae1ef352bb7a57edc3f79be1e77884f0839bbaba47485ddf3183f3e1b5` |
| 24 | `theorem` | [small_update_alone_not_stability](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/small-update-alone-not-stability--e6ca1993b683ea3ca44e2e68.md) | 244 | `result-track:e6ca1993b683ea3ca44e2e689ce6e96b609863f33a5dc6ad14f8bbdb16033572` |
| 25 | `theorem` | [nonnegative_coefficients_alone_not_monotonicity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be.lean/declarations/nonnegative-coefficients-alone-not-monotonicity--b01ac64c511ac30a19bf886d.md) | 250 | `result-track:b01ac64c511ac30a19bf886dd3f2c13f4e4433e3e49a50240c290faec1fa80e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
