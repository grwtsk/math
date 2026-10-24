# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsum.Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67d3417faa4518d8fecf312a044721577f47b3ed",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67d3417faa4518d8fecf312a044721577f47b3ed`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/ishigherprimepower--36551f257ad3442eee9aea45.md) | 17 | `declaration-track:36551f257ad3442eee9aea4584fe262f05b84b36a7b1c57fb32eb7cdcabe9e46` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherprimepowerindices--acc4546eb0b93480a560c425.md) | 20 | `declaration-track:acc4546eb0b93480a560c425bca3b13167569a3e090bd5ac2cd470df82ed84d6` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherprimepowercontribution--b797188398d9b0a1bdc8440a.md) | 25 | `declaration-track:b797188398d9b0a1bdc8440ae7abdbb9cff8eb47fe56e6dcab861e76bcb204a9` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/prime-power-representation-unique--4db30855968571b074b294e3.md) | 31 | `result-track:4db30855968571b074b294e3c3e0d1b91ddac05143b8a83c5cdca62ccb68ba69` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/primesquare-not-higher--021370d5da0ededfd58aa162.md) | 37 | `result-track:021370d5da0ededfd58aa1622f9b762b06ffa6c772cee8b1abbf685a8cd031e2` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/primesquare-not-prime--2cfa014c3ebbe9f746e3eb78.md) | 45 | `result-track:2cfa014c3ebbe9f746e3eb783988abe3ba31bbce042a6a537c527de4e2490ef3` |
| 7 | `theorem` | [higher_not_prime](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higher-not-prime--988df3899a8918940128a9ee.md) | 50 | `result-track:988df3899a8918940128a9ee01c000f1dee6d10e0afddd1352e1508c81cb4342` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/nonprime-primepower-iff--e85a213dd968755ec69c69df.md) | 55 | `result-track:e85a213dd968755ec69c69dfce1e8133fefb5cb225c12de936533901c693e8dd` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/nonprime-weight-zero-of-outside--2fb9209030bdeb323bdf7d3b.md) | 75 | `result-track:2fb9209030bdeb323bdf7d3b26c26f6c578dc43f1f16a1c8ef63657c8cc9372d` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/primesquare-higher-indices-disjoint--118cda1c32fe4bc0a589dfd0.md) | 83 | `result-track:118cda1c32fe4bc0a589dfd0726ee7d3f436eb2a40fb777cfbb99946bcd240e8` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/properprimepowercontribution-eq-square-add-higher--2b4f68625aa111e7e52e5f80.md) | 91 | `result-track:2b4f68625aa111e7e52e5f804d7ca88579ea1150bbbc35886be365bb66dec10e` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/primepowercontribution-eq-prime-square-higher--3221abf0ece2283b396c006b.md) | 112 | `result-track:3221abf0ece2283b396c006be6910e21e447ec37f977c6dbf5d92fb96eec69ca` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/eight-higher-not-square--f52dab3908ca748a327a6cf0.md) | 120 | `result-track:f52dab3908ca748a327a6cf0a2cdbcd036ed1b60f1584b2809f51edb72087793` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/eight-mem-higherprimepowerindices-iff--57c0709ec9518edb81c1c6af.md) | 125 | `result-track:57c0709ec9518edb81c1c6afde8d993d74baebf2dfc1ddeda225e0c6d5663dbd` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/sqrt-nat-power--cf37465c363a5e24582cdd27.md) | 144 | `result-track:cf37465c363a5e24582cdd2735be9fd325029277cfec9d668d6eb44306dfe0af` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higher-prime-power-weight--7906bda1f70d1e47f322274e.md) | 151 | `result-track:7906bda1f70d1e47f322274e2b91f5cb0c9345e5532e36ce4d3ffe86d23ac0a2` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higher-prime-power-summand--3c711cba6ca29d3c6eeae537.md) | 158 | `result-track:3c711cba6ca29d3c6eeae53787556372940ec0851b0f55d2132f556641394196` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherpowerindex--44c8e435ceb7e3e3ef2d34d5.md) | 178 | `declaration-track:44c8e435ceb7e3e3ef2d34d555e22cbf8a3d97b42da27b3802fc76a9cb4ec505` |
| 19 | `def` | [powerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/powerindex--2f87cadd96a33c7a4a5ad898.md) | 181 | `declaration-track:2f87cadd96a33c7a4a5ad898cb18957ca99423834647215ff460eeb92058017c` |
| 20 | `theorem` | [powerIndex_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/powerindex-injective--191a29051442b1ef37a22f6a.md) | 184 | `result-track:191a29051442b1ef37a22f6a563627e82a341198a57fbac41d3d8aa262f171bb` |
| 21 | `def` | [higherPairIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherpairindices--53092e17b7cca4259c110d5a.md) | 194 | `declaration-track:53092e17b7cca4259c110d5a540cd6deb155d7be7ca48d2cfe3b222059316a8c` |
| 22 | `def` | [higherSourceTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/highersourceterm--e9c705962dca45d5c1ba1bf3.md) | 198 | `declaration-track:e9c705962dca45d5c1ba1bf3b0eb271192fe67699b17472aaea03bed592b60b8` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/powerindex-ishigher--c7888fd8c802aece9b5043d2.md) | 203 | `result-track:c7888fd8c802aece9b5043d24ed4a20b428ef83666b830e5fe1e3410c951e555` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/powerindex-two-le--b85c3d6aa935c57c39290f80.md) | 207 | `result-track:b85c3d6aa935c57c39290f80cec01dc24bb5ce0155d674986d34f42457b6d30b` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/mem-higherpairindices-iff--4967894fa150c28b692b1812.md) | 211 | `result-track:4967894fa150c28b692b1812248ff9eb507558faef9da35c2ee91861ed4a334b` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherpairindices-image--25b2fbcdcd872f7dbced690c.md) | 218 | `result-track:25b2fbcdcd872f7dbced690cec659506717835b830aaa81ee993f5492feedaf2` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherprimepowercontribution-eq-finite-sum--800b64283c9e98d1742955e6.md) | 233 | `result-track:800b64283c9e98d1742955e6e245b2388db989c8ba4c62e7277bb82c176beb05` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/highersourceterm-zero-outside--08b988fee8d85853696eb10c.md) | 243 | `result-track:08b988fee8d85853696eb10cf0d559a9687f916978acfda58f529c897ae6cd82` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/highersourceterm-finite-support--be7ec590cff02101fd7fa06a.md) | 258 | `result-track:be7ec590cff02101fd7fa06aa711aa798df9d06deaa8031469fa18b817fb5bec` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/highersourceterm-summable--839460b19ea564331028f03a.md) | 264 | `result-track:839460b19ea564331028f03a897658d9d3cf8f3c457aad1b1f84e5b2147023fe` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/highersourceterm-norm-summable--ee9956918c4fc1ab7f375e53.md) | 269 | `result-track:ee9956918c4fc1ab7f375e539b2dc275dd3c095aef69657ceaef4c39cdfdc38f` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/declarations/higherprimepowercontribution-eq-tsum--b9a7f412c45f24d8c6f8de50.md) | 276 | `result-track:b9a7f412c45f24d8c6f8de504505d638d0e1857459bdbf1441f789f75bdfc3bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
