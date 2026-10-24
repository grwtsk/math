# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroTransform.Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b01ceb99dcca3b98410b832b57e05abf3fff361",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b01ceb99dcca3b98410b832b57e05abf3fff361`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/bumppolynomial--5be602ebcdc012dc6bd8fac7.md) | 23 | `declaration-track:5be602ebcdc012dc6bd8fac7b70fd757288eef0e722465c4c95f05d25d9f6fb6` |
| 2 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/primitivepolynomial--b32c2228d3b57759e3410146.md) | 25 | `declaration-track:b32c2228d3b57759e341014657d7af91281ed55e81cc06af909d7ab08cf2966b` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/primitive-derivative--ad04f7567c6a9befd3c5bce5.md) | 50 | `result-track:ad04f7567c6a9befd3c5bce54f6cbf02d8a99b226e9cccf6e81bce5100fc6932` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/primitive-endpoint-pos--8b8b12f6f31e8e0337186678.md) | 58 | `result-track:8b8b12f6f31e8e03371866784abbf07e526ef4c28e9b03f85b95568588a16682` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/primitive-endpoint-neg--818012973ea93d2f79f4bc4e.md) | 63 | `result-track:818012973ea93d2f79f4bc4eb736bbe2e09757cb7bb5bc5e9206dc69fcdb2e04` |
| 6 | `def` | [fullPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/fullprimitive--1c2fe7c9d8d2efc0802a124b.md) | 68 | `declaration-track:1c2fe7c9d8d2efc0802a124b2fb42bacce0d894d4b02f3b4a27cffc72bef4528` |
| 7 | `theorem` | [fullPrimitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/fullprimitive-derivative--8de1badc1269e5e1d0f98ca3.md) | 72 | `result-track:8de1badc1269e5e1d0f98ca35834603d9a5f4b9daa5dec9cd6f94b2ecb1c1fb5` |
| 8 | `theorem` | [fullPrimitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/fullprimitive-endpoint-pos--4929b0dfef15fd88b1d1f695.md) | 81 | `result-track:4929b0dfef15fd88b1d1f6959e1833617381bd6109c3414672d2a0caa27c0b2d` |
| 9 | `theorem` | [fullPrimitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/fullprimitive-endpoint-neg--e70529f398c511e299ecec51.md) | 87 | `result-track:e70529f398c511e299ecec512522f2722648b6aa097b3d74b9eebf1fec274fe9` |
| 10 | `def` | [interior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/interior--bcefcd557151a70722764d25.md) | 93 | `declaration-track:bcefcd557151a70722764d25713db62a88fac24ef314a41fdfbb3de5dcf77469` |
| 11 | `theorem` | [interior_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/interior-eq--e2d30e6dd24a3335d78871c3.md) | 97 | `result-track:e2d30e6dd24a3335d78871c3ab7eae226d85e7db27ca3344366f26c7f559d022` |
| 12 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/exponential-primitive--4d7754bc6bbd7bd038f361df.md) | 110 | `result-track:4d7754bc6bbd7bd038f361df963235ca16da16fb39ca046151543ef7cf27fcb0` |
| 13 | `theorem` | [interior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/interior-continuous--62aab2adbaaab2f63df41c6a.md) | 122 | `result-track:62aab2adbaaab2f63df41c6a82292e53cd89241944ba95fd0b908637d0134800` |
| 14 | `theorem` | [actual_integrand_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/actual-integrand-indicator--113f3a508a301ee6e96c257d.md) | 126 | `result-track:113f3a508a301ee6e96c257de7b0644b6bae7b1bf02057cc2ebe23a62bb1c12e` |
| 15 | `theorem` | [actual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/actual-integrable--29c324f11db962437f5fc44d.md) | 134 | `result-track:29c324f11db962437f5fc44d7beb15c0a999f2cb047fdba474349b47ed4efa5b` |
| 16 | `theorem` | [actual_integral_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/actual-integral-interval--1fd57c93f2b95e61487ce4ce.md) | 141 | `result-track:1fd57c93f2b95e61487ce4ce8b24e4d3a55886bba12406d0d963ffabf9d28c44` |
| 17 | `theorem` | [normalized_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/normalized-primitive--6593eca5d6435eff12296ac0.md) | 148 | `result-track:6593eca5d6435eff12296ac0f693cd76475caa081af20e25d70d29e43c19c054` |
| 18 | `theorem` | [source_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/source-scale--6e7050a9170ebaf64efeae18.md) | 160 | `result-track:6e7050a9170ebaf64efeae187eabfc10c1f6d000955249f88494361281ecd577` |
| 19 | `theorem` | [actual_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/actual-transform--061fb19c3ac8342a6a9b08c0.md) | 164 | `result-track:061fb19c3ac8342a6a9b08c008c14a556aa1cff3df5290d818254391dd909f8e` |
| 20 | `theorem` | [bilateral_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantfb03af1dfd5eae35ea42c2845df57f2d9e51ea07052d21ae73e4f40dd917ee70.lean/declarations/bilateral-transform--68f4430fdf66339248cf27a3.md) | 178 | `result-track:68f4430fdf66339248cf27a3c68a1ab85062ad693026307ea7e29496dc148551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
