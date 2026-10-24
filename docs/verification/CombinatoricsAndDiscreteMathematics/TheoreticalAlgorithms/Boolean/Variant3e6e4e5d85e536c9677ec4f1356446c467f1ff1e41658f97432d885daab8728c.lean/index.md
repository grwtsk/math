# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Boolean.Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be408aebd4e7234cd3c8c8b58d6bcd5787366973",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be408aebd4e7234cd3c8c8b58d6bcd5787366973`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `Number.Mobius` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Cube.SpectralDeterminantBoundary` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanShadowPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleanshadowpayload--0c1bd1ceb9ae601a1a9c44ee.md) | 41 | `declaration-track:0c1bd1ceb9ae601a1a9c44ee867cff3ebe1d5fbcbceb3531866811ba9b8758e4` |
| 2 | `def` | [BooleanShadowPayload.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleanshadowpayload-toarithmeticpayload--9faa9bc930b2207c10e1cf7c.md) | 51 | `declaration-track:9faa9bc930b2207c10e1cf7c46d97704857730ab407df129f74d1b04709811bd` |
| 3 | `theorem` | [toArithmeticPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/toarithmeticpayload-weight--138937ec3e7d426781c6c4f6.md) | 62 | `result-track:138937ec3e7d426781c6c4f68a9b78f867d13004c688b5fbc50dff88816e024f` |
| 4 | `theorem` | [toArithmeticPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/toarithmeticpayload-support--82734634c37071cb02f6fe06.md) | 67 | `result-track:82734634c37071cb02f6fe06f5a110c4ca1f280fe4f1fb6c38c24aa0c331f5b4` |
| 5 | `theorem` | [toArithmeticPayload_finiteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/toarithmeticpayload-finitesound--ca21162cdebe970173424ff8.md) | 72 | `result-track:ca21162cdebe970173424ff889e138deb3e945953b28aa80ff274c76bf2f4b43` |
| 6 | `def` | [ofBoundaryReport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/ofboundaryreport--208382b964d243da06278370.md) | 83 | `declaration-track:208382b964d243da06278370c1de1ba07d348613035a51f655b227d5ed57fc6a` |
| 7 | `structure` | [BooleanToNumberBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleantonumberbridge--2096513832e4113332ce991b.md) | 95 | `declaration-track:2096513832e4113332ce991b601157cd8d044f9ab4c85b598cdac01269af5dc7` |
| 8 | `def` | [BooleanToNumberBridge.canonical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleantonumberbridge-canonical--a8de5f9c4a5f4f30d009995d.md) | 104 | `declaration-track:a8de5f9c4a5f4f30d009995d2858555568fa5c4f6ff98bbd6c2e25fe049f7d3d` |
| 9 | `theorem` | [boolean_to_number_interpretation_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/boolean-to-number-interpretation-sound--cf8485f8a0ea4afb0786c596.md) | 113 | `result-track:cf8485f8a0ea4afb0786c59674312e8817c9a7063aa931f097720e0ad4e8f457` |
| 10 | `theorem` | [boolean_to_number_finite_data_preserved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/boolean-to-number-finite-data-preserved--ede2ac7780850e541a27d334.md) | 118 | `result-track:ede2ac7780850e541a27d334ded29ce1b4e3329a0d2b41cdf923ca6b56f68586` |
| 11 | `def` | [BooleanShadowOwnsArithmeticSemantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleanshadowownsarithmeticsemantics--f183b49cbe601bd36adf6654.md) | 124 | `declaration-track:f183b49cbe601bd36adf66549d9f1acde84e2fbbe956e6ca9de9bdfa760a7026` |
| 12 | `def` | [BooleanShadowOwnsAnalyticNumberAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/booleanshadowownsanalyticnumberauthority--aa07b4e148b2f386c3c611af.md) | 129 | `declaration-track:aa07b4e148b2f386c3c611afa903af3c2a9f7546745931345cbbea681ea91370` |
| 13 | `theorem` | [boolean_shadow_not_arithmetic_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/boolean-shadow-not-arithmetic-semantics--5982c5aa46b1d4bf468e115b.md) | 133 | `result-track:5982c5aa46b1d4bf468e115bf89f22c3ad0d0f85589b1723d0f8772820e35f87` |
| 14 | `theorem` | [boolean_shadow_not_analytic_number_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/boolean-shadow-not-analytic-number-authority--fc5be118d40f0c449c28c453.md) | 139 | `result-track:fc5be118d40f0c449c28c45357e36c10a2cd6db07387ee34003fb7241bfcf56a` |
| 15 | `theorem` | [boolean_to_number_boundary_summary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant3e6e4e5d85e536c9677ec4f1356446c467f1ff1e41658f97432d885daab8728c.lean/declarations/boolean-to-number-boundary-summary--28a377be025c42ee0f7c4f41.md) | 151 | `result-track:28a377be025c42ee0f7c4f41a96ecfb8ae979703ad843741429b02ddcb0a85b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
