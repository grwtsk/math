# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Left.Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86662e1df75b63bf9c9995697803eac492a29a95",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86662e1df75b63bf9c9995697803eac492a29a95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [counitCoequalises](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/counitcoequalises--964475ec7e931146ece16873.md) | 85 | `declaration-track:964475ec7e931146ece168734505c1ecea938df35b208b5d37e8107d9467ad50` |
| 2 | `def` | [otherMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/othermap--42c66f46ff66cb50d33d0043.md) | 108 | `declaration-track:42c66f46ff66cb50d33d0043b01268b2a400621a521ebd51f6df5630518543d9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/instance--6beec22012e79b7d72a0e889.md) | 114 | `declaration-track:6beec22012e79b7d72a0e8894e1497962af90119fefdaf2778a5c0afafe351fd` |
| 4 | `def` | [constructLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/constructleftadjointobj--b302d5db01a4d3a53ede87e2.md) | 130 | `declaration-track:b302d5db01a4d3a53ede87e2789e8fe67cf9b3ce2e4c58d6e472f13aa5e7c190` |
| 5 | `def` | [constructLeftAdjointEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/constructleftadjointequiv--0cd2efb7e0b42371faefbdc2.md) | 135 | `declaration-track:0cd2efb7e0b42371faefbdc27a93773c01f1d0862a0b878966863aea018a3b6d` |
| 6 | `def` | [constructLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/constructleftadjoint--5bd19d12c98c22df9e16c6ca.md) | 164 | `declaration-track:5bd19d12c98c22df9e16c6cada5b3951cb3f3fca97e6306578bcf14050d48a77` |
| 7 | `lemma` | [isRightAdjoint_triangle_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/isrightadjoint-triangle-lift--fddc26e4d206a85442879242.md) | 186 | `result-track:fddc26e4d206a85442879242725ad2bc2d0160dd13ff43b3e58bffc5a755db71` |
| 8 | `lemma` | [isRightAdjoint_triangle_lift_monadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/isrightadjoint-triangle-lift-monadic--f10237040839aafb15fd149b.md) | 197 | `result-track:f10237040839aafb15fd149b54ac410fecce63032b1ea28d78d842c2b4b34389` |
| 9 | `lemma` | [isRightAdjoint_square_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/isrightadjoint-square-lift--97a4584b657df8dd9db7c824.md) | 234 | `result-track:97a4584b657df8dd9db7c824cd721b0510bda7f4ab16ee2166c800d93258c205` |
| 10 | `lemma` | [isRightAdjoint_square_lift_monadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/declarations/isrightadjoint-square-lift-monadic--5b066c0e29cab1c1b9afe1dc.md) | 256 | `result-track:5b066c0e29cab1c1b9afe1dc1fe8da89c53ec2b716a2cc752274afe1a1c1c4ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
