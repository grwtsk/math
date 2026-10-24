# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6af64edc97e7dca895794e7d1c19729ea9b2794c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6af64edc97e7dca895794e7d1c19729ea9b2794c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RegularMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularmono--7bf77efa39b949ae4a9ba000.md) | 42 | `declaration-track:7bf77efa39b949ae4a9ba000fdcaa401ee1b9f29fae412ebf2702e834a7492b4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--d2697ad4e1b8819fddf2105f.md) | 57 | `declaration-track:d2697ad4e1b8819fddf2105fddb338e58dc545006b417dd3a36dddf7b0fb136a` |
| 3 | `instance` | [equalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/equalizerregular--5374c16c187651e28c1da12b.md) | 60 | `declaration-track:5374c16c187651e28c1da12bd9338e23a48ff422085058c331d8f1f1f28b2534` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--9929b49561bae07c7c4d2113.md) | 72 | `declaration-track:9929b49561bae07c7c4d2113f7cfad9b8a35559893b06f77ccadc7e073339399` |
| 5 | `def` | [RegularMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularmono-lift--237c637eb6f9dd04b0e0efe4.md) | 81 | `declaration-track:237c637eb6f9dd04b0e0efe4940eaca889e88141a31e40726bf97fdc9f938c94` |
| 6 | `def` | [regularOfIsPullbackSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularofispullbacksndofregular--c210580e54f9db1f37d81796.md) | 91 | `declaration-track:c210580e54f9db1f37d81796aca7d18b3f4a0dc8983e7af62b182881b7fe4751` |
| 7 | `def` | [regularOfIsPullbackFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularofispullbackfstofregular--da9ae74e7a1ca3f741ca6d8b.md) | 121 | `declaration-track:da9ae74e7a1ca3f741ca6d8b3b7c72a083073ecfcbcbedde1b259c7c9c8c29df` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--e7c1b6ab05ec0009a49eb721.md) | 126 | `declaration-track:e7c1b6ab05ec0009a49eb7212010af24f4ae8eb2f0ff152db43d3e389fe40579` |
| 9 | `theorem` | [isIso_of_regularMono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/isiso-of-regularmono-of-epi--af502cc036046ac51f70c986.md) | 138 | `result-track:af502cc036046ac51f70c986e0cb90c2464cf8ff59115ec4d0fc92cb70b45adc` |
| 10 | `class` | [IsRegularMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/isregularmonocategory--5888158fe4cc57dc536d8219.md) | 146 | `declaration-track:5888158fe4cc57dc536d82194b696ac1b696eff5b34aee6d23ab43bf16390ed7` |
| 11 | `def` | [regularMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularmonoofmono--4f55fb9b6c924a8138ad7381.md) | 156 | `declaration-track:4f55fb9b6c924a8138ad738188ca377b2490403f6dcff15dfbbb088bab7e8188` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--88c6974526578eb780d441bc.md) | 159 | `declaration-track:88c6974526578eb780d441bc913b625b61ad8209885e8b1f64ab196f15211adc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--e76898723141ff7af16227fe.md) | 165 | `declaration-track:e76898723141ff7af16227fe75a2361e4264befc928e3fad2def49bf8872cf3d` |
| 14 | `class` | [RegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularepi--d9b62881cf374cdd9404bc4c.md) | 172 | `declaration-track:d9b62881cf374cdd9404bc4ca0fb29c872f74fbc6679ecb3d8d6627abd797c85` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--0aa65d741750cb1190201b63.md) | 185 | `declaration-track:0aa65d741750cb1190201b6371812a804966b85116186c58e3123cf0dbea7634` |
| 16 | `instance` | [coequalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/coequalizerregular--b818da787e2a7ad400d5c55f.md) | 188 | `declaration-track:b818da787e2a7ad400d5c55ffac655eaed30958022d26bb30d98d80ff9649973` |
| 17 | `def` | [regularEpiOfKernelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularepiofkernelpair--abd154aaf60042d4086ca29c.md) | 200 | `declaration-track:abd154aaf60042d4086ca29cfba548817d7d07ddebb8e6ec95c96f01b50d262b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--30c2c8f35a15ddb0187c670b.md) | 209 | `declaration-track:30c2c8f35a15ddb0187c670b41f1b3d28c1ceb715361fcb799549e3de8c46d67` |
| 19 | `def` | [RegularEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularepi-desc--9606f99f2c92bba7023da23f.md) | 217 | `declaration-track:9606f99f2c92bba7023da23fbf80944a549556ba0e6100190997de3a9260eb7f` |
| 20 | `def` | [regularOfIsPushoutSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularofispushoutsndofregular--d2d45a3eed51d950bc8cc833.md) | 227 | `declaration-track:d2d45a3eed51d950bc8cc833c07a58cb4633248bbcaf81d51520ec0544ed7c62` |
| 21 | `def` | [regularOfIsPushoutFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularofispushoutfstofregular--5a0ea49c378bad7b4b537f24.md) | 256 | `declaration-track:5a0ea49c378bad7b4b537f249b31d8810947e32484f3fe441cdd65bf0b131d1e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--5c04296b45316497d533328b.md) | 261 | `declaration-track:5c04296b45316497d533328b8da621888814683fb8efa6fca8beb34653afaaee` |
| 23 | `theorem` | [isIso_of_regularEpi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/isiso-of-regularepi-of-mono--fc922594e4cf42e2f55101a8.md) | 276 | `result-track:fc922594e4cf42e2f55101a87d88dc41cde3f624b0eecde1de9eaceae9941ef7` |
| 24 | `class` | [IsRegularEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/isregularepicategory--fee28d6bdf6cece60c31264a.md) | 284 | `declaration-track:fee28d6bdf6cece60c31264a904ae922788a230e21d0719c93a1dad3219de34f` |
| 25 | `def` | [regularEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/regularepiofepi--850217fac533f58fcbade275.md) | 294 | `declaration-track:850217fac533f58fcbade2757597666ba28c93566adca394550cc07fc8eb53a7` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--9ff0082c4062b2ac5a7d812c.md) | 297 | `declaration-track:9ff0082c4062b2ac5a7d812cd760ccd6171b40c43b9d5b9e4946364a600884f3` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded.lean/declarations/instance--b905773c0b2d538b96f7fa14.md) | 303 | `declaration-track:b905773c0b2d538b96f7fa1403eceaeef483579e3fd5530d048daf86514f4c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
