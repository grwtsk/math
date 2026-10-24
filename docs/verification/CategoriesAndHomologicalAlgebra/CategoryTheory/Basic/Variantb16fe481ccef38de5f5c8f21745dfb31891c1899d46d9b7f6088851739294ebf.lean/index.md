# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed722e750b12377e6011d387e904143190ddec12",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed722e750b12377e6011d387e904143190ddec12`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.Filtered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape--7317e00f9a0c1c683564c9ca.md) | 72 | `declaration-track:7317e00f9a0c1c683564c9cafdda67dc1a71a99cd903f7098f97ba0938f9cfd2` |
| 2 | `class` | [HasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape--124bfff35e3b18bfc8c91f58.md) | 81 | `declaration-track:124bfff35e3b18bfc8c91f5824c560b7b0ce97910ade75708474b38eb8b84eb3` |
| 3 | `lemma` | [HasExactColimitsOfShape.domain_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-domain-of-functor--119ff45048ce05b796dd2ccc.md) | 94 | `result-track:119ff45048ce05b796dd2ccc14d58c1183b9a5fb6d77532fd4ca2339daa94782` |
| 4 | `lemma` | [HasExactLimitsOfShape.domain_of_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-domain-of-functor--9638c341c15e20d58255896c.md) | 112 | `result-track:9638c341c15e20d58255896ce591a1e3e4354ade6071e81f68accb9f7a902743` |
| 5 | `lemma` | [HasExactColimitsOfShape.of_domain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-of-domain-equivalence--3a7040a0e879cc50656c37cf.md) | 137 | `result-track:3a7040a0e879cc50656c37cfb0485881bfb267ea98a39faa3cc6332ffe6f4979` |
| 6 | `lemma` | [HasExactColimitsOfShape.of_codomain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-of-codomain-equivalence--01c45cd7f4df6cd8e69f4919.md) | 145 | `result-track:01c45cd7f4df6cd8e69f4919e8ea6749eba135814b79664f8ba0a05b8e8a5c66` |
| 7 | `lemma` | [HasExactLimitsOfShape.of_domain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-of-domain-equivalence--a5744d66d17de07abbb85b80.md) | 161 | `result-track:a5744d66d17de07abbb85b80d32f5c708e56e30e9a8251d57c2aea056400f3bd` |
| 8 | `lemma` | [HasExactLimitsOfShape.of_codomain_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-of-codomain-equivalence--b7e4646fb37c1055db20d139.md) | 169 | `result-track:b7e4646fb37c1055db20d13993e69f1d819ec4ecf032b35e9fae175563585ad6` |
| 9 | `lemma` | [hasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape--a28bfd452f62a50cccee9004.md) | 186 | `result-track:a28bfd452f62a50cccee90041f5ce934bb528f3203a4e92fc6d71d90761c90f1` |
| 10 | `lemma` | [hasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape--da8af6381b98e7d6bb098a02.md) | 203 | `result-track:da8af6381b98e7d6bb098a02449ba12e16eb8148710b579ed52f45143e298872` |
| 11 | `class` | [AB4OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4ofsize--c2c51825b34e8af36ee3236c.md) | 225 | `declaration-track:c2c51825b34e8af36ee3236c0ef1360f25e671fb9d8ca47a815d0755ed4e262b` |
| 12 | `abbrev` | [AB4](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4--e93cc1eaddf2dbea29a2ac6a.md) | 235 | `declaration-track:e93cc1eaddf2dbea29a2ac6a8f36ca2074b6355197e2dfbe2ecb52f22904f677` |
| 13 | `lemma` | [AB4OfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4ofsize-shrink--84dae1f890c3968cb682062b.md) | 237 | `result-track:84dae1f890c3968cb682062b43b890ea404f2c6c2fd52bbea410484b9d1a218c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/instance--006257855c3f9acca8247c4c.md) | 244 | `declaration-track:006257855c3f9acca8247c4ca881d86948eb93453c7be01b3f6acc91db9def6b` |
| 15 | `class` | [AB4StarOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4starofsize--c4b3757583c3c85f2b8c99df.md) | 251 | `declaration-track:c4b3757583c3c85f2b8c99df9e58c47a33f69fcd59ca3b33bc090d8778e38877` |
| 16 | `abbrev` | [AB4Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4star--0c5f4d3fe4fac03b6f1f4d08.md) | 258 | `declaration-track:0c5f4d3fe4fac03b6f1f4d080a572740be96b1fad06925335a6310ee76b36704` |
| 17 | `lemma` | [AB4StarOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4starofsize-shrink--7474029245da04452bb315f9.md) | 260 | `result-track:7474029245da04452bb315f92fb33b02c783c70fe1ff05c45fef8fc05a5a762d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/instance--f757366a21d2fbabd569a695.md) | 267 | `declaration-track:f757366a21d2fbabd569a6957fb2c9267f7d7d9dbda69100a063132e1577a5c4` |
| 19 | `class` | [CountableAB4](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4--6311a2da1587226b73ad53e8.md) | 275 | `declaration-track:6311a2da1587226b73ad53e8968a04c1c05b85f341b273b14d921226f4f74046` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/instance--4d1fbbf957b3f92c9715722a.md) | 278 | `declaration-track:4d1fbbf957b3f92c9715722af91af82fff0cdc54eb0ff70d784b6390db4b1c1e` |
| 21 | `class` | [CountableAB4Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4star--e3dfd5302815d33eb157c37e.md) | 285 | `declaration-track:e3dfd5302815d33eb157c37ecaec15dbb846e6e79b909328152032b71a460a1b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/instance--8bbbeca9ba8f9a3e1f4bc6d1.md) | 288 | `declaration-track:8bbbeca9ba8f9a3e1f4bc6d12e3a3029e8fd2de6aef2f1fb4276fb5f0eb25636` |
| 23 | `class` | [AB5OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5ofsize--cc0e48d2434a8ab2f6973b96.md) | 301 | `declaration-track:cc0e48d2434a8ab2f6973b96d906d49063841616fae0787a8c4d6ddc09c07e49` |
| 24 | `abbrev` | [AB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5--36ab176390b53d67204dfc45.md) | 311 | `declaration-track:36ab176390b53d67204dfc456976d49653169711372e241d212d77cbedb203b6` |
| 25 | `lemma` | [AB5OfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5ofsize-of-univle--f9bb5b05a0ac15c8b2e6d165.md) | 313 | `result-track:f9bb5b05a0ac15c8b2e6d165d37862f09f7b47ca8dbf535b4e60946bf0df24c3` |
| 26 | `lemma` | [AB5OfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5ofsize-shrink--e8a78f21dae50ac0159d979d.md) | 325 | `result-track:e8a78f21dae50ac0159d979d005cc536bd7873901d0c3d4371448b4a7c81e292` |
| 27 | `class` | [AB5StarOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5starofsize--587cdbcc8376ea7bf7851804.md) | 336 | `declaration-track:587cdbcc8376ea7bf7851804aaf547ee5ec0da003559debdfe431d841c4fd6b7` |
| 28 | `abbrev` | [AB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5star--31badc90d4f2ef112bc7150a.md) | 345 | `declaration-track:31badc90d4f2ef112bc7150af0e0e61287abd7bd734cecd34f69a7cf2797161e` |
| 29 | `lemma` | [AB5StarOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5starofsize-of-univle--7fac619dbc58c31cb2f4b629.md) | 347 | `result-track:7fac619dbc58c31cb2f4b629ee977de9c43ab87c92bde7dbbeb7043756e490e5` |
| 30 | `lemma` | [AB5StarOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab5starofsize-shrink--9b34a4ec8be09ec8871b6e6c.md) | 359 | `result-track:9b34a4ec8be09ec8871b6e6c7e0bc2c1eb60ef1eb10220c7dc48fcefa2b73a28` |
| 31 | `lemma` | [hasExactColimitsOfShape_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-of-final--b1fef827bd879e55fbc01366.md) | 366 | `result-track:b1fef827bd879e55fbc0136600e22f0ac87ddb4eba6a46587225443137d09f8e` |
| 32 | `lemma` | [hasExactLimitsOfShape_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-of-initial--70700d2e2ab3850f1bbdcdae.md) | 375 | `result-track:70700d2e2ab3850f1bbdcdae259a2af567461a72d1e7e4d9801442a595392bda` |
| 33 | `instance` | [preservesFiniteLimits_liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/preservesfinitelimits-lifttofinset--012955bea2258175521fd433.md) | 389 | `declaration-track:012955bea2258175521fd43333e901124304212aa451863a0e177d5c9a8ad4db` |
| 34 | `lemma` | [hasExactColimitsOfShape_discrete_of_hasExactColimitsOfShape_finset_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-discrete-of-hasexactcolimitsofshape-finset-discr--6da5e42af6813213d0181869.md) | 406 | `result-track:6da5e42af6813213d01818690672457429864093a85db95fd03a61f49389ad5f` |
| 35 | `lemma` | [AB4.of_AB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4-of-ab5--d100b0221e1ed0c4c3df680b.md) | 416 | `result-track:d100b0221e1ed0c4c3df680b1fb63b97cb4e2f43b518f6c2ee5f41f3c28c651f` |
| 36 | `lemma` | [CountableAB4.of_countableAB5](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4-of-countableab5--df3e0f62e72cadc2fc93284f.md) | 424 | `result-track:df3e0f62e72cadc2fc93284f15c11a3e4ced9f58970a4e4a9223332f5ebca64e` |
| 37 | `instance` | [preservesFiniteColimits_liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/preservesfinitecolimits-lifttofinset--70319a1c0e6fd397b5247ade.md) | 441 | `declaration-track:70319a1c0e6fd397b5247ade6091f5132bfd993e64dc5d1c813eece0ef1bc087` |
| 38 | `lemma` | [hasExactLimitsOfShape_discrete_of_hasExactLimitsOfShape_finset_discrete_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-discrete-of-hasexactlimitsofshape-finset-discrete--0e8a5eec7248a7dfa0bc63b5.md) | 457 | `result-track:0e8a5eec7248a7dfa0bc63b5dddf499d4a34226c8f4f7fa6f8d579460ee67865` |
| 39 | `lemma` | [AB4Star.of_AB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/ab4star-of-ab5star--28d79ddb2412347e47a5b00d.md) | 468 | `result-track:28d79ddb2412347e47a5b00d8319e9f0205dde42953994774e3e8696b98910f5` |
| 40 | `lemma` | [CountableAB4Star.of_countableAB5Star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4star-of-countableab5star--93319d281fd51d49d9948dec.md) | 476 | `result-track:93319d281fd51d49d9948dec0eae7389db8a015c58a2c0afc317ccde02262d2a` |
| 41 | `lemma` | [CountableAB4.of_hasExactColimitsOfShape_nat_and_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4-of-hasexactcolimitsofshape-nat-and-finite--6eaec912e94cb45c3be5776a.md) | 492 | `result-track:6eaec912e94cb45c3be5776a374608ff6fe8eb2455fbea773c6cf26b2f54d36d` |
| 42 | `lemma` | [CountableAB4Star.of_hasExactLimitsOfShape_nat_and_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4star-of-hasexactlimitsofshape-nat-and-finite--161c28f02ee7354edeea8935.md) | 508 | `result-track:161c28f02ee7354edeea89355e2df2d3a61f0ca86b0af9a39fa6191bc3ffec61` |
| 43 | `instance` | [hasExactColimitsOfShape_discrete_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-discrete-finite--c550c1ce9e73467b09c56c28.md) | 528 | `declaration-track:c550c1ce9e73467b09c56c287b0652e121df98bb572db4846464e6b8996d8409` |
| 44 | `instance` | [hasExactLimitsOfShape_discrete_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-discrete-finite--8df5a0653cf2a46c7bc3c1e9.md) | 532 | `declaration-track:8df5a0653cf2a46c7bc3c1e9097c17c3fedb4990836cf1dfa20b8a28eef62225` |
| 45 | `lemma` | [CountableAB4.of_hasExactColimitsOfShape_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4-of-hasexactcolimitsofshape-nat--6622d4b01eef203c6661d6b0.md) | 540 | `result-track:6622d4b01eef203c6661d6b093981e433bc6af74ade5a674e780aa398753463a` |
| 46 | `lemma` | [CountableAB4Star.of_hasExactLimitsOfShape_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/countableab4star-of-hasexactlimitsofshape-nat--6a3857ac87bc663e89d66e33.md) | 550 | `result-track:6a3857ac87bc663e89d66e33661060697636c6f7fef99d4c76aab8f80cdd180f` |
| 47 | `lemma` | [hasExactColimitsOfShape_of_preservesMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactcolimitsofshape-of-preservesmono--aadd28830ea5d1649e970e25.md) | 567 | `result-track:aadd28830ea5d1649e970e258c94b510d1861190060bd9d8d4644bcce06ed8e7` |
| 48 | `lemma` | [hasExactLimitsOfShape_of_preservesEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/declarations/hasexactlimitsofshape-of-preservesepi--c8cd57b29e3b873542c81ee1.md) | 578 | `result-track:c8cd57b29e3b873542c81ee1bfc978b40aef8f8d331beff08d25d38826e5f677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
