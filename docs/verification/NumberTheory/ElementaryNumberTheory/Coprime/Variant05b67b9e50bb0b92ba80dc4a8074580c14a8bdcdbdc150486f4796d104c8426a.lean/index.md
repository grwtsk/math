# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Coprime.Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8eac03865690984f848f912d5fb3812dad719e6",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8eac03865690984f848f912d5fb3812dad719e6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Dvd` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime--27e28cb8e9e24de5da6f3fe8.md) | 25 | `declaration-track:27e28cb8e9e24de5da6f3fe85d946fa2ac631ca272c757e8b1dfbe99713cd08e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/instance--eca9953b03162a9c4c19be1d.md) | 28 | `declaration-track:eca9953b03162a9c4c19be1d795e00d82411208291bd2becef35049d289edca0` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-iff-gcd-eq-one--cce854bc5e9bf95b1d4a1980.md) | 30 | `result-track:cce854bc5e9bf95b1d4a1980fbe9ca5e003bf94cef00987603f53b7f061226bb` |
| 4 | `theorem` | [Coprime.gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-eq-one--cb0242ebee16bc375d9e5879.md) | 32 | `result-track:cb0242ebee16bc375d9e587919d0d767775f297186fca3c11836f37ac1b6b52d` |
| 5 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-symm--99b4750d877f69b793cdb329.md) | 34 | `result-track:99b4750d877f69b793cdb329f9ef8e3b495cb63500434cb2a5f87d2f8ba3ad50` |
| 6 | `theorem` | [coprime_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-comm--cfe5b7c852b4ce7a252952aa.md) | 36 | `result-track:cfe5b7c852b4ce7a252952aa34835839227c8398e46ab4a3c52656f0a54bc2b0` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-dvd-of-dvd-mul-right--70bfe92623c1c5b2b287dd71.md) | 38 | `result-track:70bfe92623c1c5b2b287dd7142755c69e6dd7101a370204dba47e6e4fc8e0a22` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-dvd-of-dvd-mul-left--7b45572ad7f27cd45ed78f8c.md) | 42 | `result-track:7b45572ad7f27cd45ed78f8cc6184d5e0ce5d8da196bfb570a00f8026adcfc36` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-mul-left-cancel--fef40f9218e544b55ff2c32a.md) | 45 | `result-track:fef40f9218e544b55ff2c32a7aafe05b8220f78a36f4cde55447af1aa46c8099` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-mul-right-cancel--af3f7827036730be6d1b05b4.md) | 52 | `result-track:af3f7827036730be6d1b05b4b29e1fb35165c0ef2547f1276142c4b9c8530213` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-mul-left-cancel-right--3fb7674fe91f435fa0ca8d00.md) | 55 | `result-track:3fb7674fe91f435fa0ca8d00dafcc772460de030b1ab430f68d2d559c0e083eb` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-mul-right-cancel-right--d3cf924bd12551ddfcfc7663.md) | 59 | `result-track:d3cf924bd12551ddfcfc766370f1574b7d269320f438183e898da15230d4144f` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-div-gcd-div-gcd--b08d4cd1b6d9e1e6cfa34b4a.md) | 63 | `result-track:b08d4cd1b6d9e1e6cfa34b4a32df711365fc2f4717243b297505341bc54eb072` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/not-coprime-of-dvd-of-dvd--ccc0cacb00e30ae42aabb113.md) | 67 | `result-track:ccc0cacb00e30ae42aabb113571065a88948844b941989dc822ad51bd262dc55` |
| 15 | `theorem` | [exists_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/exists-coprime--cfa79b59cb7ed513832cfcbd.md) | 71 | `result-track:cfa79b59cb7ed513832cfcbddf9a708fce0dd3de95ba76c8415c995bd989c90e` |
| 16 | `theorem` | [exists_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/exists-coprime--98aed900243d3807c982d411.md) | 83 | `result-track:98aed900243d3807c982d411ed89412c6963dc96a2515273e49cdf66bdd78bf4` |
| 17 | `theorem` | [Coprime.mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-left--315fbf513e44cc2bb720e35b.md) | 87 | `result-track:315fbf513e44cc2bb720e35b3c9dc8e9d385717d4cdbdc2c996ccc20cb435176` |
| 18 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-right--d60445da92b9b8ee89c5424a.md) | 90 | `result-track:d60445da92b9b8ee89c5424ac071510432a1b21b0942fe59417544ae17e736e8` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-dvd-left--14b03e3cd23787a5044c1a83.md) | 93 | `result-track:14b03e3cd23787a5044c1a83c1a6654e9c3befc33cc9efb9091f9e655a376d17` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-dvd-right--c026223b2f1bee7bd06fc752.md) | 99 | `result-track:c026223b2f1bee7bd06fc752a86adbfe2f4603a9dabfa9db0747007cc5ecc0f4` |
| 21 | `theorem` | [Coprime.coprime_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-mul-left--b150f9facf2396ca163f1505.md) | 102 | `result-track:b150f9facf2396ca163f1505199846fc9f9ec929489c1fe5a4b64d8867d27bc5` |
| 22 | `theorem` | [Coprime.coprime_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-mul-right--561709805044812c3ce54998.md) | 105 | `result-track:561709805044812c3ce549982a3c65a357dc69a28fdd04d76136d8a0c2980157` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-mul-left-right--6d0b6ebdac2627db99bacdad.md) | 108 | `result-track:6d0b6ebdac2627db99bacdaddb9d7c5e1d729bd3ad20dd0a14b4106bea8e6a43` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-mul-right-right--be3f7d280bca1b374d78d904.md) | 111 | `result-track:be3f7d280bca1b374d78d904297886d18cd1b7171f98faa8d367e4f594be8426` |
| 25 | `theorem` | [Coprime.coprime_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-div-left--40c15e2a484d0084417c0333.md) | 114 | `result-track:40c15e2a484d0084417c03337aea0e4a8d7373495c00f6652480b91a42ab2962` |
| 26 | `theorem` | [Coprime.coprime_div_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-coprime-div-right--62bef6ebb6a24d8bbb1d14df.md) | 126 | `result-track:62bef6ebb6a24d8bbb1d14df9d0300845bb70c9619b5825a2e38de18a25d9f80` |
| 27 | `theorem` | [coprime_mul_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-iff-left--9ac58d7e0df4a42b3e6d4560.md) | 129 | `result-track:9ac58d7e0df4a42b3e6d456052aa7681263fa4c83ef1e9811a514b48b476a920` |
| 28 | `theorem` | [coprime_mul_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-iff-right--bb08983d4ae7b338411dbb53.md) | 133 | `result-track:bb08983d4ae7b338411dbb536a5dce620624b0a51a9812cf73eca57361a1a68c` |
| 29 | `theorem` | [Coprime.gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-left--4f6ea9ab3c9d82b12f95b6a8.md) | 136 | `result-track:4f6ea9ab3c9d82b12f95b6a81c8eb9ab65f3d622703e9b4639ec68c3d984faed` |
| 30 | `theorem` | [Coprime.gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-right--e3e28877a427c1df7fe670d2.md) | 139 | `result-track:e3e28877a427c1df7fe670d26a58e16e651e3ca37bf9c285f72af341b607dea0` |
| 31 | `theorem` | [Coprime.gcd_both](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-both--bc8185543336dbb99c7365b0.md) | 142 | `result-track:bc8185543336dbb99c7365b0c98002a2c2ea8b6e850815d5957d009eaed8b131` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-dvd-of-dvd-of-dvd--7267af910eb285d499bc21de.md) | 145 | `result-track:7267af910eb285d499bc21de28678b36acbd81306f8386643d420f5139d2b832` |
| 33 | `theorem` | [coprime_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-zero-left--821f7232722faafd726902a1.md) | 149 | `result-track:821f7232722faafd726902a18268a7365719a3d6f65177cf9a6b3aa36269940a` |
| 34 | `theorem` | [coprime_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-zero-right--9f4fdf4839daf75db2c56e40.md) | 151 | `result-track:9f4fdf4839daf75db2c56e4063da3b1d3a7fb8663159f6ccd2330758359d6503` |
| 35 | `theorem` | [coprime_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-one-left--b42eefdfc74250510e84fa71.md) | 153 | `result-track:b42eefdfc74250510e84fa71c003ec3f109c3dfe3d227bc80cee3f1b431e41fe` |
| 36 | `theorem` | [coprime_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-one-right--26cc1e7556d594ca24dc9061.md) | 155 | `result-track:26cc1e7556d594ca24dc90610783a7413726abed4d83665e58768a58daba696c` |
| 37 | `theorem` | [coprime_one_left_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-one-left-eq-true--535ebf40195650c1a0add644.md) | 157 | `result-track:535ebf40195650c1a0add64453a33d02468a6e7aa55954c35597824859417e99` |
| 38 | `theorem` | [coprime_one_right_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-one-right-eq-true--c04f621cf2dd90353aa0b173.md) | 159 | `result-track:c04f621cf2dd90353aa0b173c758104b6e7c387af57979d067539a1ef7f69ad3` |
| 39 | `theorem` | [coprime_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-self--ee67ab7df0cd1becd593c6f6.md) | 161 | `result-track:ee67ab7df0cd1becd593c6f67cd3ef2351e4b6e21aeac7db67d453fd63b525d4` |
| 40 | `theorem` | [Coprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-pow-left--fb97fa1578081ebc99004f17.md) | 163 | `result-track:fb97fa1578081ebc99004f17690e9278bb564fa0172a61dd0afefbc166990b4c` |
| 41 | `theorem` | [Coprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-pow-right--ab0d4f88258c4f3022b4c12a.md) | 168 | `result-track:ab0d4f88258c4f3022b4c12ab8ffe33251ca69104b4375cd14fbf2218116e8f3` |
| 42 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-pow--f0bb3215d864bb90ad916fa7.md) | 171 | `result-track:f0bb3215d864bb90ad916fa71fdc387a1255f154665a261419b70ecfe5eecbd7` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-eq-one-of-dvd--bc74b513b283d228a9d14032.md) | 174 | `result-track:bc74b513b283d228a9d140322b0800c475b9362044eab02d4e56ba7220ca229c` |
| 44 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-gcd-mul--50ecb63bd316cf5b655b2029.md) | 177 | `result-track:50ecb63bd316cf5b655b2029fc48864259a011e5a052fe0f9376ceac36f6bd09` |
| 45 | `theorem` | [Coprime.mul_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/coprime-mul-gcd--de56e6268cd6bdf8b0f2370a.md) | 184 | `result-track:de56e6268cd6bdf8b0f2370a407a4854989fdd8509830401ad2cc576c017830d` |
| 46 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant05b67b9e50bb0b92ba80dc4a8074580c14a8bdcdbdc150486f4796d104c8426a.lean/declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--676dbd43059e7280e75e73c6.md) | 187 | `result-track:676dbd43059e7280e75e73c64dbceab60e0778fb68f4dc85e6179664f79771f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
