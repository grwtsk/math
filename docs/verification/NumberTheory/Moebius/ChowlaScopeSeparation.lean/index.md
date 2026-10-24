# Verification target: GRWTSK.NumberTheory.Moebius.ChowlaScopeSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50dcb6cd73dded101f0623a42f16756ce5e7ccab",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50dcb6cd73dded101f0623a42f16756ce5e7ccab`.

Source path: `GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ChowlaScopeSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointInformationLossConnections`](../../../../mathematics/NumberTheory/Moebius/EndpointInformationLossConnections.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FamilyAllPrefixBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/familyallprefixbound--d9ae8f26970e3f1aa512deb7.md) | 45 | `declaration-track:d9ae8f26970e3f1aa512deb72ff304f96a16a8aaeef02bb77465b198b333dbc6` |
| 2 | `def` | [FamilyPrefixMaxBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound--2f58b8736cb6125e9f817b31.md) | 52 | `declaration-track:2f58b8736cb6125e9f817b31c9c8efae302d7853862c466b7782434a7e32426a` |
| 3 | `theorem` | [familyPrefixMaxBound_of_allPrefixBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound-of-allprefixbound--b15364c97b9d7f6aeac82708.md) | 59 | `result-track:b15364c97b9d7f6aeac827081a82d59728d69425f935a338ddcafa3dff2454b3` |
| 4 | `theorem` | [familyAllPrefixBound_of_prefixMaxBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/familyallprefixbound-of-prefixmaxbound--3afed45da33cefb4ae9ec2fb.md) | 70 | `result-track:3afed45da33cefb4ae9ec2fbd69c396c76a895715b28a72ea954c191bfa9c55a` |
| 5 | `theorem` | [familyPrefixMaxBound_iff_allPrefixBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/familyprefixmaxbound-iff-allprefixbound--efc716632d87f2e5f56c9791.md) | 82 | `result-track:efc716632d87f2e5f56c9791a56acf7963b60f60b43b074edbb8937cb6a4b875` |
| 6 | `def` | [growingShiftActive](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/growingshiftactive--ba229bc5ef4e8273ac27da1c.md) | 91 | `declaration-track:ba229bc5ef4e8273ac27da1cfb15cc55d6b7ce4a87fdfe6f94312cf6dcd63d46` |
| 7 | `def` | [GrowingShiftTwoPointAllPrefixBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/growingshifttwopointallprefixbound--542fa7e43d7013d273ec69b6.md) | 96 | `declaration-track:542fa7e43d7013d273ec69b64313acfb85a99d43bdbdd42bfea4fc20f51130e8` |
| 8 | `theorem` | [growingShiftTwoPointMaximalBound_iff_allPrefixBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/growingshifttwopointmaximalbound-iff-allprefixbound--f9e73738fd335a107e30e1a2.md) | 103 | `result-track:f9e73738fd335a107e30e1a2c4595e1529f46c421f77935b1d5cb36811ebd06d` |
| 9 | `def` | [shiftCardinalitySquareBudget](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/shiftcardinalitysquarebudget--61e350caceff5bc0527ae1a8.md) | 122 | `declaration-track:61e350caceff5bc0527ae1a83c9e9e8c4cec739beb815ec4a546e45d8ed094c5` |
| 10 | `theorem` | [summedShiftMaximalEnergyBound_of_uniformMaximal](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/summedshiftmaximalenergybound-of-uniformmaximal--fee572274944dc1d2a82b61d.md) | 128 | `result-track:fee572274944dc1d2a82b61de40472494e77534bdedea1d435661ef057239b1e` |
| 11 | `theorem` | [summedShiftMaximalEnergyBound_of_allPrefix](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/summedshiftmaximalenergybound-of-allprefix--e89cf3d585ef111552469ff9.md) | 152 | `result-track:e89cf3d585ef111552469ff9f6497a1d5015d594829ae7f9718406e46984fdf8` |
| 12 | `def` | [TerminalFamilyBoundAt](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/terminalfamilyboundat--cd8e297e9ce67c39fa8066e5.md) | 162 | `declaration-track:cd8e297e9ce67c39fa8066e5fdce60f2a356b8ad42dad72a2a9a3ceef689e701` |
| 13 | `def` | [MaximalFamilyBoundAt](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/maximalfamilyboundat--302508a2a2d3baf4b025a4a7.md) | 168 | `declaration-track:302508a2a2d3baf4b025a4a7860d1c56308eb99680c8643eb0fbc002da31869f` |
| 14 | `theorem` | [actualShiftOneTerminalBoundAtTwo](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/actualshiftoneterminalboundattwo--81bed9677df8ec40e89cb041.md) | 174 | `result-track:81bed9677df8ec40e89cb041501bf48731f7b3cf082fde808395e51841f6e6a6` |
| 15 | `theorem` | [actualShiftOneNoZeroMaximalBoundAtTwo](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/actualshiftonenozeromaximalboundattwo--3be0cbfebf504498d3c1872b.md) | 183 | `result-track:3be0cbfebf504498d3c1872bb4a107bf4167f68e6058f1f7cd194fb54f3569c2` |
| 16 | `theorem` | [actualTerminalFamilyBound_doesNotImplyMaximal](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/actualterminalfamilybound-doesnotimplymaximal--a96333a8d9514a7059214c71.md) | 192 | `result-track:a96333a8d9514a7059214c71a1409394220469c542bcef57a1f3cb1ea77b4eac` |
| 17 | `def` | [ParameterDependentNaturalBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/parameterdependentnaturalbound--89aaef78f35b7070b9d10fd4.md) | 202 | `declaration-track:89aaef78f35b7070b9d10fd438323944054a43d00f20093381f1943196bf9457` |
| 18 | `def` | [UniformParameterNaturalBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/uniformparameternaturalbound--7132e7b05311eb523e83f8c9.md) | 206 | `declaration-track:7132e7b05311eb523e83f8c912bf1580363bb1fbcd46e64a5c817bd45dbc5315` |
| 19 | `theorem` | [parameterDependentNaturalBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/parameterdependentnaturalbound--cf38f155f5057926e7c30b2c.md) | 210 | `result-track:cf38f155f5057926e7c30b2c9c1eddfcef6a42a5c727a904d19d0df0ed973134` |
| 20 | `theorem` | [not_uniformParameterNaturalBound](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/not-uniformparameternaturalbound--91dcc3a343c9b8bfc3043f3d.md) | 216 | `result-track:91dcc3a343c9b8bfc3043f3d79bb3561cebe256c6a07525f71f9ec6038959819` |
| 21 | `theorem` | [parameterDependent_doesNotImply_uniform](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/parameterdependent-doesnotimply-uniform--94c1b8840971ad07a819bc26.md) | 224 | `result-track:94c1b8840971ad07a819bc26b7ab984e68e3c06852ceb260ecaf357db5cc87d9` |
| 22 | `def` | [pointwiseToUniformRequiresBridge](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/pointwisetouniformrequiresbridge--746e4e54ffe8a5d2d460d713.md) | 233 | `declaration-track:746e4e54ffe8a5d2d460d71328fe0f6151df6f59edfc7988ab8411d525958a00` |
| 23 | `def` | [actualTerminalRefutesMaximalRecovery](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/actualterminalrefutesmaximalrecovery--52d5b20400ee2355a7391448.md) | 241 | `declaration-track:52d5b20400ee2355a7391448159683d8542ceccd7e80d8d639e9a73bbd5baa96` |
| 24 | `def` | [growingShiftAllPrefixImpliesMaximal](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/growingshiftallprefiximpliesmaximal--6834d3be2a580cfc605b41ef.md) | 250 | `declaration-track:6834d3be2a580cfc605b41ef44b1ed833c3a468a6a52536d701c9843bfe338d1` |
| 25 | `def` | [growingShiftMaximalImpliesCardinalityEnergy](../../../../mathematics/NumberTheory/Moebius/ChowlaScopeSeparation.lean/declarations/growingshiftmaximalimpliescardinalityenergy--2c93ccf50b3328641138af3c.md) | 259 | `declaration-track:2c93ccf50b3328641138af3cff8ad6d80e62d396c152d9835076ede55a87a56f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
