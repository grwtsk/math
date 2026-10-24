# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MinMax.Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f9efda882775c0e9db6b9a34307ad3a7d4d66fd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f9efda882775c0e9db6b9a34307ad3a7d4d66fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/instance--fb6c1398d32eb7730843c0c2.md) | 41 | `declaration-track:fb6c1398d32eb7730843c0c2728fd971d2350d6563cf0d4dd4df8b1fc8f5383b` |
| 2 | `theorem` | [max_le_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-le-max--d5b4157def88c435b019a03e.md) | 46 | `result-track:d5b4157def88c435b019a03e83eddea663bf384f41afbf99b186a7a829e2a549` |
| 3 | `theorem` | [max_le_max_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-le-max-left--bfaa3cb0ba8702011ee5297a.md) | 50 | `result-track:bfaa3cb0ba8702011ee5297a1814546aff684214b45505233d8e8b0c795cbc6d` |
| 4 | `theorem` | [max_le_max_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-le-max-right--ba4c596b2a5d80e4e0c5de3a.md) | 53 | `result-track:ba4c596b2a5d80e4e0c5de3a2754ff5181077313212ff25a5a7caca0c04a99e8` |
| 5 | `theorem` | [le_max_of_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/le-max-of-le-left--188818dbd446ae75a3630416.md) | 56 | `result-track:188818dbd446ae75a3630416349cadff57f49a97e67aa4993cfa6c085a67258d` |
| 6 | `theorem` | [le_max_of_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/le-max-of-le-right--b933a77c88c856b72cea6ba5.md) | 60 | `result-track:b933a77c88c856b72cea6ba5a562bae64d54ef37a33dfdac4e2e4b811bababb1` |
| 7 | `theorem` | [lt_max_of_lt_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/lt-max-of-lt-left--382c3277819a7f17543e46af.md) | 64 | `result-track:382c3277819a7f17543e46af3acadad2bec26a8cdde5525941427189fda8ed62` |
| 8 | `theorem` | [lt_max_of_lt_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/lt-max-of-lt-right--cc6a7735ca0d98ff98708eae.md) | 68 | `result-track:cc6a7735ca0d98ff98708eaee20a9b612a6c7b0e09abe422b08c77c2862f6d3e` |
| 9 | `lemma` | [max_min_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-min-distrib-left--27535c7536895c59524f062f.md) | 72 | `result-track:27535c7536895c59524f062fcbdfedd509419ba8c383bf6f5d768be7ade5b578` |
| 10 | `lemma` | [max_min_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-min-distrib-right--ffbe7bab0536b5924b136168.md) | 76 | `result-track:ffbe7bab0536b5924b136168074f2e6116ec6400f413d7b27ab193e3e634c4ce` |
| 11 | `theorem` | [min_le_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-le-max--fd9f8bdc2a62f1463dde4913.md) | 79 | `result-track:fd9f8bdc2a62f1463dde49134feec8a21e0873ba51dffeb11f6fce15680661bb` |
| 12 | `theorem` | [min_eq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-eq-left-iff--74676f3a77c1b8813f810e3e.md) | 83 | `result-track:74676f3a77c1b8813f810e3ef81bd861dbb67a3f164385a17e8071d0a13485b7` |
| 13 | `theorem` | [min_eq_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-eq-right-iff--eecb38a97cfc75f988819e28.md) | 87 | `result-track:eecb38a97cfc75f988819e28f8035fbbd9e3e2d10a821dfee59dc35f072a268e` |
| 14 | `theorem` | [min_cases](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-cases--e3463fb6214a590b56303c89.md) | 97 | `result-track:e3463fb6214a590b56303c89cabd11e866adec7675dcc2a06e1d1a8672016a13` |
| 15 | `theorem` | [min_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-eq-iff--7c8ba82911521385f5b5739a.md) | 101 | `result-track:7c8ba82911521385f5b5739a7f924b5a51bed390da6a53e1f58920ef341ffd6f` |
| 16 | `theorem` | [min_lt_min_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-lt-min-left-iff--a2e2906f17515a231b84e10d.md) | 105 | `result-track:a2e2906f17515a231b84e10d48a8d08575d19da9386781287bc94997f04f06d0` |
| 17 | `theorem` | [min_lt_min_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-lt-min-right-iff--c97c55f115b0a68e036e4521.md) | 109 | `result-track:c97c55f115b0a68e036e4521b52e47de68f9d97c1d7e58092ce6d812b40f2cd7` |
| 18 | `instance` | [max_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-idem--6b03f6e779ba9a567b589a9c.md) | 114 | `declaration-track:6b03f6e779ba9a567b589a9c6646e7407af656aacb8f6d5f457d2c30bbfe9d45` |
| 19 | `theorem` | [min_lt_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-lt-max--45dc995bba9eba725c308ffc.md) | 117 | `result-track:45dc995bba9eba725c308ffc489b00b302ed664cd8f1c0cc9f9d6c2550ec3c21` |
| 20 | `theorem` | [max_lt_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-lt-max--57951422f91676ee74ecca71.md) | 121 | `result-track:57951422f91676ee74ecca716e2e446d1cff48d64d01fd52aa25fc2af996a90a` |
| 21 | `lemma` | [min_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-right-comm--0c975a010398e5f9aaf491e6.md) | 125 | `result-track:0c975a010398e5f9aaf491e6a550a5d0cfdd1c4260869e305ea77fbf6f348c77` |
| 22 | `theorem` | [MonotoneOn.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/monotoneon-map-max--ae21d80d111e6199e733f94a.md) | 132 | `result-track:ae21d80d111e6199e733f94a266307a869131d1c1cf6bd203b325cd9d944aa0e` |
| 23 | `theorem` | [AntitoneOn.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/antitoneon-map-max--044c52548de581dd683a78dd.md) | 138 | `result-track:044c52548de581dd683a78ddda683e7acbc6eec94caf401e1463d10086bedc50` |
| 24 | `theorem` | [Monotone.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/monotone-map-max--7c5a64eeb87079c76f036eb9.md) | 142 | `result-track:7c5a64eeb87079c76f036eb937b7db1ce3d4264428b43fd024db08e378c898fa` |
| 25 | `theorem` | [Antitone.map_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/antitone-map-max--24ab09f622149a99a22b0fd0.md) | 146 | `result-track:24ab09f622149a99a22b0fd07241f40dfd80f1ad0b0cdd38c9202d535dcbf093` |
| 26 | `theorem` | [min_choice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/min-choice--50bb37b289b453e48ed6671f.md) | 150 | `result-track:50bb37b289b453e48ed6671f53e1eca08dc5c59eb3e1c7c7f0d4bb8ff69e1731` |
| 27 | `theorem` | [le_of_max_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/le-of-max-le-left--824ed1291799f17d2408ae48.md) | 153 | `result-track:824ed1291799f17d2408ae487eaf86daca88fcfe2d4786970da2551b455b8476` |
| 28 | `theorem` | [le_of_max_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/le-of-max-le-right--478192d4d3154fa025bc883a.md) | 157 | `result-track:478192d4d3154fa025bc883a48c245aaa5ac357cee1ed8bca7c2ffa1e13c0dd5` |
| 29 | `instance` | [instCommutativeMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/instcommutativemax--2da986454e2f8f1cf17cc5f9.md) | 160 | `declaration-track:2da986454e2f8f1cf17cc5f9a58fbecb041f75a3d201b3649c5ec5e6e940b3a1` |
| 30 | `instance` | [instAssociativeMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/instassociativemax--d41746479e65e44c1c2fca1f.md) | 161 | `declaration-track:d41746479e65e44c1c2fca1ff3f755b198a62258ba27e693a7e416417fe4a6dc` |
| 31 | `theorem` | [max_left_commutative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variantdd0e1cad15eafb7c463b061538fb49629fcb975aebff3679f10e5b22a4b6cb68.lean/declarations/max-left-commutative--1ccfd91cecb4d312c9eb165e.md) | 164 | `result-track:1ccfd91cecb4d312c9eb165eaf197e74fbae1eb7a5840d237c2f065ee68b3341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
