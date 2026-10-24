# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b0d5b0563b95b0bca734c7ad05a445b68d0048",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b0d5b0563b95b0bca734c7ad05a445b68d0048`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_congr_forget_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/forall-congr-forget-type--fa0d31962925781cb31c5466.md) | 45 | `result-track:fa0d31962925781cb31c54667d19fa787e3a08b436844ae4b3c8e1faec0471f3` |
| 2 | `theorem` | [forget_hom_Type](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/forget-hom-type--ef58b867ab9e4e089217c116.md) | 50 | `result-track:ef58b867ab9e4e089217c116b76909f0d022e832f6a021d174649ef95f2dc22f` |
| 3 | `theorem` | [hom_elementwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/hom-elementwise--c38619e64f05c4d0e40fd968.md) | 52 | `result-track:c38619e64f05c4d0e40fd968b78c588f43be6cbadfdf19856cb54dcd24ca5eb9` |
| 4 | `def` | [elementwiseThms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/elementwisethms--10766809e2ff756f5628ff82.md) | 58 | `declaration-track:10766809e2ff756f5628ff8259bb46bc305aee925ba36e725440b92590ccfdd5` |
| 5 | `def` | [elementwiseExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/elementwiseexpr--dc41da31eb3c42ba726ed007.md) | 85 | `declaration-track:dc41da31eb3c42ba726ed0075ba91582f90b5a3525dbcddb75e4abee8fb1e3ad` |
| 6 | `def` | [mkUnusedName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/mkunusedname--666dc761cf2c7093975d661c.md) | 156 | `declaration-track:666dc761cf2c7093975d661cd8b3c962a2fcd1a9f894e08911d39cb9e2ec92db` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/syntax--e751d63eba4784d39f768a19.md) | 205 | `declaration-track:e751d63eba4784d39f768a19f3be08f15ed195bad4444f2d820f64063f4924a7` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/initialize--32bd58992284643d5e931ec5.md) | 208 | `declaration-track:32bd58992284643d5e931ec5e072dba851971d516c7e8f409b0a78c13347b86e` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/elab--f9a95109bcba238d69666e13.md) | 253 | `declaration-track:f9a95109bcba238d69666e134ae5de5ef9e5856eef42513651449281c32757b4` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/syntax--5913c3607f29fc70197ae9d6.md) | 259 | `declaration-track:5913c3607f29fc70197ae9d6d3048eab43f8bf9cbbb1d18d071771ad39c17893` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/declarations/syntax--8808c5e115c3853f29c26783.md) | 260 | `declaration-track:8808c5e115c3853f29c26783846013279f81abb9358766299de4b7c323228278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
