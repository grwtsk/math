# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9887c4023b79fc6cda09e8dd77f897a3ca2f618",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9887c4023b79fc6cda09e8dd77f897a3ca2f618`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeBand](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/primeband--6ac52c00ffedaed950556307.md) | 19 | `declaration-track:6ac52c00ffedaed9505563078692a1ac8197a54d706e7f1c37e011390f680b8a` |
| 2 | `def` | [topBand](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/topband--039179bc87c5f791bf238670.md) | 24 | `declaration-track:039179bc87c5f791bf238670ad2b36c9789d015e594591f479025ab8e7930ce9` |
| 3 | `def` | [harmonicMass](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/harmonicmass--8eea4652f2f4bb4a5df47a45.md) | 28 | `declaration-track:8eea4652f2f4bb4a5df47a4519d1a0a716fcd34fa4d0a922063634e15e2c9b3b` |
| 4 | `theorem` | [primeBand_mem_lower](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/primeband-mem-lower--7252e0a57690c2f7f15d24a0.md) | 30 | `result-track:7252e0a57690c2f7f15d24a00f6ae264d3de6cd51dbe45901b7a027cf0660edc` |
| 5 | `theorem` | [primeBand_mem_prime](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/primeband-mem-prime--81ccc5d65202ada1ad399ca9.md) | 34 | `result-track:81ccc5d65202ada1ad399ca958d30f31abd7c0af11fbf600933cffed61ead53b` |
| 6 | `theorem` | [primeBand_pair_beyond_horizon](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/primeband-pair-beyond-horizon--92d9b98ce4af524cbbaf338b.md) | 40 | `result-track:92d9b98ce4af524cbbaf338ba4b8ad43b2b836f57ad533b2f3813ee13c7ae891` |
| 7 | `def` | [BandMassInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/bandmassinput--f41c0d5903f43ceeb59bf15e.md) | 58 | `declaration-track:f41c0d5903f43ceeb59bf15e31f8eb7805f9cab7bb148a86686968df2895de30` |
| 8 | `def` | [TopBandCountInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/topbandcountinput--75e6d537f1530abf03d2a06f.md) | 64 | `declaration-track:75e6d537f1530abf03d2a06f4d5aa37205a850ac2be530b5e79c82c9e7061d90` |
| 9 | `def` | [ExponentialEnergyInput](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/exponentialenergyinput--34c363445bf0f455d5a44924.md) | 70 | `declaration-track:34c363445bf0f455d5a449249d174de3b7403875627f81dad3e3ce1f7aeacb18` |
| 10 | `theorem` | [narrow_implies_transition](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/narrow-implies-transition--77cf179894df239910ce68bc.md) | 75 | `result-track:77cf179894df239910ce68bc67d244d45097cf728cfe21f803ec5e753b7f89f5` |
| 11 | `theorem` | [narrow_forces_energy_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/narrow-forces-energy-bound--d7cd2e02b8f0a822fc810a22.md) | 83 | `result-track:d7cd2e02b8f0a822fc810a22810bc2f9bb5f88e09f3497b410f1d9f85b748785` |
| 12 | `theorem` | [finite_nc_contradiction](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/finite-nc-contradiction--c4fec4ffb50a0c4912283e0b.md) | 97 | `result-track:c4fec4ffb50a0c4912283e0b0c433d53df2c6c1fe05258aadbff1fc5585e1efb` |
| 13 | `theorem` | [narrow_energy_lower_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/narrow-energy-lower-bound--a16465d5a2cb8ccbff1e6936.md) | 112 | `result-track:a16465d5a2cb8ccbff1e693622a5bbd51291726704eeae9b788518ad33bbabb1` |
| 14 | `theorem` | [exponential_input_not_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/exponential-input-not-polynomial--5ed8e4f36d71a233c1f9c96a.md) | 123 | `result-track:5ed8e4f36d71a233c1f9c96ae74b4d3341251c44cb393bd3309c2591e98fdf2c` |
| 15 | `theorem` | [eventual_nc_impossible](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/eventual-nc-impossible--aad57bd3f5733452549099d7.md) | 175 | `result-track:aad57bd3f5733452549099d794f9e01a04f344179f38ba40c8a01be587f98d76` |
| 16 | `theorem` | [crude_inventory_reserve_nc](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/declarations/crude-inventory-reserve-nc--516d849606387123613ea2b4.md) | 194 | `result-track:516d849606387123613ea2b469d4fea3f34ba2089269e789786af295d4b0561d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
