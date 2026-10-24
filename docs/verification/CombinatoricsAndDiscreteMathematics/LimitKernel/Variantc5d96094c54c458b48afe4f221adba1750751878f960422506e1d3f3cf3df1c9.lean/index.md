# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LimitKernel.Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4672308b1f02f502f7aaf93823c9b10bfd7f786",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4672308b1f02f502f7aaf93823c9b10bfd7f786`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Boundary.LimitState` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveProbabilityLaw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projectiveprobabilitylaw--91d33d9676df28c16e2bd420.md) | 17 | `declaration-track:91d33d9676df28c16e2bd420ecd0dc86734cb1558ce41e1d0cc26ee8a444807f` |
| 2 | `structure` | [CompatibleSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/compatibleschedule--ba4c9091263dc96cca4b8cd5.md) | 33 | `declaration-track:ba4c9091263dc96cca4b8cd5afad54ea6e1d7c52712019823a94d6e8e63a57b1` |
| 3 | `def` | [ProjectiveBoundarySystem.defaultLimitSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projectiveboundarysystem-defaultlimitschedule--ffc1df292b849726e0fa180b.md) | 49 | `declaration-track:ffc1df292b849726e0fa180bb0d332106cde2a36b0f8011129ab8a11e4b34258` |
| 4 | `inductive` | [LimitContractionSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/limitcontractionsource--d01b552f53beeb82df0ef7c2.md) | 64 | `declaration-track:d01b552f53beeb82df0ef7c2b290ffe1fcfcc192ce7bcd3bafaad5d6fa6668c2` |
| 5 | `structure` | [ProjectiveLimitKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projectivelimitkernel--2762d657df14d10db25226e4.md) | 69 | `declaration-track:2762d657df14d10db25226e44020a6058a85b7e53d7cd76db39fd22cab345789` |
| 6 | `def` | [ProjectiveLimitKernel.invariantLawRealization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projectivelimitkernel-invariantlawrealization--9cbbcbc906a42026b13d0e22.md) | 139 | `declaration-track:9cbbcbc906a42026b13d0e223ab54835948d99c0bbd31670162a5a47426c39b5` |
| 7 | `theorem` | [projective_limit_kernel_contractive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projective-limit-kernel-contractive--689f146ac9386188614e9501.md) | 154 | `result-track:689f146ac9386188614e95011a5d7a83b439b2c52affa0909bb4fb977f8c66c4` |
| 8 | `theorem` | [projective_limit_invariant_law_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/declarations/projective-limit-invariant-law-unique--10baa8839e43e3ae56d2e6bc.md) | 175 | `result-track:10baa8839e43e3ae56d2e6bc403b517c14bb23a7d4764fb1d693ede3651faee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
