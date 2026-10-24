# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyClosed.Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e20d33189fdfb37ec05ce90a9cf1f7211b244ef2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e20d33189fdfb37ec05ce90a9cf1f7211b244ef2`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean.json)

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
| 1 | `class` | [UniversallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed--8e37ed1dcfd34edbe4f639dd.md) | 43 | `declaration-track:8e37ed1dcfd34edbe4f639ddc23efc5c51312f54a74952f2f45e5ae9f928a179` |
| 2 | `lemma` | [Scheme.Hom.isClosedMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/scheme-hom-isclosedmap--b0941fdbc1c0b2d4cf85d921.md) | 46 | `result-track:b0941fdbc1c0b2d4cf85d92190210e55dc40db5514927297e35ed01defc25692` |
| 3 | `theorem` | [universallyClosed_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-eq--b75bcdb0ab16a481c8c4b406.md) | 49 | `result-track:b75bcdb0ab16a481c8c4b406c2fecf4cc23e37ddc139378302221d6b6e19575e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/instance--e835ceb2418697fe67d26196.md) | 52 | `declaration-track:e835ceb2418697fe67d26196cb9a6ca09564617a96e00cbdf12c21b93db25faa` |
| 5 | `theorem` | [universallyClosed_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-respectsiso--3ca8fb55c75b7563cab68406.md) | 59 | `result-track:3ca8fb55c75b7563cab68406499746a043f18d177c2dc536c3b0c884a958ce80` |
| 6 | `instance` | [universallyClosed_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-isstableunderbasechange--6dbeadee5d25770ab09fe419.md) | 62 | `declaration-track:6dbeadee5d25770ab09fe4196bfd165d8d9cbfff5dca205310f1f16545d644aa` |
| 7 | `instance` | [isClosedMap_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/isclosedmap-isstableundercomposition--043ab41e0c4141161ad53160.md) | 65 | `declaration-track:043ab41e0c4141161ad531606ca98045defb6486f334955039629aee93a25f66` |
| 8 | `instance` | [universallyClosed_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-isstableundercomposition--1c839fb6b4af76ab64199bc6.md) | 69 | `declaration-track:1c839fb6b4af76ab64199bc6c03f0e132e5bca7acba67683601272ae51d2f41d` |
| 9 | `lemma` | [UniversallyClosed.of_comp_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-of-comp-surjective--c5d7fcf905c8189295b892f8.md) | 75 | `result-track:c5d7fcf905c8189295b892f895912d5e6be63c3f34b7fcf6feaaa9eaa7a08db3` |
| 10 | `instance` | [universallyClosedTypeComp](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosedtypecomp--9e32a772500690d3baa6a4bf.md) | 84 | `declaration-track:9e32a772500690d3baa6a4bf675273a223229e461f71ca6526bd5a4ad154b5fa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/instance--6e986ec1225ea9ccf23c89ee.md) | 88 | `declaration-track:6e986ec1225ea9ccf23c89ee676f9bfef46e2ffcb0f15755424408f38702bdb2` |
| 12 | `instance` | [universallyClosed_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-fst--0143565cae96be51167deae5.md) | 92 | `declaration-track:0143565cae96be51167deae5ad02fb496ccaf829d3fe25aff9be26fa5616cfd8` |
| 13 | `instance` | [universallyClosed_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-snd--432e4201eecf59bfc550ac92.md) | 97 | `declaration-track:432e4201eecf59bfc550ac9258dc86af0e2c62f9a194ff5584a191b3579c4911` |
| 14 | `instance` | [universallyClosed_isZariskiLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-iszariskilocalattarget--17abb4400768197d796d04cb.md) | 101 | `declaration-track:17abb4400768197d796d04cbd62f324b91089c504cef25f4bcf238b173edf51b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/instance--b563903e0b9c76405afa0e5b.md) | 108 | `declaration-track:b563903e0b9c76405afa0e5b32a7e546214a18db6227a62c331ff20424b4724c` |
| 16 | `lemma` | [compactSpace_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/compactspace-of-universallyclosed--7c7843ce875787e8c0fee194.md) | 113 | `result-track:7c7843ce875787e8c0fee1942a87b8451b16a42b26db3718392c27cbf7c5a848` |
| 17 | `lemma` | [Scheme.Hom.isProperMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/scheme-hom-ispropermap--5ec2353e382d1ac7525f2a71.md) | 157 | `result-track:5ec2353e382d1ac7525f2a711b1c1694f95b4d0075a692640d749f9e79237748` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/instance--f9f72ea21e6f4b44d4e784f9.md) | 164 | `declaration-track:f9f72ea21e6f4b44d4e784f967b1f47f0b172cc6eb63733f4e00dad17027ff5c` |
| 19 | `lemma` | [universallyClosed_eq_universallySpecializing](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/universallyclosed-eq-universallyspecializing--e9e3f7fccebc077d2ccf84cd.md) | 168 | `result-track:e9e3f7fccebc077d2ccf84cd8b6927d4e8c2479badb006810504b4e07b41b935` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/declarations/instance--e8041fd9c360ff2328496911.md) | 177 | `declaration-track:e8041fd9c360ff2328496911718f40e71aafa818e2cef16c292e60426c33033b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
