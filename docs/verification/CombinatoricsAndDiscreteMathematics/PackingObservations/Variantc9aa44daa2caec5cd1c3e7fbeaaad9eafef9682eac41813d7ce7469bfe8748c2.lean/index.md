# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PackingObservations.Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf79c1e67cc6bd7d4db361cc94dccdef8eba2c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.FactorState` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cappedValuation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation--a1f5e0b88daa10851865269f.md) | 22 | `declaration-track:a1f5e0b88daa10851865269fd865c09c33ffcb3ceb911419d09027e7ee840dbf` |
| 2 | `theorem` | [cappedValuation_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-le--76bcce1a691bf47e98adb49c.md) | 26 | `result-track:76bcce1a691bf47e98adb49c3ffed18b49cc93f6f07391e7bcfc55f9583ccfbc` |
| 3 | `theorem` | [cappedValuation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-zero--3de44b2d17d9919a92650d4c.md) | 33 | `result-track:3de44b2d17d9919a92650d4c6b99724aec761dcd62d84920412a26cd4127a6e5` |
| 4 | `theorem` | [cappedValuation_projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-projection--87e3ebc21a1f5604d29a979d.md) | 37 | `result-track:87e3ebc21a1f5604d29a979d75883fe56408c5ac2ef9395fc149b2731af3570b` |
| 5 | `theorem` | [cappedValuation_power_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-power-dvd--e4fe77a91b7ae028a959a18a.md) | 46 | `result-track:e4fe77a91b7ae028a959a18a5fa26d2c8099e892f51ea6e083a953daeb03c805` |
| 6 | `theorem` | [cappedValuation_eq_of_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-eq-of-profile--8c0bb3f66378b6c0eec4c558.md) | 58 | `result-track:8c0bb3f66378b6c0eec4c55808ebdcf235a95eae638b9e042c2102963e74b379` |
| 7 | `theorem` | [cappedValuation_eq_of_fin_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/cappedvaluation-eq-of-fin-profile--98585e76ae82e868cf2194b1.md) | 69 | `result-track:98585e76ae82e868cf2194b10cb65daa5b90b6042dcd8af35120f8ba4dc7f79a` |
| 8 | `def` | [signature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/signature--814fbb0e4cb46f4f204e3be6.md) | 79 | `declaration-track:814fbb0e4cb46f4f204e3be623722e2b4a81271b62206534516342cb123b9397` |
| 9 | `def` | [ObservationalEquivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/observationalequivalence--ca767ff462fda2838ce81a85.md) | 87 | `declaration-track:ca767ff462fda2838ce81a852e4afd180bde098907c9d29a07a096fab3b3f047` |
| 10 | `theorem` | [signature_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/signature-eq-iff--46ee5e1b3867d49dc3a0ea73.md) | 91 | `result-track:46ee5e1b3867d49dc3a0ea7360d53dfbbfeff944f5943be033ca8f92d2eff1a7` |
| 11 | `theorem` | [support_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/support-partition-refinement--b4fc618f3dd75ed436863bd0.md) | 112 | `result-track:b4fc618f3dd75ed436863bd0dbacf73cf8f3f9a2d86ce64ffd3e94e1144dc266` |
| 12 | `theorem` | [depth_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/depth-partition-refinement--e03492684241ea70d3b2670d.md) | 120 | `result-track:e03492684241ea70d3b2670d395dd79a6243a80b7d4fbebec818bdb84fdc63b7` |
| 13 | `theorem` | [signature_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/signature-partition-refinement--8715482708e1b0eb29801dd2.md) | 129 | `result-track:8715482708e1b0eb29801dd2d40816c470c3156414eaced90a917a982232fe85` |
| 14 | `structure` | [Packing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/packing--33da5b901ba45b2287f3cd63.md) | 136 | `declaration-track:33da5b901ba45b2287f3cd639faf6a697ff574ed120ca8d15921081248ce024d` |
| 15 | `def` | [Packing.survivorSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/packing-survivorset--def6505c6815ef0f87ccb642.md) | 153 | `declaration-track:def6505c6815ef0f87ccb64254117bfb144b8e070314622868d30cb9833df548` |
| 16 | `theorem` | [Packing.mem_survivor_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/packing-mem-survivor-iff--1a33bf64661bec2d5d4bed82.md) | 158 | `result-track:1a33bf64661bec2d5d4bed82f8ae4cca8d2eef83781f82aa3d827226ee25494e` |
| 17 | `theorem` | [Packing.exclusion_witness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/packing-exclusion-witness--bcc4e4d6109aa69c1cfd42af.md) | 178 | `result-track:bcc4e4d6109aa69c1cfd42afa70f5fe12a4b4d1bdbc856925e724a159f6b58f4` |
| 18 | `theorem` | [Packing.relative_minimality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/packing-relative-minimality--77bdddb8e2607a1bdec8a0bd.md) | 188 | `result-track:77bdddb8e2607a1bdec8a0bd1df1a76ff1a225a403a0b61d872d6083e67d40e4` |
| 19 | `structure` | [RawPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/rawpacking--dc3c8f6f75a4bc194181298b.md) | 199 | `declaration-track:dc3c8f6f75a4bc194181298bc9b0e1f39cb51107a4ddd544e96bfbce83772698` |
| 20 | `def` | [RawPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/rawpacking-survives--cac3c25b04f2126deecad918.md) | 208 | `declaration-track:cac3c25b04f2126deecad918de44bfe472b270ebc6086f6983ce584ed8a1c55e` |
| 21 | `structure` | [ProperPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/properpacking--66d770211f4d18c455297ecd.md) | 212 | `declaration-track:66d770211f4d18c455297ecde47a8ce143ae0b2846336851e62960e8808c3b0a` |
| 22 | `def` | [ProperPacking.InRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/properpacking-inrange--6ab11f42840d7af58aa23869.md) | 223 | `declaration-track:6ab11f42840d7af58aa23869e4a2929189a016fcf96801a47ed4fe1e35676b57` |
| 23 | `def` | [ProperPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/properpacking-survives--1d829a6692155c1175ee798a.md) | 228 | `declaration-track:1d829a6692155c1175ee798a8bcacf726f862b96815adb02f6bd735281267904` |
| 24 | `theorem` | [raw_excludes_visible_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/raw-excludes-visible-prime--b817642d94728d84393a4e91.md) | 233 | `result-track:b817642d94728d84393a4e911d59b4fc9b22b90b34f270a7bd447f45846d1ee3` |
| 25 | `theorem` | [proper_preserves_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/proper-preserves-primes--373b58b7260390ccf9715403.md) | 241 | `result-track:373b58b7260390ccf9715403ca9158b66c16c7d38b74a1ea74f6194f59aafefb` |
| 26 | `theorem` | [raw_support_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/raw-support-monotone--22be907427cfba4f5b53ec5b.md) | 249 | `result-track:22be907427cfba4f5b53ec5b0862eb23a6d532f6f19301a286ca9b7e9ca6263e` |
| 27 | `theorem` | [zero_not_nondivisible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/zero-not-nondivisible--bf691e1f75df0b6e7070d2ab.md) | 256 | `result-track:bf691e1f75df0b6e7070d2ab2c4965ad9312f0db5241eb0fcc06d4f0ab66dd00` |
| 28 | `theorem` | [shallow_observation_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/shallow-observation-collision--54e0f3c7d88873630780d59c.md) | 260 | `result-track:54e0f3c7d88873630780d59cb734f3c1e24a3ba36184924f8c65d043c6939ce4` |
| 29 | `theorem` | [deeper_observation_separation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/deeper-observation-separation--2c653574a1c235731371c259.md) | 268 | `result-track:2c653574a1c235731371c25993fc004be524f77b0079320e1e15646f3bfe4e97` |
| 30 | `theorem` | [prime_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/prime-power-period-count--3fb7276d9f7460c147192801.md) | 277 | `result-track:3fb7276d9f7460c1471928018df110e382e75fd583aa4bc98c538b9ae61dbc49` |
| 31 | `theorem` | [next_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/next-power-period-count--09be8d3eba11cded7f1cdf39.md) | 283 | `result-track:09be8d3eba11cded7f1cdf39683be1d29d5060d58e27f49751ae34f17fb7af95` |
| 32 | `theorem` | [exact_valuation_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/exact-valuation-shell--9d5c9d84515c3c30c5390032.md) | 289 | `result-track:9d5c9d84515c3c30c53900323641160cc42c8fbddcaf5ab6d92b4f59d1907cbd` |
| 33 | `theorem` | [exact_valuation_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/exact-valuation-period-count--07462b8137aa67dd879017d6.md) | 296 | `result-track:07462b8137aa67dd879017d691c3a69d623cd94e90a851a0ca67388f1f10beea` |
| 34 | `theorem` | [prime_power_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/prime-power-period-frequency--21112c89771f25c9bdacec2d.md) | 320 | `result-track:21112c89771f25c9bdacec2d12aa6a4d4fb3c94964f84b6a18b021f442e81733` |
| 35 | `theorem` | [exact_valuation_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/exact-valuation-period-frequency--eb0175e7cc0078fd94103eb8.md) | 330 | `result-track:eb0175e7cc0078fd94103eb8317ec8191e9507c6bdb253dae8caaefecc2074b9` |
| 36 | `theorem` | [logarithmic_divisibility_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/logarithmic-divisibility-scale--77ccf625b1af2d1e263c6c7b.md) | 342 | `result-track:77ccf625b1af2d1e263c6c7bc8ea95b8c6981d51652744282aded582b485ed7d` |
| 37 | `theorem` | [bounded_proper_classification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/bounded-proper-classification--b19c32b97530e819620e0d4e.md) | 349 | `result-track:b19c32b97530e819620e0d4e035878cfbcd8415ea3475bbca86cf523c6770377` |
| 38 | `theorem` | [raw_survival_implies_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/raw-survival-implies-prime-components--41a9d0dcce35369e18131ad2.md) | 367 | `result-track:41a9d0dcce35369e18131ad274a94b75efc9c9b9b95a069e63d3c10b45e382ee` |
| 39 | `theorem` | [proper_preserves_two_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/proper-preserves-two-three--df52faafd803de2ee6eb547d.md) | 382 | `result-track:df52faafd803de2ee6eb547d31838c0ef8fc2d9b9168d5344e43dfe501a27915` |
| 40 | `theorem` | [proper_preserves_translated_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/proper-preserves-translated-prime-components--6b6e171b51503043f16334cb.md) | 403 | `result-track:6b6e171b51503043f16334cb9a238cfa23091648b5edebba8a2562de87cbe23b` |
| 41 | `theorem` | [zero_depth_keeps_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variantc9aa44daa2caec5cd1c3e7fbeaaad9eafef9682eac41813d7ce7469bfe8748c2.lean/declarations/zero-depth-keeps-composite--14dadf636cc4b304714a1c7c.md) | 412 | `result-track:14dadf636cc4b304714a1c7c038d5830b2b7d9f0d6ec206410b5dcdf4397bc2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
