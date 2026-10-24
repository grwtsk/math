# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f80f4aac87eaf9503ad81fdbb9102d50c20f2b86",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f80f4aac87eaf9503ad81fdbb9102d50c20f2b86`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean.json)

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
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian--22481d6f40346e227fd073bd.md) | 62 | `declaration-track:22481d6f40346e227fd073bd1529cbfea0e1fcc17a022e4f430f89801105f4a8` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-def--489cf0725e6242dc0d9949cd.md) | 76 | `result-track:489cf0725e6242dc0d9949cd610cea6af4407a90d12bb77bb66b09bf47f66f59` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-submodule--68083183a1be734c7e42359b.md) | 79 | `result-track:68083183a1be734c7e42359b6a9e3a9399c609b1844d20dc2d488ceb44214c6a` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-submodule-left--f99aa6b6fcaa43f293ac0668.md) | 88 | `result-track:f99aa6b6fcaa43f293ac06689ef1817456c6d7affb39130e73a003d96f15b161` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-submodule-right--9692defb012c90d5372746e6.md) | 92 | `result-track:9692defb012c90d5372746e68a7bf1b8f170fcd0e6f65852213d3e4d47fe316b` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-submodule--e3a3e84b4f17bf94b48c4f6a.md) | 96 | `declaration-track:e3a3e84b4f17bf94b48c4f6a83a8796a23bccc5b888741b758f233ac3bd3f3a4` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-of-le--97b0f36258279153cc63bdfb.md) | 99 | `result-track:97b0f36258279153cc63bdfbe42c23577176514e1e84c355db87880a2ade5f0d` |
| 8 | `theorem` | [isNoetherian_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-iff--4d88611b278a7d5a27080526.md) | 114 | `result-track:4d88611b278a7d5a270805263d9c73d009889a9ba76c7fd1f877b00831ca3fa1` |
| 9 | `instance` | [IsNoetherian.wellFoundedGT](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-wellfoundedgt--4a848f90db4a4ebdd1dda0a6.md) | 124 | `declaration-track:4a848f90db4a4ebdd1dda0a68f26e43d77a50cdbf7e997d3b65fd548163f5772` |
| 10 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherian-iff-fg-wellfounded--8946495b03ed3a8c2a9d9133.md) | 127 | `result-track:8946495b03ed3a8c2a9d913370d7049003167e4b063015c22470d02f5e2d5ad9` |
| 11 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/set-has-maximal-iff-noetherian--377d361d8914f5963114308f.md) | 151 | `result-track:377d361d8914f5963114308f6d3ebbf42ff8885ce99d02a334298f24f24d0f6a` |
| 12 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/monotone-stabilizes-iff-noetherian--954e17c495ea2c744b41ef84.md) | 156 | `result-track:954e17c495ea2c744b41ef84dfd08f7b57fb731add2e03bd40cb2f2c9061a65f` |
| 13 | `theorem` | [Module.End.eventually_disjoint_ker_pow_range_pow](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/module-end-eventually-disjoint-ker-pow-range-pow--c5813697f52718f1a2514f5d.md) | 165 | `result-track:c5813697f52718f1a2514f5dd896382ea56204eee119a2a5e49936f6899a0538` |
| 14 | `lemma` | [LinearMap.eventually_iSup_ker_pow_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/linearmap-eventually-isup-ker-pow-eq--2869a512584e0ad0448eb2e5.md) | 177 | `result-track:2869a512584e0ad0448eb2e5f8d1836514c5ccde3e0afb9f955fce75de63151b` |
| 15 | `abbrev` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherianring--7a4f34bf30f5cf9309662313.md) | 192 | `declaration-track:7a4f34bf30f5cf9309662313fa30d793a61682ae4d6a87e4e770a103bc64c395` |
| 16 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherianring-iff--db0d2359058957d0d6f93f92.md) | 195 | `result-track:db0d2359058957d0d6f93f920a1884d376d6ce04ec54d7feb941b34832d41e04` |
| 17 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/isnoetherianring-iff-ideal-fg--3c44e3bc5d2ee571125451ee.md) | 199 | `result-track:3c44e3bc5d2ee571125451eef374aee63396d63ab51f3e2381af0eebcf404344` |
| 18 | `lemma` | [Ideal.fg_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/declarations/ideal-fg-of-isnoetherianring--53554f96abeae60d9eeed67f.md) | 203 | `result-track:53554f96abeae60d9eeed67ff68afa12efa9d413d7fb2ddf854ccc9143f5cbc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
