# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntervalRealEndpoints.Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8bfe74749149205173be5f0435832353e0c6d91",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8bfe74749149205173be5f0435832353e0c6d91`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/intervalreal--ebc032b6169309ca0cf76dda.md) | 55 | `declaration-track:ebc032b6169309ca0cf76dda2bf1d11fe45fc2161aa1f5914b5805e0b587b31d` |
| 2 | `def` | [toSet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/toset--02a98d5f51ea698d82a73039.md) | 63 | `declaration-track:02a98d5f51ea698d82a730396ad20493d7cd98ac8ae79b55f5f1d4006ad2c935` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/instance--a46175aa5e712b0d4fb04fd1.md) | 66 | `declaration-track:a46175aa5e712b0d4fb04fd1dfc07a32c591444846686cc53b7e8f01c3e566a8` |
| 4 | `theorem` | [mem_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-def--353f3ecd353d31a06cd5a62b.md) | 70 | `result-track:353f3ecd353d31a06cd5a62b5ee2821fa8673a33ccb19075d962e585dad50504` |
| 5 | `theorem` | [mem_toSet_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-toset-iff--76dedb3c818fadbf65f2842b.md) | 73 | `result-track:76dedb3c818fadbf65f2842bc297df1619ad740ab46a989b85a189343d0d1f3e` |
| 6 | `def` | [singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/singleton--07e213f90f2e3133d56853fd.md) | 77 | `declaration-track:07e213f90f2e3133d56853fd0af0cb48b95d8ccd33269eb73c759c48d660aef3` |
| 7 | `theorem` | [mem_singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-singleton--7d912acbdabd6d23414d7281.md) | 79 | `result-track:7d912acbdabd6d23414d728181f15f9bfd4fa16a23f878903ce29d818c15a432` |
| 8 | `def` | [ofRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/ofrat--ff83e299d9604e9a2c211bc1.md) | 82 | `declaration-track:ff83e299d9604e9a2c211bc1b6b47a48a767ef00c8d966fddd3b39cd04d766b9` |
| 9 | `theorem` | [mem_ofRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-ofrat--e2c3064205c4128089a8e52f.md) | 87 | `result-track:e2c3064205c4128089a8e52fec035e65b9c81e3248378bdd82d10a8c4b845124` |
| 10 | `def` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/add--c566ef1f228e5c9a6715b5dc.md) | 94 | `declaration-track:c566ef1f228e5c9a6715b5dc9458ecf498695c6a5c90c6345396f0f6483564ee` |
| 11 | `theorem` | [mem_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-add--cb69681c52cd6778cd75e6f5.md) | 100 | `result-track:cb69681c52cd6778cd75e6f5e513a26185a79d8d3023f5299e8c2445240e80db` |
| 12 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/neg--82201b2d07af07d00ad9314a.md) | 109 | `declaration-track:82201b2d07af07d00ad9314a847323da22b7401bf65160eb2fadbbf45eaa194b` |
| 13 | `theorem` | [mem_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-neg--2fdb0e35fba677a3aa59d400.md) | 115 | `result-track:2fdb0e35fba677a3aa59d4005a370f874fa52337572a951bc178012deeccded6` |
| 14 | `def` | [min4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/min4--fe8bce0088db8c840c5ec610.md) | 122 | `declaration-track:fe8bce0088db8c840c5ec61009b2f35841d88777137579988df4befc496702ae` |
| 15 | `def` | [max4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/max4--196542a0bf87d81d630726e9.md) | 123 | `declaration-track:196542a0bf87d81d630726e92d8d967e5b8980f7833953743f4b77749c0176aa` |
| 16 | `def` | [mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mul--132e55934c9a3f4a765ede0e.md) | 126 | `declaration-track:132e55934c9a3f4a765ede0e2457f242c64c9cb2bdcf2330c8585e08b6c4076e` |
| 17 | `def` | [expInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/expinterval--1877318f78d54fac221b475b.md) | 138 | `declaration-track:1877318f78d54fac221b475bf939fdb45325f57687a8e0aa99ef0fd583e2c2fa` |
| 18 | `theorem` | [mem_expInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-expinterval--05ca58141c9afe40b7ff2eaa.md) | 145 | `result-track:05ca58141c9afe40b7ff2eaac00359b989d252c05de6d3eec3e3f895bae20b5b` |
| 19 | `structure` | [IntervalRealPos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/intervalrealpos--ec6df62dd452725448ddcad0.md) | 156 | `declaration-track:ec6df62dd452725448ddcad0c94d8651909e375f22b56beee6db2a7da10e62ba` |
| 20 | `def` | [logInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/loginterval--6359e10256ca5f5a5dbe28c5.md) | 161 | `declaration-track:6359e10256ca5f5a5dbe28c58cf4703e2e6df4b82d66a7d2fdc1cc1c51080af8` |
| 21 | `theorem` | [mem_logInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-loginterval--ff1b4759c2548a7660f2397a.md) | 168 | `result-track:ff1b4759c2548a7660f2397acb9658dd13408d562fc755524f5846bcb60f96d1` |
| 22 | `def` | [sinInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/sininterval--6f54385727a983f139574087.md) | 180 | `declaration-track:6f54385727a983f139574087b1d451b1e296c0f816513884308254e1af5d7e18` |
| 23 | `theorem` | [mem_sinInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-sininterval--952426ba8b79babdf27d4028.md) | 184 | `result-track:952426ba8b79babdf27d4028f099ce8dc0ee2a672bfb1139bd91cc8487f079b0` |
| 24 | `def` | [cosInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/cosinterval--8ce84dbfbdf061536d6ef1bd.md) | 192 | `declaration-track:8ce84dbfbdf061536d6ef1bdd5a867a68f1d8e40b7eb725978a7f444bfbc4597` |
| 25 | `theorem` | [mem_cosInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-cosinterval--d7efc4d9f173a5dd8a935be8.md) | 196 | `result-track:d7efc4d9f173a5dd8a935be8e436217655c74e491951208cfbad944e7dde76cf` |
| 26 | `def` | [atanInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/ataninterval--813ba1176af3c79487e764bb.md) | 204 | `declaration-track:813ba1176af3c79487e764bbaacb393a311669cb972b19f69ea03e499a07f0e6` |
| 27 | `theorem` | [mem_atanInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-ataninterval--1c0d602397a0c8d3e4d67ef2.md) | 208 | `result-track:1c0d602397a0c8d3e4d67ef24a0a4eabf68ffd1204a4714309ac3dc39f88c8ad` |
| 28 | `theorem` | [arsinh_deriv_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/arsinh-deriv-abs-le-one--90cffc8e37dbaf271fc2ba9a.md) | 220 | `result-track:90cffc8e37dbaf271fc2ba9aed13329fc93b85612bfbc78df0545f4bf5782b00` |
| 29 | `theorem` | [abs_arsinh_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/abs-arsinh-le-abs--8ef51130d1701b880a35b2cb.md) | 235 | `result-track:8ef51130d1701b880a35b2cbf46d3242582b3b9a2a496e96f48cfea27290103d` |
| 30 | `def` | [arsinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/arsinhinterval--34f27b2781ffdd7139a5a356.md) | 283 | `declaration-track:34f27b2781ffdd7139a5a356dca3e6a33b0458cb2ab936d5de8a36d285f58efd` |
| 31 | `theorem` | [mem_arsinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-arsinhinterval--3843dd405e5d5772b0fff74c.md) | 293 | `result-track:3843dd405e5d5772b0fff74c0e495f22022d77578f34ad860118691992f6f1c8` |
| 32 | `def` | [sinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/sinhinterval--4d73bae8ce12d653787f8d6c.md) | 321 | `declaration-track:4d73bae8ce12d653787f8d6c91a04d74442329cb7122fb3424c6947527bc35d1` |
| 33 | `theorem` | [mem_sinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-sinhinterval--3884eeb7134ee4e0a2fb347c.md) | 328 | `result-track:3884eeb7134ee4e0a2fb347cdb5119812764c81a388b765d1fe777fb24aa67c8` |
| 34 | `def` | [coshInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/coshinterval--17b0942d9d09c28edaca1254.md) | 339 | `declaration-track:17b0942d9d09c28edaca1254c6633cce8774c0c7f506d9074e40611a763cf290` |
| 35 | `theorem` | [mem_coshInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-coshinterval--b2f9b7df2e0a6ea57845d438.md) | 363 | `result-track:b2f9b7df2e0a6ea57845d438803ea691ad8ecbea3037aa06bee2c9d208fb6ce6` |
| 36 | `def` | [sqrtInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/sqrtinterval--2b584d9df87335fe34097d6a.md) | 411 | `declaration-track:2b584d9df87335fe34097d6a63c074d6434b7f2e442f4651bf5b5ecba6b8836d` |
| 37 | `theorem` | [sqrt_le_max_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/sqrt-le-max-one--8b85f08da4980297e35837f7.md) | 417 | `result-track:8b85f08da4980297e35837f7d659cdfeef301c4a66e3363cba5e2db70d94f2cb` |
| 38 | `theorem` | [mem_sqrtInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/declarations/mem-sqrtinterval--17c9fb59ad66738aa566bdb4.md) | 440 | `result-track:17c9fb59ad66738aa566bdb41bec80859a0b2a9a6950a14c4624afe41d7ab5de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
