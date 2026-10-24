# Verification target: GRWTSK.Algebra.LinearAlgebra.FinitePresentation.Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af334fb1032352966ab6ced2c4e4a9d1d87b2bbc",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af334fb1032352966ab6ced2c4e4a9d1d87b2bbc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Small.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Projective` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.FinitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation--8d034d8dca2d8b14a4da928f.md) | 73 | `declaration-track:8d034d8dca2d8b14a4da928f300b5bb2354cacf734e0fca1349dee0b6bee7026` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--bbc02e409137bc8a548fd2c6.md) | 77 | `declaration-track:bbc02e409137bc8a548fd2c68f54920afabfd560a8a1d4fd2f010a131c49a646` |
| 3 | `theorem` | [Module.FinitePresentation.exists_fin](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-exists-fin--67edd653c15b8ab2acf3b507.md) | 90 | `result-track:67edd653c15b8ab2acf3b507bc32b983fd64c7396f1a361094e15df1452d50b5` |
| 4 | `theorem` | [Module.FinitePresentation.equiv_quotient](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-equiv-quotient--262cee84b8ed53b2b3b6294e.md) | 101 | `result-track:262cee84b8ed53b2b3b6294e3e16b0135c7bf1588e34c36184f1bc9961f0ae55` |
| 5 | `lemma` | [Module.finitePresentation_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-finite--2be65092feda17748d1cc375.md) | 114 | `result-track:2be65092feda17748d1cc37535fddd2e3be4e8ea80f23c7466e24b0573d79670` |
| 6 | `lemma` | [Module.finitePresentation_iff_finite](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-iff-finite--0331ff61dc591866a9a3ed52.md) | 119 | `result-track:0331ff61dc591866a9a3ed52afef48bd34c83e9c2624816c87797b5f52522663` |
| 7 | `lemma` | [Module.finitePresentation_of_free_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-free-of-surjective--9ede8f83d0f0b82fb013d233.md) | 125 | `result-track:9ede8f83d0f0b82fb013d2336e441ecff8a99ff2e1a5483dd3a359252586ac75` |
| 8 | `lemma` | [Module.finitePresentation_of_projective](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-projective--179abc0e44867c96a7738469.md) | 158 | `result-track:179abc0e44867c96a77384698a21d8d81ef2cca197c1180949182f3ff80fa9cb` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--c198370fe402dd2ea3962fe7.md) | 169 | `declaration-track:c198370fe402dd2ea3962fe7b33a34e4482814abb0378fef7f10fe18ac8d71dd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--96d4712c64423b3d787c601d.md) | 170 | `declaration-track:96d4712c64423b3d787c601d22d82e3c9ca431d54fe6064a854c1961b3d37927` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--514f4e361c6f507e0cc72a5c.md) | 171 | `declaration-track:514f4e361c6f507e0cc72a5cf95b5866d14dbafc573fb759234e0a0d85cb786c` |
| 12 | `lemma` | [Module.finitePresentation_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-surjective--c91f34dea08b423b183eb917.md) | 173 | `result-track:c91f34dea08b423b183eb9172a8a995d7a19f9a3346255931db8a3e1791c6732` |
| 13 | `lemma` | [Module.FinitePresentation.fg_ker](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-fg-ker--d3c2c1e8cd29768f358b3482.md) | 191 | `result-track:d3c2c1e8cd29768f358b34822f01862a6dfc82e411c46c60de939d33f2be58d5` |
| 14 | `lemma` | [Module.FinitePresentation.fg_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-fg-ker-iff--49d65fba3352b9052bd7f4e6.md) | 215 | `result-track:49d65fba3352b9052bd7f4e6201592a1849d9ebcf0a92f50c32e4cc3e9df21eb` |
| 15 | `lemma` | [Module.finitePresentation_of_ker](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-ker--a53a6b2d2067c9ae866f4a88.md) | 220 | `result-track:a53a6b2d2067c9ae866f4a88a4dfa3a7f3cfab9bf646219e7dc9fa91ee6c3432` |
| 16 | `lemma` | [Module.finitePresentation_of_split_exact](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-split-exact--d9916fdc0b0e085518b4829c.md) | 254 | `result-track:d9916fdc0b0e085518b4829ce6af0371ab8852213da1548de8be5625cff2f486` |
| 17 | `lemma` | [Module.finitePresentation_of_projective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-projective-of-exact--30cfa071d7d813b2735b3d4f.md) | 272 | `result-track:30cfa071d7d813b2735b3d4fccfd532cfc8ba60f05b47e53231b6ee5044a44ea` |
| 18 | `lemma` | [Module.FinitePresentation.of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-of-equiv--a76db570991b9404503a481d.md) | 281 | `result-track:a76db570991b9404503a481dada255beeaacc074ac5e8f0d3ee9366db3a65327` |
| 19 | `lemma` | [LinearEquiv.finitePresentation_iff](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/linearequiv-finitepresentation-iff--8ceebd65d4056120385bc8ef.md) | 285 | `result-track:8ceebd65d4056120385bc8ef966d460545f8d413d9c9b7fbbae29abe0d7a5ac8` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--9ae7e64aa51d54d5149eec23.md) | 292 | `declaration-track:9ae7e64aa51d54d5149eec2386c6562671d4f08971aebc802f88c7c64a4f2530` |
| 21 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/prod--e11b733c8bbc8781d89846ce.md) | 297 | `declaration-track:e11b733c8bbc8781d89846cef3b78d0df56ff9f55909f0940dab9e4e8c58c4af` |
| 22 | `instance` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/pi--b6cc6375bb0cb29dc5df2355.md) | 305 | `declaration-track:b6cc6375bb0cb29dc5df23555e1773dfd30afafd350ac86c873d081cddf7d18c` |
| 23 | `lemma` | [Module.FinitePresentation.trans](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-trans--f58cbf5be5be9ad9d1e9e249.md) | 326 | `result-track:f58cbf5be5be9ad9d1e9e249a2d87dc134fda0de5fe92341aa76a90977bbec77` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--cd7ffd08de22b14f5d37ac04.md) | 342 | `declaration-track:cd7ffd08de22b14f5d37ac04596f36be845636ef4aa93bd5dccfcd74caf3a0d0` |
| 25 | `lemma` | [FinitePresentation.of_isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/finitepresentation-of-isbasechange--7fbe644a297d903310ccda03.md) | 359 | `result-track:7fbe644a297d903310ccda03573d36dcbc1337e62e6abde984707c164a86119d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--b95c829df53254d499d1fa06.md) | 367 | `declaration-track:b95c829df53254d499d1fa069e4327e184fe15a9a1db192f1502bc35bb5958ec` |
| 27 | `lemma` | [Module.FinitePresentation.exists_lift_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-exists-lift-of-islocalizedmodule--91db76a5769204b512055162.md) | 372 | `result-track:91db76a5769204b512055162320d51f628510e7d1b2a7245c5fccb38caa3db98` |
| 28 | `lemma` | [Module.Finite.exists_smul_of_comp_eq_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finite-exists-smul-of-comp-eq-of-islocalizedmodule--ccc5cce4e1fb9cc0a7a27c80.md) | 423 | `result-track:ccc5cce4e1fb9cc0a7a27c8007457f9907abd8a6561846894dbb5a9c6110796d` |
| 29 | `lemma` | [exists_bijective_map_powers](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/exists-bijective-map-powers--04cb132371d8235cd901653e.md) | 445 | `result-track:04cb132371d8235cd901653e74d5c2ab46a1d0da903a4586f3c62ead340dfb2b` |
| 30 | `lemma` | [Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-exists-lift-equiv-of-islocalizedmodule--d621042430e644c13ea6ee87.md) | 508 | `result-track:d621042430e644c13ea6ee87242855976ead00e3e5a2135c017f02038f63cc70` |
| 31 | `instance` | [Module.FinitePresentation.isLocalizedModule_map](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-islocalizedmodule-map--45c06f8c099a515cde89e25c.md) | 551 | `declaration-track:45c06f8c099a515cde89e25c0bb2e2b232d9e5dd06f4975e8b3babfdd1030309` |
| 32 | `instance` | [Module.FinitePresentation.isLocalizedModule_mapExtendScalars](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-islocalizedmodule-mapextendscalars--6180e6122f1b8512d0eee6b5.md) | 574 | `declaration-track:6180e6122f1b8512d0eee6b549fcc10ee85af21e9f651d7be9438b88565f3d91` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/instance--bb7396740cb2cd2f58a36267.md) | 581 | `declaration-track:bb7396740cb2cd2f58a362670c27fd2b2939ea28fd314dcd55163d44a9745516` |
| 34 | `def` | [Module.FinitePresentation.linearEquivMap](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmap--aab1fbe9f0614e9dfdb9caed.md) | 590 | `declaration-track:aab1fbe9f0614e9dfdb9caede1a6d8cb53e5155d4d6e21941554b2071c03db37` |
| 35 | `lemma` | [Module.FinitePresentation.linearEquivMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmap-apply--2190002a2831d56e00699c98.md) | 594 | `result-track:2190002a2831d56e00699c98cadd952ec2130aeaeaaa363d0b98ed1965575c87` |
| 36 | `lemma` | [Module.FinitePresentation.linearEquivMap_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmap-symm-apply--6416910593f8537381746ea5.md) | 601 | `result-track:6416910593f8537381746ea5d9bc609b98ddfade7a538b8faebcf62f6224d485` |
| 37 | `def` | [Module.FinitePresentation.linearEquivMapExtendScalars](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmapextendscalars--3ab048ac2ca133f7663ada59.md) | 612 | `declaration-track:3ab048ac2ca133f7663ada5908fc9d920d71d8b5b25809e992e7c9946e97e4d2` |
| 38 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_apply](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmapextendscalars-apply--8fb57d331b7c052c7bcf19a2.md) | 618 | `result-track:8fb57d331b7c052c7bcf19a25d3ddd4dff3f895683b486765dc615b9b9d2ccda` |
| 39 | `lemma` | [Module.FinitePresentation.linearEquivMapExtendScalars_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/declarations/module-finitepresentation-linearequivmapextendscalars-symm-apply--a64e284f9622e5f8dd582ee3.md) | 625 | `result-track:a64e284f9622e5f8dd582ee3438e23aeb889090c962b70d7b9ed7ed8c5aea7be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
