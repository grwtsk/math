# Verification target: GRWTSK.Analysis.SpecialFunctions.Core.Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Support` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.TrigReduced` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/sininterval--8d529ba9d3fc6d673a2ad9c4.md) | 52 | `declaration-track:8d529ba9d3fc6d673a2ad9c4f0bda099aaf23cfa28718c6385d28e96a3395f10` |
| 2 | `theorem` | [mem_sinInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-sininterval--e5509aafbcc431581386d80b.md) | 56 | `result-track:e5509aafbcc431581386d80ba924a67fd70d5effaacb1a8a2c9a72cde7624bba` |
| 3 | `def` | [cosInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/cosinterval--dd2e005d5f0e1b0fb620d7c8.md) | 67 | `declaration-track:dd2e005d5f0e1b0fb620d7c833d0ee3c09462fd93e173447e352438338d451d6` |
| 4 | `theorem` | [mem_cosInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-cosinterval--71aeb9db101930d76dee43f6.md) | 71 | `result-track:71aeb9db101930d76dee43f67bd5ad542ed0813ffe1afc4985bff1ee857f072d` |
| 5 | `def` | [atanInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/ataninterval--91189daa66e7c1107b4a2460.md) | 82 | `declaration-track:91189daa66e7c1107b4a2460374591880aae4aecc87192c51443a2ce57e42964` |
| 6 | `theorem` | [mem_atanInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-ataninterval--1509b5f17a0992d0768b99bd.md) | 86 | `result-track:1509b5f17a0992d0768b99bdb7de70fd3fd2d4bf80f9f373e7187a38eccd12c5` |
| 7 | `def` | [erfInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/erfinterval--6a915f50a22aa5a2a68d4293.md) | 101 | `declaration-track:6a915f50a22aa5a2a68d429315493957e0c82f724bd052ae0b6a73ce672d3c6c` |
| 8 | `theorem` | [integral_exp_neg_sq_pos](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/integral-exp-neg-sq-pos--184c5308cd09c4560a0f640a.md) | 106 | `result-track:184c5308cd09c4560a0f640a26b304de8651cba41b5e5c2402874b05a5ed5cca` |
| 9 | `theorem` | [Real.strictMono_erf](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/real-strictmono-erf--56231b52afaee218ffe61c79.md) | 119 | `result-track:56231b52afaee218ffe61c79bd0c10cdb3d70b78453f7b925fd2cc9fbe2a57e6` |
| 10 | `theorem` | [Real.abs_erf_le_2257_div_2000_mul_abs](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/real-abs-erf-le-2257-div-2000-mul-abs--8e66797598f6e69e00b4acc0.md) | 142 | `result-track:8e66797598f6e69e00b4acc0ca18b5109b585ff47011b402d70ce7f8d8324f3d` |
| 11 | `theorem` | [mem_erfPointComputable](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-erfpointcomputable--3ecbf42b15c9622040a7a5e3.md) | 188 | `result-track:3ecbf42b15c9622040a7a5e35fae814772bc1df219700effc5283e1fa1c36366` |
| 12 | `theorem` | [mem_erfInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-erfinterval--621627346fb22b3112c4849d.md) | 228 | `result-track:621627346fb22b3112c4849dc0eda0bab0c021e55e440ac52f3aeeee6d238f30` |
| 13 | `def` | [arsinhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/arsinhinterval--b85d0defd68c3da15ddda6fc.md) | 278 | `declaration-track:b85d0defd68c3da15ddda6fc9fb114701f86bcd8b8b247752ff44af75017c0ad` |
| 14 | `theorem` | [mem_arsinhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-arsinhinterval--653531d1ee8b540833ef0932.md) | 290 | `result-track:653531d1ee8b540833ef0932f3c0e3e8272bedc010cf13953e624aa604563c31` |
| 15 | `def` | [atanhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/atanhinterval--d29f58701156a3cecb703247.md) | 339 | `declaration-track:d29f58701156a3cecb70324721cb3f3734e17191278c9f7a31c5d753ad53f938` |
| 16 | `theorem` | [mem_atanhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-atanhinterval--3a993aee1e94fe71898a1767.md) | 347 | `result-track:3a993aee1e94fe71898a1767b8711512445ea78fa2311ea6f2597ec9328dda0f` |
| 17 | `def` | [tanhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/tanhinterval--11262fe52463ecbcefb883ca.md) | 361 | `declaration-track:11262fe52463ecbcefb883cad1c2eb3d762932102b71bac4d3fd10950e06dc15` |
| 18 | `theorem` | [mem_tanhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-tanhinterval--70cc4ebc71b511a337b13e39.md) | 365 | `result-track:70cc4ebc71b511a337b13e3959ed8837a772c92d55e3065aafb82ce9b33493be` |
| 19 | `def` | [piInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/piinterval--3eae2cb8a02d0a0c35264b4d.md) | 392 | `declaration-track:3eae2cb8a02d0a0c35264b4d3d7550ee014cd6a88efc6807838fc30c6985665d` |
| 20 | `theorem` | [mem_piInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-piinterval--c2278a257d44ba01f9509969.md) | 397 | `result-track:c2278a257d44ba01f9509969992e3c0f104037fd5511e3ecb6e09503ed768d14` |
| 21 | `def` | [eulerMascheroniInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/eulermascheroniinterval--adddfb131140a8013fe81ec2.md) | 414 | `declaration-track:adddfb131140a8013fe81ec27a040d15364e02a09982d794683303d0929d26f3` |
| 22 | `theorem` | [eulerMascheroniSeq_100_ge](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/eulermascheroniseq-100-ge--f53b4f92e005fbe16aac4781.md) | 418 | `result-track:f53b4f92e005fbe16aac4781dab7445583622f48b00a580b6fd5bf7cba3b8a61` |
| 23 | `theorem` | [eulerMascheroniSeq'_100_le](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/eulermascheroniseq-100-le--cf5192986d45c8367c7f44d1.md) | 432 | `result-track:cf5192986d45c8367c7f44d12620402f3d11eb087ad16022d24fe0337aa050b8` |
| 24 | `theorem` | [mem_eulerMascheroniInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-eulermascheroniinterval--b2acb4af5c44668834cd84a2.md) | 445 | `result-track:b2acb4af5c44668834cd84a24e97e0eddf4fe738afc39d0ff5a8e533b618e8df` |
| 25 | `def` | [interval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/interval--b102303456bd5296faa7bbec.md) | 463 | `declaration-track:b102303456bd5296faa7bbec677801bfb32ad38df41606c4b04d3acedd2b8773` |
| 26 | `theorem` | [mem_interval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-interval--87f31b933f4ad084b2eba48c.md) | 468 | `result-track:87f31b933f4ad084b2eba48c32156ad99c00ae3e1218da4d68756b32e845e6f6` |
| 27 | `def` | [sinhInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/sinhinterval--4c5768aa79caeae6e1fc7994.md) | 481 | `declaration-track:4c5768aa79caeae6e1fc7994f3a6359b37ed6f24b31c6b40ebde79ecc62932c1` |
| 28 | `def` | [coshInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/coshinterval--07f223a4c7fcf2bc9ac898cc.md) | 487 | `declaration-track:07f223a4c7fcf2bc9ac898cc8b5a86e2d378ed52e813a41a259d22ffae148606` |
| 29 | `def` | [invWideBound](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/invwidebound--326986f56fea49ef55ca48c7.md) | 493 | `declaration-track:326986f56fea49ef55ca48c74d7759e0a046e3e66918a53f257dd96a0e3d2945` |
| 30 | `theorem` | [invWideBound_pos](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/invwidebound-pos--75d0314fc1f1fc3d1d978e71.md) | 495 | `result-track:75d0314fc1f1fc3d1d978e71ba4453a0a9ba0ea09f20607bf8571032c6892364` |
| 31 | `def` | [invInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/invinterval--6ac66b753effda278c58aff4.md) | 503 | `declaration-track:6ac66b753effda278c58aff430bf612cf368f122b5cc7efc4379541819e74174` |
| 32 | `theorem` | [mem_invInterval_pos](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-invinterval-pos--ff17f962f108189e18be4221.md) | 522 | `result-track:ff17f962f108189e18be4221e68e07a4b0916c2f85f69a44437c64524a344280` |
| 33 | `theorem` | [mem_invInterval_neg](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-invinterval-neg--639aba724bd2c45bdf5ec0bc.md) | 562 | `result-track:639aba724bd2c45bdf5ec0bcdc4e47920b37490af8bec62e903ad0f14c7ec006` |
| 34 | `theorem` | [mem_invInterval_wide](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-invinterval-wide--a9ae110e204d2e4e83a4adf9.md) | 602 | `result-track:a9ae110e204d2e4e83a4adf94215a07d7a79cb60b8816cc785c1c967797ac5e2` |
| 35 | `theorem` | [mem_invInterval](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-invinterval--cb8aa15a788352b1e47e126b.md) | 619 | `result-track:cb8aa15a788352b1e47e126b3693a534dbae1ab404e677754d311acfc1e832d3` |
| 36 | `theorem` | [mem_invInterval_nonzero](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mem-invinterval-nonzero--b1614d7ed5636caacd8d86db.md) | 630 | `result-track:b1614d7ed5636caacd8d86dbe81fd907dbbd5b3046b0eb1c641a5bf4075198ad` |
| 37 | `abbrev` | [IntervalEnv](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/intervalenv--1506665ff6da155853541842.md) | 640 | `declaration-track:1506665ff6da155853541842fc75067f3f084097c1752b8ead9d0d029badee7f` |
| 38 | `structure` | [EvalConfig](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalconfig--f7e82fb692f22f0b1df9b262.md) | 644 | `declaration-track:f7e82fb692f22f0b1df9b2628407f52544ce8221139ba66b795977d79042e22a` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/instance--7a8a8a5a3e630b0b18328327.md) | 650 | `declaration-track:7a8a8a5a3e630b0b1832832702140ccc1e84f8e86a2ed20a1022a0e750775cd1` |
| 40 | `def` | [evalIntervalCore](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalintervalcore--2c9db02c9336fc1e27255fea.md) | 666 | `declaration-track:2c9db02c9336fc1e27255fea78bc480bd4393961ab3cd9d8d2dad7ae0ada7602` |
| 41 | `def` | [evalIntervalCoreWithDiv](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalintervalcorewithdiv--418f1900e47a46eacbdd6b61.md) | 699 | `declaration-track:418f1900e47a46eacbdd6b6184e8f3d98c01315e7b64f2c2c5e6f334b14bb184` |
| 42 | `def` | [envMem](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/envmem--061ffe2ff04317681996ebd3.md) | 743 | `declaration-track:061ffe2ff04317681996ebd35b18d38aa1705a8fc5a56dd9af4d0c57b1b0e94b` |
| 43 | `def` | [evalDomainValid](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evaldomainvalid--9c90ac186df71a8b12decbda.md) | 752 | `declaration-track:9c90ac186df71a8b12decbda61ed6a5540ddd262f9aca9fd59aff943fc31c696` |
| 44 | `def` | [evalDomainValid1](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evaldomainvalid1--276ffe0b19bb519eb28fdb07.md) | 776 | `declaration-track:276ffe0b19bb519eb28fdb07d94fef06fbc5a8345932e3846f6c7928a8735dd1` |
| 45 | `def` | [checkDomainValid](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/checkdomainvalid--4a3467e78232f3e344153850.md) | 780 | `declaration-track:4a3467e78232f3e3441538500215680ec417c24f57b705bbe217a53456f51de6` |
| 46 | `def` | [checkDomainValid1](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/checkdomainvalid1--cd9938a5a8a1e7f7b2fbe70f.md) | 804 | `declaration-track:cd9938a5a8a1e7f7b2fbe70ffd530857eb61f61e9baadac97ba8761b4f93ccb6` |
| 47 | `theorem` | [checkDomainValid_correct](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/checkdomainvalid-correct--dbe8bb615e49a1d1500480e6.md) | 808 | `result-track:dbe8bb615e49a1d1500480e6b61ed479c15065018f59d2092d2c8d86ea64b408` |
| 48 | `theorem` | [checkDomainValid1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/checkdomainvalid1-correct--259dbb9dd1e3d59c203d9c15.md) | 884 | `result-track:259dbb9dd1e3d59c203d9c154a5552ecb4c9760f6436e9784e4a46595509164f` |
| 49 | `theorem` | [evalDomainValid_iff_checkDomainValid](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evaldomainvalid-iff-checkdomainvalid--57e2585b453cd12a8e445f75.md) | 889 | `result-track:57e2585b453cd12a8e445f752a266887e563dbfacf6664bfe7af6ee0afcba656` |
| 50 | `instance` | [decidableEvalDomainValid](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/decidableevaldomainvalid--598b1ae5b7f7d65e4133521e.md) | 970 | `declaration-track:598b1ae5b7f7d65e4133521e9b0dce7f59dea0fd6e3c0488e749072b6d939dbe` |
| 51 | `instance` | [decidableEvalDomainValid1](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/decidableevaldomainvalid1--13c7847b52e9e4e8cb3fb736.md) | 975 | `declaration-track:13c7847b52e9e4e8cb3fb73650275112f5299e63d8a5e2f60da65fea26da24f9` |
| 52 | `theorem` | [ExprSupported.domainValid](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/exprsupported-domainvalid--15048cc719c7cc3b782ce31d.md) | 981 | `result-track:15048cc719c7cc3b782ce31db07aa5029258ec12139582b2c94ca599c6d27e12` |
| 53 | `theorem` | [exprSupported_domainValid1](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/exprsupported-domainvalid1--ee5befa7bd0aec716046954d.md) | 994 | `result-track:ee5befa7bd0aec716046954dbe92d3eb529b92884b196f8ed0a4e9e144285cfd` |
| 54 | `theorem` | [evalIntervalCore_correct](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalintervalcore-correct--790df4c8f4e35aee25a4d339.md) | 1004 | `result-track:790df4c8f4e35aee25a4d3396e92d27d5f5d3dc036349fa03e56cd73937046a3` |
| 55 | `def` | [evalIntervalCore1](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalintervalcore1--f2c2875fb56b97e771873d3f.md) | 1071 | `declaration-track:f2c2875fb56b97e771873d3f9af2acc707b3289a8778273e76398e3c14b7c496` |
| 56 | `theorem` | [evalIntervalCore1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/evalintervalcore1-correct--8bcfa035e76f88e9f44e48f3.md) | 1075 | `result-track:8bcfa035e76f88e9f44e48f3b3e46fce47a546721b145a8c79d5eb1863be60d3` |
| 57 | `def` | [mkConst](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkconst--f2bffee763e78ff68390001a.md) | 1085 | `declaration-track:f2bffee763e78ff68390001a701a9b382c39fe71e348e62292cc4f52b3b79211` |
| 58 | `def` | [mkVar](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkvar--3f3b53fc0354f777d9e9c0e5.md) | 1089 | `declaration-track:3f3b53fc0354f777d9e9c0e5dc8c3ccb9e3b15c52510d1ec43c64577973b7e36` |
| 59 | `def` | [mkAdd](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkadd--7b78d7a3c2849184ea0f9f59.md) | 1093 | `declaration-track:7b78d7a3c2849184ea0f9f5991da6846c91e17e29275a991ed3c77fb25da9ba8` |
| 60 | `def` | [mkMul](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkmul--2c7b27ae81329cab9240b46b.md) | 1097 | `declaration-track:2c7b27ae81329cab9240b46be64f06f317ce99b8b33f28794fcc61621b231bfa` |
| 61 | `def` | [mkNeg](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkneg--5d7aabce73ae9584ba89fccd.md) | 1101 | `declaration-track:5d7aabce73ae9584ba89fccdd9d63bac1eaedb40ce2e3a7b8bc0a4c7bfa918ed` |
| 62 | `def` | [mkSin](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mksin--31ea612d12ae0d542edd4a3a.md) | 1105 | `declaration-track:31ea612d12ae0d542edd4a3a4d11e3c3d8241d583e2fc846cf4fdb3d30eed060` |
| 63 | `def` | [mkCos](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkcos--87254f797333c4a744b26774.md) | 1109 | `declaration-track:87254f797333c4a744b2677493ce1de77502423d508204ce870258d3c52a7399` |
| 64 | `def` | [mkExp](../../../../../mathematics/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/declarations/mkexp--d98a34a66f70e3f879d40475.md) | 1113 | `declaration-track:d98a34a66f70e3f879d404753cbb6dfa8912d0ccc21ff201d1452218bd2bdc96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
