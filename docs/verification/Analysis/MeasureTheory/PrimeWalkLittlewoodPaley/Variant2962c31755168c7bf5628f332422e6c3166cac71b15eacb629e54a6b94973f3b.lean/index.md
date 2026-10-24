# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkLittlewoodPaley.Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53cabc24d62dac43363592d28460909fd5da9052",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53cabc24d62dac43363592d28460909fd5da9052`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicScale](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/dyadicscale--716eaf5add3f39c9bf4a3e75.md) | 54 | `declaration-track:716eaf5add3f39c9bf4a3e756d3ec325473250d57d58c6b79edbcd0971fd86dd` |
| 2 | `theorem` | [dyadicScale_pos](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/dyadicscale-pos--a4b098b38ac638fe3098a811.md) | 58 | `result-track:a4b098b38ac638fe3098a811970d554f9e04035205f3d6acfb81e71188c8532f` |
| 3 | `theorem` | [dyadicScale_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/dyadicscale-ne-zero--c8e6e5795db8e3b14b8d7a60.md) | 62 | `result-track:c8e6e5795db8e3b14b8d7a60fda6edff36128c7b9bfc92237a2fedfa18960478` |
| 4 | `structure` | [DyadicConvolutionKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/dyadicconvolutionkernel--912a7ee3c3cc9a266e0b5627.md) | 68 | `declaration-track:912a7ee3c3cc9a266e0b5627db502839db0c5ffb693000f3e6b7684cc50784a2` |
| 5 | `def` | [scaledKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/scaledkernel--3638199ecb58795e5f40c33a.md) | 79 | `declaration-track:3638199ecb58795e5f40c33a384f6d4ba1da7cc5f2f3a2a6d3a128ac3ec0acfa` |
| 6 | `theorem` | [scaledKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/scaledkernel-integrable--c7f2fa3a8ed8e8aaac5ee409.md) | 83 | `result-track:c7f2fa3a8ed8e8aaac5ee40998437500794ba0f3f31afeb72b1e9784f8eb2c9e` |
| 7 | `theorem` | [scaledKernel_integral_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/scaledkernel-integral-eq-zero--4da804641716b9921b7eb624.md) | 88 | `result-track:4da804641716b9921b7eb62414a765e66bbf8257e1081a65d58f51329a5c9d52` |
| 8 | `def` | [complexScaledKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/complexscaledkernel--7521d92d75fec1744b065ae3.md) | 103 | `declaration-track:7521d92d75fec1744b065ae37dbc413cb94851fcd190469690daee0aa745f7a2` |
| 9 | `theorem` | [complexScaledKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/complexscaledkernel-integrable--d34524a2f71563cacea22d33.md) | 107 | `result-track:d34524a2f71563cacea22d33aee6004e1ecdeea7c84afe4219a39b925229f954` |
| 10 | `def` | [frequencyMultiplier](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/frequencymultiplier--066d67fb9d6d5e9b4b6b0d74.md) | 115 | `declaration-track:066d67fb9d6d5e9b4b6b0d743726e73ba389a1656f8024aae6077a96071dbc66` |
| 11 | `theorem` | [frequencyMultiplier_continuous](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/frequencymultiplier-continuous--0caa10068e7466be8e4b2464.md) | 120 | `result-track:0caa10068e7466be8e4b24646557fadaee823aab174067e71c20499e719ac716` |
| 12 | `theorem` | [frequencyMultiplier_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/frequencymultiplier-zero--63be5aa508cc234c08016f5f.md) | 127 | `result-track:63be5aa508cc234c08016f5f14f78de099917a2063659b15b95eed4c5a5b6f75` |
| 13 | `structure` | [LittlewoodPaleyFrequencyCertificate](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/littlewoodpaleyfrequencycertificate--c3ab60b1ca35b68c780ad1fa.md) | 140 | `declaration-track:c3ab60b1ca35b68c780ad1faf2e8b4dde3eca83ffca6d570dfa85ae954101bab` |
| 14 | `def` | [IsLittlewoodPaleyFamily](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/islittlewoodpaleyfamily--41f09230aa7be3696dacd499.md) | 156 | `declaration-track:41f09230aa7be3696dacd4998199056a1987795cb6a53c7973a21e0013146408` |
| 15 | `def` | [HasFrequencyPartition](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/hasfrequencypartition--3655cee75e8125c9d51c7c1f.md) | 162 | `declaration-track:3655cee75e8125c9d51c7c1ff476341564e046879a375f893c1828bcd4946902` |
| 16 | `def` | [bochnerProjection](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bochnerprojection--6a360bbff5e8d4204a904ba1.md) | 170 | `declaration-track:6a360bbff5e8d4204a904ba12d820ac4918cd997fc7e5e5ade116971cf10a241` |
| 17 | `def` | [ProjectionExists](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/projectionexists--ac98eb28aed112a89283ad26.md) | 179 | `declaration-track:ac98eb28aed112a89283ad265be0ea8ea293b4ac4c365d8d8f37f4df5c433a4b` |
| 18 | `theorem` | [bochnerProjection_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bochnerprojection-apply--46533b326e0c5b83d29eef15.md) | 186 | `result-track:46533b326e0c5b83d29eef1571ac289e39fb13875f7bf80aae4cdcec0571c1b8` |
| 19 | `theorem` | [bochnerProjection_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bochnerprojection-zero--215e735bf5abf48c2dee1622.md) | 194 | `result-track:215e735bf5abf48c2dee1622bf8e1fe5810d1729d6014756a3faa3b23175e5e5` |
| 20 | `theorem` | [bochnerProjection_smul](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bochnerprojection-smul--d9d885704024389b5bbde25f.md) | 201 | `result-track:d9d885704024389b5bbde25f23314f1ad5155ac7942131d70bbbd6027b011d37` |
| 21 | `theorem` | [bochnerProjection_add](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bochnerprojection-add--b4ae9b0a0a4c4888435d6f9d.md) | 208 | `result-track:b4ae9b0a0a4c4888435d6f9d107d669e55381c425de257c9cb5d26465eed6170` |
| 22 | `def` | [finiteSquareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy--c78f7321726e5f59abaa30a7.md) | 220 | `declaration-track:c78f7321726e5f59abaa30a786e3b9e6c1fd27d846b897c6135ea7f8c8d8c35f` |
| 23 | `def` | [finiteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction--2d7ff8e793b78a4ee238c25a.md) | 229 | `declaration-track:2d7ff8e793b78a4ee238c25a94bd0a7adbbfa65b2c8b128432d4555870a2be64` |
| 24 | `theorem` | [finiteSquareEnergy_nonneg](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-nonneg--27fb049e68121ee86cf5a5ad.md) | 236 | `result-track:27fb049e68121ee86cf5a5ad21bbeadc55c210891e479990f043e6b4d91ae772` |
| 25 | `theorem` | [finiteSquareFunction_sq](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction-sq--1e64dd79aa9f651cc23fc0f9.md) | 244 | `result-track:1e64dd79aa9f651cc23fc0f930549fa838d2c70b6a23a74592a6d27233233435` |
| 26 | `theorem` | [finiteSquareFunction_nonneg](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction-nonneg--70dd9a3e19bf70e08e55e7ab.md) | 253 | `result-track:70dd9a3e19bf70e08e55e7abf2902b200c9becd01040a42560223d87a2930391` |
| 27 | `theorem` | [finiteSquareEnergy_empty](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-empty--0e2d8240dbcc4f8215d9d94f.md) | 261 | `result-track:0e2d8240dbcc4f8215d9d94f5b0a990e23b8523dc699ecc018c56846a466e3f0` |
| 28 | `theorem` | [finiteSquareFunction_empty](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction-empty--6a6fe5230485ec6296fa09e8.md) | 268 | `result-track:6a6fe5230485ec6296fa09e87e5f8adfe40f8c0f6d1362c97f93b78f4e860b22` |
| 29 | `theorem` | [finiteSquareEnergy_insert](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-insert--ab48114aa1e5e5f8cd9a2e65.md) | 275 | `result-track:ab48114aa1e5e5f8cd9a2e6505d9801e983a66c1f65f62616c4007e3813b5823` |
| 30 | `theorem` | [finiteSquareEnergy_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-zero--ac4298f01c6ed20c65ff005e.md) | 285 | `result-track:ac4298f01c6ed20c65ff005eb1f8ecaee1b9a926cf29d40b7c16edc992db4913` |
| 31 | `theorem` | [finiteSquareFunction_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction-zero--d8e87cd71c5116e73e4fd943.md) | 292 | `result-track:d8e87cd71c5116e73e4fd94352de975304227c2454bd7663e0e1da4e63c82755` |
| 32 | `theorem` | [finiteSquareEnergy_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-aestronglymeasurable--0834e5161b0d086f13f9b8e7.md) | 302 | `result-track:0834e5161b0d086f13f9b8e788ac9ce2215fb908f8714f63d00c490eb021401b` |
| 33 | `theorem` | [finiteSquareFunction_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquarefunction-aestronglymeasurable--5c66bc90347f28c128abde6f.md) | 314 | `result-track:5c66bc90347f28c128abde6fcb38e555fdf2f41d6aac5e5e001223a4f74d2085` |
| 34 | `theorem` | [finiteSquareEnergy_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/finitesquareenergy-integrable--e3e009b14e5c13a98c392f79.md) | 326 | `result-track:e3e009b14e5c13a98c392f7989443cadac227096816a369e1bf6705fc65f1454` |
| 35 | `def` | [bridgeProjection](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bridgeprojection--bf88250ce039e06d707337b5.md) | 344 | `declaration-track:bf88250ce039e06d707337b5014286de3541a9617d370815446f98f448403089` |
| 36 | `theorem` | [bridgeProjection_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bridgeprojection-apply--7fa5879e0e79fea092e4d302.md) | 352 | `result-track:7fa5879e0e79fea092e4d30290ae5299f8e0558ce21c7c89a4ca8320d2ba3bd4` |
| 37 | `def` | [bridgeFiniteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bridgefinitesquarefunction--8fa6f29086e5c68af456a52d.md) | 363 | `declaration-track:8fa6f29086e5c68af456a52d1d0a5d7ecdd1323c066fe7b79ad041ad822f9b48` |
| 38 | `theorem` | [bridgeFiniteSquareFunction_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/bridgefinitesquarefunction-apply--44bbb14016ad899dc1a4af0d.md) | 371 | `result-track:44bbb14016ad899dc1a4af0d709bd519bcba157b736451933020cb7b1b0362b0` |
| 39 | `def` | [IsInfiniteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/isinfinitesquarefunction--4537d9ff3709f66bd1dd840f.md) | 388 | `declaration-track:4537d9ff3709f66bd1dd840f294172a35d35cfd7b742d2de028a39c11857344e` |
| 40 | `def` | [HasLittlewoodPaleyLpEquivalence](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/haslittlewoodpaleylpequivalence--90d8407d1cccdcd4dbe0d470.md) | 399 | `declaration-track:90d8407d1cccdcd4dbe0d4706c4111d8b1ab1c15b110bfb3ae54de4eb9292057` |
| 41 | `def` | [HasLittlewoodPaleyEquivalence](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/haslittlewoodpaleyequivalence--1e61e2ec31da6263eb4c7be6.md) | 414 | `declaration-track:1e61e2ec31da6263eb4c7be6af2c7be480ba11fc177c30dad133112a7159d76e` |
| 42 | `def` | [HasMaximalEstimate](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/hasmaximalestimate--eb6b74ae3440982fc2c7b172.md) | 422 | `declaration-track:eb6b74ae3440982fc2c7b172ccfa2df5533b35fb890d17c38a85d9ae24ac09da` |
| 43 | `def` | [HasArithmeticDyadicBridge](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variant2962c31755168c7bf5628f332422e6c3166cac71b15eacb629e54a6b94973f3b.lean/declarations/hasarithmeticdyadicbridge--ae1fd5948fd7c03333591427.md) | 436 | `declaration-track:ae1fd5948fd7c033335914271d7653e679d782fb0bb05c496aeb90be0f736b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
