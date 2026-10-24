# Verification target: GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a090d4535a2fee914bf0bcbaa59d73cbcf35002",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a090d4535a2fee914bf0bcbaa59d73cbcf35002`.

Source path: `GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ContinuedFractions/ScheduledDenominators.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.TerminatesIffRat` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Real.Irrational` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LiminfLimsup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [batchIncrement](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchincrement--ac7348150b73e573acbf69bd.md) | 35 | `declaration-track:ac7348150b73e573acbf69bd594b9b77b5f6b2c3d3ffb1e6d832758085a962b2` |
| 2 | `def` | [batchClock](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchclock--72db3fe216ec0c41a91c8d09.md) | 39 | `declaration-track:72db3fe216ec0c41a91c8d0906875c5ed1edbec1da879e2f798f6464f973f455` |
| 3 | `theorem` | [batchClock_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchclock-zero--d800a768ba9b9f4b7f84f1b1.md) | 42 | `result-track:d800a768ba9b9f4b7f84f1b102f1a671f9d6e1bccf2398a6160bad2f3ae3571b` |
| 4 | `theorem` | [batchClock_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchclock-succ--58c06107a30f2b02e839d35c.md) | 43 | `result-track:58c06107a30f2b02e839d35ce1e3d4d732140c58ce1304164aab87a82564b4e1` |
| 5 | `theorem` | [batchIncrement_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchincrement-pos--37a4b031ea6d94c84b20d644.md) | 46 | `result-track:37a4b031ea6d94c84b20d644bda90a469dc6f82f115504e5b515bf4d485c7b72` |
| 6 | `theorem` | [batchIncrement_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchincrement-le--2af23f37323aec353f02ad83.md) | 52 | `result-track:2af23f37323aec353f02ad83570485ded18214e4db6f7e2ca8f55261026a5f92` |
| 7 | `theorem` | [index_le_batchClock](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/index-le-batchclock--8d77316ee18830b072e0a8ce.md) | 59 | `result-track:8d77316ee18830b072e0a8ce183df56a3075b5b8ee4386e46f4d04ede5fff399` |
| 8 | `theorem` | [batchClock_strictMono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchclock-strictmono--19c615f2f39ba882c9bbe566.md) | 66 | `result-track:19c615f2f39ba882c9bbe5661483e3c01b0b405b990c2d8b84b05f933ec141f4` |
| 9 | `theorem` | [batchClock_tendsto](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/batchclock-tendsto--cd14041d045d433ddb4881dc.md) | 74 | `result-track:cd14041d045d433ddb4881dc761880d145a80fc9bd1cf316210008d0b20202b2` |
| 10 | `theorem` | [unique_batch](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/unique-batch--1ee35536adff67d429070ba8.md) | 79 | `result-track:1ee35536adff67d429070ba87146de7163467f79ec398ed71bb61310e33fde02` |
| 11 | `theorem` | [epoch_no_starvation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/epoch-no-starvation--18fb29375cec18ab3d6d5323.md) | 105 | `result-track:18fb29375cec18ab3d6d5323185f1b6054640f0f47e41418d40389da05e28f5b` |
| 12 | `def` | [partialQuotient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/partialquotient--f598635cb6f24eb7cca7c980.md) | 116 | `declaration-track:f598635cb6f24eb7cca7c980e18ae4746029cf45738b9415d477657c9924b0b7` |
| 13 | `def` | [continuedFraction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/continuedfraction--80f5fa018ee4a9ac8c8caae7.md) | 119 | `declaration-track:80f5fa018ee4a9ac8c8caae7430f8bf2ea4b53b72022e5f30605ec0da004d2da` |
| 14 | `def` | [denominator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator--fbba0b00647d674a3d878070.md) | 123 | `declaration-track:fbba0b00647d674a3d878070f02c78c510aca00a3f6f398f6d55d42f73f8fb09` |
| 15 | `def` | [numerator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/numerator--0e620f7fab6ea8aa4a752394.md) | 129 | `declaration-track:0e620f7fab6ea8aa4a752394946d4c36dacb40d15411dad85213aa64af789205` |
| 16 | `theorem` | [partialQuotient_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/partialquotient-pos--4a02c25243359d7ec6c0911f.md) | 135 | `result-track:4a02c25243359d7ec6c0911f7bfffd63a7f6ab8ed17c6dc2136ca84d77132abe` |
| 17 | `theorem` | [continuedFraction_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/continuedfraction-term--e55c2e028a00d8b384ac6abc.md) | 140 | `result-track:e55c2e028a00d8b384ac6abced5d95f3d1333652c6a3eb631e5ee4cdc1c41dc1` |
| 18 | `theorem` | [continuedFraction_not_terminates](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/continuedfraction-not-terminates--13b4c135b604a163b6f9c44f.md) | 144 | `result-track:13b4c135b604a163b6f9c44f9a02bc3d5883c03680768aa0b8968794aac97a38` |
| 19 | `theorem` | [native_continuants](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/native-continuants--07dc1c0c4c578c8883d4b092.md) | 151 | `result-track:07dc1c0c4c578c8883d4b09299fcbcc0984fd262f53cb5eb50bd6055a17b48d5` |
| 20 | `theorem` | [denominator_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-pos--3ad0cb630ff4f01ad72a215a.md) | 167 | `result-track:3ad0cb630ff4f01ad72a215a69ee5c9a8a0b10e1e9bfbbc460d7390d951f1014` |
| 21 | `theorem` | [fib_le_denominator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/fib-le-denominator--d708fe5428a2705f44aaf82c.md) | 175 | `result-track:d708fe5428a2705f44aaf82c1c32ee47219794b84b86e12060f64c022bdfae4f` |
| 22 | `theorem` | [index_le_denominator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/index-le-denominator--cfc365b808f78f2bfdf32d58.md) | 186 | `result-track:cfc365b808f78f2bfdf32d586c594151d1cbe3d949179dd7075c3c8f6e7682d5` |
| 23 | `theorem` | [denominator_tendsto](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-tendsto--7e0b8f50c717d364686199f7.md) | 198 | `result-track:7e0b8f50c717d364686199f780876cf796b00233451bbe0604a00c7ffd7d5719` |
| 24 | `theorem` | [denominator_ones](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-ones--4a027edc2a197ac5736698bd.md) | 203 | `result-track:4a027edc2a197ac5736698bdd35894ca28fdeb52551a4e95486ea8d6019a85b7` |
| 25 | `def` | [DenominatorRecurrence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominatorrecurrence--ef1a3ccf50b1b5c7dc4f806d.md) | 213 | `declaration-track:ef1a3ccf50b1b5c7dc4f806d6dea565b255daa89cd01e0694e18d64c7b4522ee` |
| 26 | `theorem` | [generated_denominator_recurrence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/generated-denominator-recurrence--42f686fb7604f377f2c18bfd.md) | 218 | `result-track:42f686fb7604f377f2c18bfd27613c7d0ea72611307bd333e0aa521b1823226b` |
| 27 | `theorem` | [denominator_recurrence_identifies](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-recurrence-identifies--be236c49ac5338cb3bdbcd3c.md) | 223 | `result-track:be236c49ac5338cb3bdbcd3c008a9cb437a15801de66dc99781688b5291d419e` |
| 28 | `theorem` | [powers_two_not_denominators](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/powers-two-not-denominators--701dd7dfbfe590ea5a50bdca.md) | 233 | `result-track:701dd7dfbfe590ea5a50bdca31a972cb3cfbc7469bb877a4cdf8f93876b6a477` |
| 29 | `def` | [growthCoefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/growthcoefficient--38b4825c3564e181b5a39344.md) | 241 | `declaration-track:38b4825c3564e181b5a39344e9cade678ada1cef704b13d9ae5179565ea1874c` |
| 30 | `theorem` | [growthCoefficient_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/growthcoefficient-pos--e449e8d1ba915354319fcc31.md) | 245 | `result-track:e449e8d1ba915354319fcc31dbbf431ce65266b73ae4bd0fd8f75edcc7fae98d` |
| 31 | `theorem` | [growthCoefficient_meets_target](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/growthcoefficient-meets-target--42bedd456b7311260f5745f5.md) | 251 | `result-track:42bedd456b7311260f5745f5448f02e122aa899385fe0bb34b5551ff7dca5a8a` |
| 32 | `theorem` | [denominator_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-coprime--de04bc0b9b63c6f723c5162c.md) | 262 | `result-track:de04bc0b9b63c6f723c5162c818c1cd849079d6745b671d168db06ad5aaaba4e` |
| 33 | `theorem` | [denominator_le_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-le-succ--051a047f70fd41ef04032798.md) | 272 | `result-track:051a047f70fd41ef04032798b12cab185545ae5ba3023fdc4b54022e6dbaf88c` |
| 34 | `theorem` | [denominator_remainder](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/denominator-remainder--592410304f046f0ae06d0a8a.md) | 283 | `result-track:592410304f046f0ae06d0a8a004176513d6edf2c201427a9bc40cd7d9f6b9b07` |
| 35 | `def` | [arithmeticExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/arithmeticexponent--859514f795768f6ce785df3b.md) | 290 | `declaration-track:859514f795768f6ce785df3b55792467815c6cab679f3fb8b7bbbe34785cac56` |
| 36 | `theorem` | [log_ratio_tendsto_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/log-ratio-tendsto-zero--643d21b4d64405de2870e95f.md) | 294 | `result-track:643d21b4d64405de2870e95f36e8056b181fa5dac8323590d83149e046f45b78` |
| 37 | `theorem` | [arithmeticExponent_zero_of_bounded_ratio](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/arithmeticexponent-zero-of-bounded-ratio--d6979b7b29ec3558487e93dc.md) | 319 | `result-track:d6979b7b29ec3558487e93dc8a8a2c62a644dff93469920ac60ed0d73e7d8809` |
| 38 | `theorem` | [fibonacci_arithmeticExponent_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/fibonacci-arithmeticexponent-zero--67f77d668e51db2ee26bec6c.md) | 327 | `result-track:67f77d668e51db2ee26bec6c1f169dcc849905b5fdf0f57d1b0b9b7f63cf09c7` |
| 39 | `def` | [spikeCoefficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikecoefficient--609be63da12b92e4b18ed69a.md) | 342 | `declaration-track:609be63da12b92e4b18ed69acf30683752936c581ac7c14284a7a2c1451e1f61` |
| 40 | `def` | [spikeStep](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikestep--c78f89903fb65d5758872bab.md) | 346 | `declaration-track:c78f89903fb65d5758872bab0fe46abee0ff27c7fbd435555992bb73a6e0f2fa` |
| 41 | `theorem` | [spikeCoefficient_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikecoefficient-pos--acc05904ca9579bdf723fdcd.md) | 350 | `result-track:acc05904ca9579bdf723fdcd8ccd941bc4b5dab13d5ca16fcab305b61a5eee64` |
| 42 | `theorem` | [spikeCoefficient_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikecoefficient-zero--a3085d91825d4da724293900.md) | 354 | `result-track:a3085d91825d4da724293900d750c006efdb5512427f1a993c6f83fb4a5182e1` |
| 43 | `theorem` | [spike_rate_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spike-rate-bounds--6ff0ea0ca21cb19cb842f86d.md) | 359 | `result-track:6ff0ea0ca21cb19cb842f86da5e2085e92b2b3d7baed69355139b70077f67d0a` |
| 44 | `def` | [effectiveStrength](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/effectivestrength--331bc06eb47f7b6b97e5f001.md) | 398 | `declaration-track:331bc06eb47f7b6b97e5f00157b46593220cb9d793c5185f6deb2997cf91e65a` |
| 45 | `theorem` | [effectiveStrength_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/effectivestrength-nonneg--224285a8c7ccf3e21f14db68.md) | 402 | `result-track:224285a8c7ccf3e21f14db6871db6debd6b3c1953bb234db9d7d464fe3b9f631` |
| 46 | `theorem` | [arithmeticExponent_of_spikes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/arithmeticexponent-of-spikes--75024d65b07ce25d5297b2f0.md) | 411 | `result-track:75024d65b07ce25d5297b2f0acaf17c1920bc4dda89a777f6987e6e5fe702573` |
| 47 | `theorem` | [arithmeticExponent_of_converging_spikes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/arithmeticexponent-of-converging-spikes--b2e8b9d9715cf2119708b9ed.md) | 445 | `result-track:b2e8b9d9715cf2119708b9edae5f4943d686cb23f0eb0a87818d99a25756caa0` |
| 48 | `theorem` | [arithmeticExponent_of_diverging_spikes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/arithmeticexponent-of-diverging-spikes--31cdcf24cfbbc35d3d35c3c1.md) | 457 | `result-track:31cdcf24cfbbc35d3d35c3c1f101fbf39d782ad92f5a56ffe636bd50e026c209` |
| 49 | `def` | [spikeDenominator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator--339f7780fc3d94ff4a007bde.md) | 470 | `declaration-track:339f7780fc3d94ff4a007bdefe0a59728c2ed410d818ec38f301f36fe32faeef` |
| 50 | `def` | [spikePartialQuotient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikepartialquotient--f12f32fcc6678943a9e6fc27.md) | 477 | `declaration-track:f12f32fcc6678943a9e6fc27f0adb672beeec49aa374dcd3d8399076f9ff64d4` |
| 51 | `theorem` | [spikeDenominator_identifies](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator-identifies--6b887fffec5ea8d25c21ce0e.md) | 481 | `result-track:6b887fffec5ea8d25c21ce0e93440fed98a1e3857805cd3cb90cff4e2a51b64b` |
| 52 | `theorem` | [spikeDenominator_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator-pos--ad2758ac88534c1562a8619b.md) | 492 | `result-track:ad2758ac88534c1562a8619bdd45127cc440c52bb818ad3943bc177d71ff3a20` |
| 53 | `theorem` | [spikeDenominator_tendsto](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator-tendsto--73e98bf5662e9ce2bd1dc224.md) | 498 | `result-track:73e98bf5662e9ce2bd1dc22426010e8f506bd5690260d3b212918169857e0ab6` |
| 54 | `theorem` | [spikeDenominator_step](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator-step--db37064c2f4871f49e993db4.md) | 504 | `result-track:db37064c2f4871f49e993db4024da9bf7f14b9ab58fd153aa6a19e045a2e0b2b` |
| 55 | `theorem` | [spikeDenominator_exponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/spikedenominator-exponent--8ea1773f88ab4dbaa8e0c7b7.md) | 517 | `result-track:8ea1773f88ab4dbaa8e0c7b7aea7f526bbd8f6b6a4e81526c12a5af8593a7894` |
| 56 | `theorem` | [selected_spike_exponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/selected-spike-exponent--d35c2a8effc08225fe14e12f.md) | 525 | `result-track:d35c2a8effc08225fe14e12f0e4f793946348d4abd6bad82c3c7f6565e38f645` |
| 57 | `def` | [FrequencyRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/frequencyrealization--fbc00be0ee60d1fd267e8a3a.md) | 533 | `declaration-track:fbc00be0ee60d1fd267e8a3a3461404dee39c3e948b405e56bb8165cf9685c1b` |
| 58 | `theorem` | [frequency_irrational](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/frequency-irrational--37fe91b134346544170106ac.md) | 537 | `result-track:37fe91b134346544170106ace54806020f63901be62a8983ab1cc3e2fdf60b60` |
| 59 | `theorem` | [frequency_convergent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/declarations/frequency-convergent--93439dc3d46f15bd9a1fe2ad.md) | 546 | `result-track:93439dc3d46f15bd9a1fe2adbdd9ca44eeec27a29e538b9889a570bff5bc3126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
