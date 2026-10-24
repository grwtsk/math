# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FirstReturn.Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17db2565bdef52ae10964e870a60c8aedb5c7473",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17db2565bdef52ae10964e870a60c8aedb5c7473`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReturnAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/returnat--ce1c44f9572dffc1c7587d9a.md) | 39 | `declaration-track:ce1c44f9572dffc1c7587d9af4dcdd8cebece753287b200ae35a0569a4044335` |
| 2 | `abbrev` | [ValidState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/validstate--e16a1ba125b796d421b9a1ce.md) | 47 | `declaration-track:e16a1ba125b796d421b9a1ced977dfdabf99222e4f06e5914646a9e0e34476fc` |
| 3 | `theorem` | [exists_return](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/exists-return--e0c32c9f87c48ee539989316.md) | 51 | `result-track:e0c32c9f87c48ee539989316270ffc3fcbcc18d120adc59668cf03f64d813576` |
| 4 | `def` | [firstReturnTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime--e1f1c4a484a19440b72288f2.md) | 70 | `declaration-track:e1f1c4a484a19440b72288f201fb07fa62b5d7639a4ad0cdde9e532285120b8c` |
| 5 | `theorem` | [firstReturnTime_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-pos--4574d9dca39efa058a540154.md) | 78 | `result-track:4574d9dca39efa058a54015458d8433f997cd22c3bf19b1dd2cde9d1f1a221e1` |
| 6 | `theorem` | [firstReturnTime_returns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-returns--4fbddfda9e2a3b5343b01cdd.md) | 87 | `result-track:4fbddfda9e2a3b5343b01cddaa042c311f9fc025e6d4d841cdaa9ca0ebda389a` |
| 7 | `theorem` | [firstReturnTime_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-minimal--3611684d734d035f4dd665fd.md) | 96 | `result-track:3611684d734d035f4dd665fd68084fd4d10650000bdd8a748919a7686a9d2aee` |
| 8 | `theorem` | [firstReturnTime_le_of_return](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-le-of-return--79299e34b9ee749317e8a37e.md) | 109 | `result-track:79299e34b9ee749317e8a37e477caf930e2160de29331adab78d1425e9508383` |
| 9 | `theorem` | [firstReturnTime_le_minimalPeriod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-le-minimalperiod--03b2795981710573558fbc62.md) | 120 | `result-track:03b2795981710573558fbc6234f707373719059ef810b3f3fdeee464728e97ed` |
| 10 | `theorem` | [firstReturnTime_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-le-card--3fcf60cfdd6df10b7219bda6.md) | 137 | `result-track:3fcf60cfdd6df10b7219bda6d033fccff29c2b33a448be8f0a3c4d50b7f0e38c` |
| 11 | `def` | [firstReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturn--4f7b368e9a8b509b5950d2b4.md) | 146 | `declaration-track:4f7b368e9a8b509b5950d2b48549070aac9fc1a198fbaa4129f7cc90283d07db` |
| 12 | `theorem` | [firstReturn_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturn-val--cb869d15b848096e402a69ee.md) | 155 | `result-track:cb869d15b848096e402a69ee10b65b5981f97b1a25ddbd6738a16f496126e0e9` |
| 13 | `def` | [previousReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/previousreturn--685ccdaaf46401c3b1343a8b.md) | 164 | `declaration-track:685ccdaaf46401c3b1343a8bf40b7080258b1fd00d5a8672ad735e27d27d8a78` |
| 14 | `theorem` | [symm_pow_apply_pow_apply_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/symm-pow-apply-pow-apply-of-le--463d0bfa80936afb8c0d54ac.md) | 170 | `result-track:463d0bfa80936afb8c0d54acd5c4d3a3ba63daa0733e35c9e978a03a1141fd57` |
| 15 | `theorem` | [symm_pow_apply_pow_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/symm-pow-apply-pow-apply--c46754b81d4ae2dc6996fb0d.md) | 182 | `result-track:c46754b81d4ae2dc6996fb0d5c984cc2ce52b3ff294be0594a59863d594579e4` |
| 16 | `theorem` | [previousReturn_firstReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/previousreturn-firstreturn--61b7a4a65a8a0fffd17e1616.md) | 192 | `result-track:61b7a4a65a8a0fffd17e1616e32efb8dd7a47bd32dec5947fcc529dfd593406e` |
| 17 | `theorem` | [firstReturn_previousReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturn-previousreturn--27ab0043b4217b47a032931c.md) | 223 | `result-track:27ab0043b4217b47a032931c147fed4aecfa0d2a72535ccc4f3bb980e272ea02` |
| 18 | `def` | [firstReturnPerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnperm--5ade29d5a36f283a87c7712b.md) | 232 | `declaration-track:5ade29d5a36f283a87c7712b8a8a2d5ac802485b45925e38e7a88c2f9324b783` |
| 19 | `theorem` | [firstReturnPerm_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnperm-apply-val--c01a5ffa0adcadc8f095f4dc.md) | 242 | `result-track:c01a5ffa0adcadc8f095f4dc05f6eded0971b74dbcb48c5994e9ae792e856f88` |
| 20 | `theorem` | [firstReturnPerm_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnperm-bijective--6a25877d410926875b311f11.md) | 251 | `result-track:6a25877d410926875b311f1196fe80e26507a5aeff975f7f220741a2cfdfca84` |
| 21 | `theorem` | [firstReturnPerm_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnperm-symm--4c5300cd4717aea3b9b5a478.md) | 258 | `result-track:4c5300cd4717aea3b9b5a4780313674337145970352aed51490a4fd4a8a262aa` |
| 22 | `def` | [invariantRestriction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/invariantrestriction--01bb2eefdedaa6962f037042.md) | 268 | `declaration-track:01bb2eefdedaa6962f0370424a899a11994be96a8d39533ae1398985f972e2a2` |
| 23 | `theorem` | [firstReturnTime_eq_one_of_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-eq-one-of-invariant--89de957c18edfc947109d684.md) | 281 | `result-track:89de957c18edfc947109d6848f150883ab26a4026d34d230edc6d9c9812529e1` |
| 24 | `theorem` | [firstReturnPerm_eq_restriction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnperm-eq-restriction--fbfbd4bc947728730273d73d.md) | 295 | `result-track:fbfbd4bc947728730273d73d56257526020f065bb3d14ac7a831911ee325a2ab` |
| 25 | `instance` | [returnAtDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/returnatdecidable--50dc4f580fd7996031fd856d.md) | 308 | `declaration-track:50dc4f580fd7996031fd856db7e186e06b315a6b8d6863df07eeb20997e91805` |
| 26 | `def` | [returnTimesWithin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/returntimeswithin--490af0a3208fe7da74bc4e27.md) | 318 | `declaration-track:490af0a3208fe7da74bc4e27646576d9ca6b32ecacc2e284257e95b347c8c5e2` |
| 27 | `def` | [firstReturnSearch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnsearch--0b3c87f22a526ee92b3f427e.md) | 327 | `declaration-track:0b3c87f22a526ee92b3f427e3aa0666ec3a69ed103eac65b8876ff773bd213e4` |
| 28 | `theorem` | [firstReturnTime_mem_returnTimesWithin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturntime-mem-returntimeswithin--d37f5c9868086cb7add00ed8.md) | 337 | `result-track:d37f5c9868086cb7add00ed8eda4f302d40a2d27389d5ee0f10736f36d08b828` |
| 29 | `theorem` | [returnTimesWithin_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/returntimeswithin-nonempty--7ea04fcf4487fb8c7ac5af10.md) | 348 | `result-track:7ea04fcf4487fb8c7ac5af105c7ef930f1d2ea58b21a4dc056018880c68a1c93` |
| 30 | `theorem` | [min_returnTimesWithin_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/min-returntimeswithin-eq--39d3b1d017ace8b6c6d2f41c.md) | 357 | `result-track:39d3b1d017ace8b6c6d2f41cbb844e57c232195cc9c4ca9d16eeffb355366665` |
| 31 | `theorem` | [firstReturnSearch_ne_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnsearch-ne-none--6fe992755e5c72e729c9bfe1.md) | 371 | `result-track:6fe992755e5c72e729c9bfe1aacbeced826346eb6e4846f662a15eccf4e1f274` |
| 32 | `theorem` | [firstReturnSearch_eq_firstReturnTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnsearch-eq-firstreturntime--d2fbfb0e15cce116eeb10dfd.md) | 380 | `result-track:d2fbfb0e15cce116eeb10dfde915e1397fc56c3828f787d0e0c4bc38fa9940c7` |
| 33 | `def` | [firstReturnExec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnexec--4a609a64b320e9b69ba76cda.md) | 392 | `declaration-track:4a609a64b320e9b69ba76cdaed63377960fe9e60e988a99158d581b01708fdd2` |
| 34 | `theorem` | [firstReturnExec_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/declarations/firstreturnexec-refines--91e8f89f5b224a4006655aca.md) | 405 | `result-track:91e8f89f5b224a4006655aca0ad6d505e422076e44255ecda99eec791e0cfd11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
