# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Implicit.Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa49e5c0efcb7a90d029cca2f64b0d3b8be1a1e7",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa49e5c0efcb7a90d029cca2f64b0d3b8be1a1e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Complemented` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImplicitFunctionData](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunctiondata--990dfe41399cbf857b8c9bdb.md) | 105 | `declaration-track:990dfe41399cbf857b8c9bdbc4885d658df2ce9fe1057cf6e4778929e70f570e` |
| 2 | `def` | [prodFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/prodfun--1ebcc7f0dec1339b88a5078d.md) | 133 | `declaration-track:1ebcc7f0dec1339b88a5078df11a9e13cfbb024550b5a3617b7ade07c6f9cbec` |
| 3 | `theorem` | [prodFun_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/prodfun-apply--ffcdc81fddaa3751fca704b4.md) | 137 | `result-track:ffcdc81fddaa3751fca704b43a01848f555bd2f171f757cf3a2460fc1265a967` |
| 4 | `theorem` | [hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/hasstrictfderivat--5fe014b1fbfb17756ed8772b.md) | 140 | `result-track:5fe014b1fbfb17756ed8772b560651489be8c273850a82ab0e479ab7671d7d50` |
| 5 | `def` | [toPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/topartialhomeomorph--884262843ae48399c6866bd9.md) | 152 | `declaration-track:884262843ae48399c6866bd9623b4b17c3f05f0923f6ebf13a6111ef50bd87e7` |
| 6 | `def` | [implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunction--b46157967cd0b5bd9b3714ae.md) | 159 | `declaration-track:b46157967cd0b5bd9b3714aef1cae9f476d4adf492bb9ba42be41a41242addf8` |
| 7 | `theorem` | [toPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/topartialhomeomorph-coe--a03d87238b126640007abe7a.md) | 163 | `result-track:a03d87238b126640007abe7ad8329237add210c82f424518d93aca647b5a2d52` |
| 8 | `theorem` | [toPartialHomeomorph_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/topartialhomeomorph-apply--6b16ac7f59e3e51b435df9e2.md) | 166 | `result-track:6b16ac7f59e3e51b435df9e2784f2adbdb048f070ce71cc8602ee0cb58fe6e39` |
| 9 | `theorem` | [pt_mem_toPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/pt-mem-topartialhomeomorph-source--932b4af47f098a73d6ac61a0.md) | 169 | `result-track:932b4af47f098a73d6ac61a083b2dbf36e22935eaaa73cdc2c8ed80ec7a1ad9d` |
| 10 | `theorem` | [map_pt_mem_toPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/map-pt-mem-topartialhomeomorph-target--826ac0680db45792d03de034.md) | 172 | `result-track:826ac0680db45792d03de0342b0113c0df448c6a4a5e596b1f530e5dc7cbcd38` |
| 11 | `theorem` | [prod_map_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/prod-map-implicitfunction--12b0dcf3aea65c23ed62bd07.md) | 176 | `result-track:12b0dcf3aea65c23ed62bd074b2862c80eb9a229109927e8134d8731bda06a43` |
| 12 | `theorem` | [left_map_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/left-map-implicitfunction--799c8c9c0e28193907afad28.md) | 180 | `result-track:799c8c9c0e28193907afad281a1a615058c30decf3e347c04cd20e9dbf5afaf7` |
| 13 | `theorem` | [right_map_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/right-map-implicitfunction--8d0165caf0d8713b6c04e88d.md) | 184 | `result-track:8d0165caf0d8713b6c04e88dba97a802c48597c8524e8baa53a424c4c2c9518f` |
| 14 | `theorem` | [implicitFunction_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunction-apply-image--cc5782eece0ec8a6bbb2b12e.md) | 188 | `result-track:cc5782eece0ec8a6bbb2b12ebffcbe5ab38ab10ff7051f2d867c5cb7d50d89be` |
| 15 | `theorem` | [map_nhds_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/map-nhds-eq--81521f01bfc69770c29f4245.md) | 192 | `result-track:81521f01bfc69770c29f4245ffc24d138af2ca988d4c6b2a5dbb8865e37e638c` |
| 16 | `theorem` | [implicitFunction_hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunction-hasstrictfderivat--779c4586a2afad601cd2f46b.md) | 196 | `result-track:779c4586a2afad601cd2f46ba02ccbbc07b17b408348ae717f3ff9b2976f29fd` |
| 17 | `def` | [implicitFunctionDataOfComplemented](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunctiondataofcomplemented--62582a62000c59e87866e801.md) | 238 | `declaration-track:62582a62000c59e87866e80131a936bbb2bdcde3fa5284a47f7a89e1fb84fad8` |
| 18 | `def` | [implicitToPartialHomeomorphOfComplemented](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorphofcomplemented--491618aec5cd30026d35a136.md) | 254 | `declaration-track:491618aec5cd30026d35a136730d2ef7fc3a8c1b028f5863847caa7f593b0b23` |
| 19 | `def` | [implicitFunctionOfComplemented](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunctionofcomplemented--261f3474ad9df9a27d19adfd.md) | 259 | `declaration-track:261f3474ad9df9a27d19adfd79720e890cd4bd42844206a0f63e43a9961ff7e5` |
| 20 | `theorem` | [implicitToPartialHomeomorphOfComplemented_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorphofcomplemented-fst--c7e2eaea28e9e52578a5cdf4.md) | 266 | `result-track:c7e2eaea28e9e52578a5cdf431a818484a937f666e83ab1dc8b61475d28b365c` |
| 21 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorphofcomplemented-apply--db5646cb43716ddff41edc0a.md) | 271 | `result-track:db5646cb43716ddff41edc0a7b367051620377df026df25dc4a5c7d7538c22b7` |
| 22 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply_ker](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorphofcomplemented-apply-ker--3c96ddd87ca72730fee91db4.md) | 278 | `result-track:3c96ddd87ca72730fee91db488afd2b753e9d63fe4e697daa9e61ef59a88911e` |
| 23 | `theorem` | [implicitToPartialHomeomorphOfComplemented_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorphofcomplemented-self--639a4e208651d71ded8bc4c9.md) | 285 | `result-track:639a4e208651d71ded8bc4c9db9d46cde47181610a1d4fb52c901eecd7b0836a` |
| 24 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/mem-implicittopartialhomeomorphofcomplemented-source--dc2eefd662766072fea3817c.md) | 290 | `result-track:dc2eefd662766072fea3817c4d3040510e0e77d3cb25460a89ce55fde65837ee` |
| 25 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/mem-implicittopartialhomeomorphofcomplemented-target--2280974685c05291c5fc7ffc.md) | 295 | `result-track:2280974685c05291c5fc7ffc75dc79e9bd001e50aef74ea6da1eb7cbaeb47bdb` |
| 26 | `theorem` | [map_implicitFunctionOfComplemented_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/map-implicitfunctionofcomplemented-eq--e782c65401f9467676ee3329.md) | 303 | `result-track:e782c65401f9467676ee3329d4d0312e16b4e874b2c4dd2ce957fdce0bb83b2d` |
| 27 | `theorem` | [eq_implicitFunctionOfComplemented](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/eq-implicitfunctionofcomplemented--3fff7f543aad0f768a995b0d.md) | 313 | `result-track:3fff7f543aad0f768a995b0d2977c4629dd2a7933e6960d275b6ca70a6610594` |
| 28 | `theorem` | [implicitFunctionOfComplemented_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunctionofcomplemented-apply-image--b3e79023c4af2453fb90be56.md) | 320 | `result-track:b3e79023c4af2453fb90be565c1a7f75e5c2bf69239eb5f5bcca5c531f0e9cea` |
| 29 | `theorem` | [to_implicitFunctionOfComplemented](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/to-implicitfunctionofcomplemented--ba6ba8b673334ff86738c836.md) | 327 | `result-track:ba6ba8b673334ff86738c836dc54d3908522ea2777777cdf4c0a4ef7fa0862ed` |
| 30 | `def` | [implicitToPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorph--c8279262c69f6d51760b832c.md) | 371 | `declaration-track:c8279262c69f6d51760b832c31313cda1fdaaaeb6759d2042d3440fba18d257e` |
| 31 | `def` | [implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunction--df9d8a069445b6d8a2dfa348.md) | 378 | `declaration-track:df9d8a069445b6d8a2dfa348bcb7fad38f05d9b209ccd78646b3ca13efc6cfb9` |
| 32 | `theorem` | [implicitToPartialHomeomorph_fst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorph-fst--b4eb53aca8657f229a9f5f1e.md) | 384 | `result-track:b4eb53aca8657f229a9f5f1ebe86c1e9eaac78b49da3de92033ed7d28b0393aa` |
| 33 | `theorem` | [implicitToPartialHomeomorph_apply_ker](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorph-apply-ker--cd5886ba1e7a50712df5897a.md) | 389 | `result-track:cd5886ba1e7a50712df5897a0c7a2a51e467996fe4f50cb1b1e7b45784e5c463` |
| 34 | `theorem` | [implicitToPartialHomeomorph_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicittopartialhomeomorph-self--6c6ca7cbddb842335dcbafd4.md) | 396 | `result-track:6c6ca7cbddb842335dcbafd41af700bff5ac6a2df2f0c3bc0623e513d5022d1f` |
| 35 | `theorem` | [mem_implicitToPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/mem-implicittopartialhomeomorph-source--4a9cbd683826996bed31e74c.md) | 401 | `result-track:4a9cbd683826996bed31e74c01b3bafe705b2df975235620f955d0d472fae3a2` |
| 36 | `theorem` | [mem_implicitToPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/mem-implicittopartialhomeomorph-target--cd20b3509a99afec062aaf80.md) | 406 | `result-track:cd20b3509a99afec062aaf80637bb301d8a4e75473b42479202d8c2ae441f44a` |
| 37 | `theorem` | [tendsto_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/tendsto-implicitfunction--ed67668bc6ef1b6118e597e3.md) | 411 | `result-track:ed67668bc6ef1b6118e597e3cad47446f637fa7caf81fbf3ac3984d2df0bef58` |
| 38 | `theorem` | [map_implicitFunction_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/map-implicitfunction-eq--e0df540ee743078af12ce565.md) | 423 | `result-track:e0df540ee743078af12ce56509b58927588df378ef39f787836ae503837ceef7` |
| 39 | `theorem` | [implicitFunction_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/implicitfunction-apply-image--89b75243fb0c10b32cdb7e53.md) | 429 | `result-track:89b75243fb0c10b32cdb7e5348e0fe84353712a55c653e2ed37eec077a02252a` |
| 40 | `theorem` | [eq_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/eq-implicitfunction--9e38905468474bef3176354c.md) | 436 | `result-track:9e38905468474bef3176354c4113376c4f1338f86655c59e1296094d8076c369` |
| 41 | `theorem` | [to_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant864e8d61702e9e5d8993041aaf81703e2abdb22f9e0cecb647fdd15ce1f0e751.lean/declarations/to-implicitfunction--4188421880a1bf2cd7d4fbec.md) | 442 | `result-track:4188421880a1bf2cd7d4fbecaa729e7701fce52c1f8e6030573a06a7a6cf95eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
