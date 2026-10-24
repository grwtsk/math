# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Boolean.Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f0e7bb715893c73d239dbd7fae3e049f8683b2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f0e7bb715893c73d239dbd7fae3e049f8683b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `Number.Mobius` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Cube.SpectralDeterminantBoundary` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanShadowPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleanshadowpayload--7c06e5db20eaad223e32a7cd.md) | 37 | `declaration-track:7c06e5db20eaad223e32a7cdade81095850034984c1dc2bc9ed2a4eb3bac7d2c` |
| 2 | `def` | [BooleanShadowPayload.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleanshadowpayload-toarithmeticpayload--ac6b62d66443e896b542ab61.md) | 47 | `declaration-track:ac6b62d66443e896b542ab618bccd95dd0121c3a9f653372099b0bd892c21cb6` |
| 3 | `theorem` | [toArithmeticPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/toarithmeticpayload-weight--22ce08d9c3c2d7e003217952.md) | 58 | `result-track:22ce08d9c3c2d7e0032179523c4e7093563c05ab3eb32a19f4a713e2fef978c4` |
| 4 | `theorem` | [toArithmeticPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/toarithmeticpayload-support--6ebe37d2ed36931bcd79519b.md) | 63 | `result-track:6ebe37d2ed36931bcd79519bb9bc3509d8989bd876c827c5f55eb932ab531585` |
| 5 | `theorem` | [toArithmeticPayload_finiteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/toarithmeticpayload-finitesound--b169dfdd66df8ae70885c387.md) | 68 | `result-track:b169dfdd66df8ae70885c3877d1e976b6840c9f18c325408a05992d179a6938a` |
| 6 | `def` | [ofBoundaryReport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/ofboundaryreport--c6f694d3bf82ded6eab61219.md) | 79 | `declaration-track:c6f694d3bf82ded6eab612191a3d26b4d350a207797864265e06bb21bf23546b` |
| 7 | `structure` | [BooleanToNumberBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleantonumberbridge--cd159f11f92da2b773a547c4.md) | 91 | `declaration-track:cd159f11f92da2b773a547c448b3c9b3075bd86f547fe383977fae90840e63fd` |
| 8 | `def` | [BooleanToNumberBridge.canonical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleantonumberbridge-canonical--78671b63b0cfe1d287a892bd.md) | 100 | `declaration-track:78671b63b0cfe1d287a892bdb5c1ec68bc8246856a17e3225e285c033c8f3f99` |
| 9 | `theorem` | [boolean_to_number_interpretation_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/boolean-to-number-interpretation-sound--834fa8715e488a65b81fb1b4.md) | 109 | `result-track:834fa8715e488a65b81fb1b4cfdecf6a9e87f0e5b07b3679d5d1755700527150` |
| 10 | `theorem` | [boolean_to_number_finite_data_preserved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/boolean-to-number-finite-data-preserved--06a9bbc8cb077111adc291fb.md) | 114 | `result-track:06a9bbc8cb077111adc291fbf72052a3c9b5b2a782d283d0acde0f40aff6f6ed` |
| 11 | `def` | [BooleanShadowOwnsArithmeticSemantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleanshadowownsarithmeticsemantics--b0925c7323aa802549132673.md) | 120 | `declaration-track:b0925c7323aa802549132673525e050b84ec052236feb80c1a5d255f7c179b2c` |
| 12 | `def` | [BooleanShadowOwnsAnalyticNumberAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/booleanshadowownsanalyticnumberauthority--e6fee21aff3697f3c476329c.md) | 125 | `declaration-track:e6fee21aff3697f3c476329cb2c4dc5f8db0a0ee9115938d11404e470d34898d` |
| 13 | `theorem` | [boolean_shadow_not_arithmetic_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/boolean-shadow-not-arithmetic-semantics--324856125ce055433c1051a9.md) | 129 | `result-track:324856125ce055433c1051a93309a0d6957326ee11d369638d5607465aed344b` |
| 14 | `theorem` | [boolean_shadow_not_analytic_number_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/boolean-shadow-not-analytic-number-authority--8dceac9f2e7d7cd8cb1a06d1.md) | 135 | `result-track:8dceac9f2e7d7cd8cb1a06d1cecf5e887cf902f65de8ecf63afa49cc559df93c` |
| 15 | `theorem` | [boolean_to_number_boundary_summary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant453dd2cc1d3aa8a03f9d03ea59e02bfdc03d7b6fa4c16639e6a6bc39aef5ee07.lean/declarations/boolean-to-number-boundary-summary--bca51d807b33cdd98ea1c76d.md) | 147 | `result-track:bca51d807b33cdd98ea1c76ddd057aa1bb3327b1b2d32df89ab0cf6cbb6e65d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
