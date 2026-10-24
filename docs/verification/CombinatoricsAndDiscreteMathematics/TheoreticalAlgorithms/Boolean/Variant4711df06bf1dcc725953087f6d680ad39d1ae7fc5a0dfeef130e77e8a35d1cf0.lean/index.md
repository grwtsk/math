# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Boolean.Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90522368739e6357cfdf4f14a762e0b713046187",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90522368739e6357cfdf4f14a762e0b713046187`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean.json)

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
| 1 | `structure` | [BooleanShadowPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleanshadowpayload--848a86165d0f7cba39b4fa3e.md) | 49 | `declaration-track:848a86165d0f7cba39b4fa3e7a96758a8e775a6bba740ed5f2b081604db43192` |
| 2 | `def` | [BooleanShadowPayload.toArithmeticPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleanshadowpayload-toarithmeticpayload--dc9793e1ad69169be5e2707b.md) | 59 | `declaration-track:dc9793e1ad69169be5e2707b4be2acd2616969373d632b878391aa709fb13412` |
| 3 | `theorem` | [toArithmeticPayload_weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/toarithmeticpayload-weight--1c6745020ed7304801f4efde.md) | 70 | `result-track:1c6745020ed7304801f4efdeeed2c2158ef1e01f6b735bb117b61c891660d23c` |
| 4 | `theorem` | [toArithmeticPayload_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/toarithmeticpayload-support--caec8754906eef3988a53fed.md) | 75 | `result-track:caec8754906eef3988a53fed83663a6e6e6b9bc7a3c4a240613be69f0739e4ef` |
| 5 | `theorem` | [toArithmeticPayload_finiteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/toarithmeticpayload-finitesound--c2c8b77851c4dc6bf6e3eb6a.md) | 80 | `result-track:c2c8b77851c4dc6bf6e3eb6a5642b132fa6dbd1360bddbc8c29db0eadaf3ea68` |
| 6 | `def` | [ofBoundaryReport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/ofboundaryreport--058e7f7052d06711984d5b31.md) | 91 | `declaration-track:058e7f7052d06711984d5b310186808a4b6d0eda860d06525e9e372d5649c72c` |
| 7 | `structure` | [BooleanToNumberBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleantonumberbridge--aa20b18b8b6e339837e35c2b.md) | 103 | `declaration-track:aa20b18b8b6e339837e35c2bc6698f88e813f03d29fe03277c560a3113f5b9e7` |
| 8 | `def` | [BooleanToNumberBridge.canonical](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleantonumberbridge-canonical--951d147c11516040a34abfe7.md) | 112 | `declaration-track:951d147c11516040a34abfe70104fcfbf90ede662962b121d9c228349e80e342` |
| 9 | `theorem` | [boolean_to_number_interpretation_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/boolean-to-number-interpretation-sound--48cb1e6741a13fd8f5690347.md) | 121 | `result-track:48cb1e6741a13fd8f5690347b72944e302442add1c572a9bd9717c07a1638902` |
| 10 | `theorem` | [boolean_to_number_finite_data_preserved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/boolean-to-number-finite-data-preserved--29a0674b8572da88623f68de.md) | 126 | `result-track:29a0674b8572da88623f68dec3849a2004b1f127589b828947a008ab4a7a7568` |
| 11 | `def` | [BooleanShadowOwnsArithmeticSemantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleanshadowownsarithmeticsemantics--b26d714c557c0c6ec175b54e.md) | 132 | `declaration-track:b26d714c557c0c6ec175b54e23eb1911f4e5d1547300b03a31a1c1bb293d5c77` |
| 12 | `def` | [BooleanShadowOwnsAnalyticNumberAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/booleanshadowownsanalyticnumberauthority--617352af73c0582381b56ce3.md) | 137 | `declaration-track:617352af73c0582381b56ce38a5a6dee1e2b6d60f06f68a83f4a584e742fb8f9` |
| 13 | `theorem` | [boolean_shadow_not_arithmetic_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/boolean-shadow-not-arithmetic-semantics--624d41f60e6751a74ac51341.md) | 141 | `result-track:624d41f60e6751a74ac5134134ee2622135e5c5c9ec7716c2b9489db59eb843f` |
| 14 | `theorem` | [boolean_shadow_not_analytic_number_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/boolean-shadow-not-analytic-number-authority--db567a668847827a4ef4add6.md) | 147 | `result-track:db567a668847827a4ef4add6e4ec6523872e3662fdce0a8d5bcd31b57094d6ab` |
| 15 | `theorem` | [boolean_to_number_boundary_summary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Boolean/Variant4711df06bf1dcc725953087f6d680ad39d1ae7fc5a0dfeef130e77e8a35d1cf0.lean/declarations/boolean-to-number-boundary-summary--7e8881b732d3bef7bad88399.md) | 159 | `result-track:7e8881b732d3bef7bad88399b1d03bed1b867fc3121d560eb8ba6ac56563de4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
