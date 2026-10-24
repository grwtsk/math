# Verification target: GRWTSK.Algebra.UniversalAlgebra.CentroidHom.Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821f79fc85719a936fb1a6788f3424f278385b98",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821f79fc85719a936fb1a6788f3424f278385b98`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CentroidHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarRingHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subsemiring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/instance--4ed07cedd9b8749dacde50c1.md) | 40 | `declaration-track:4ed07cedd9b8749dacde50c1b70ddcba0cfad649d8ee6803d9e41e74781808b8` |
| 2 | `lemma` | [star_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/star-apply--890a541bbf644b11b3269060.md) | 49 | `result-track:890a541bbf644b11b32690607f2d337cd79aaaaf744c2fb2da9b520469d88be0` |
| 3 | `instance` | [instStarAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/inststaraddmonoid--c7e3c4fadad82ac7a3660a0b.md) | 51 | `declaration-track:c7e3c4fadad82ac7a3660a0bd719c99da2b203b7ca3014b45eec9257e1c968b2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/instance--cec0f00b39b38f5841a67d48.md) | 56 | `declaration-track:cec0f00b39b38f5841a67d48c205a1c4ebaba384ae584de09673859b9dbe81e4` |
| 5 | `instance` | [instStarAddMonoidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/inststaraddmonoidcenter--2012fc73b3f4654e1ae44100.md) | 65 | `declaration-track:2012fc73b3f4654e1ae441004b645e8a04aa84ecc61d80d294bfdb70636f101c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/instance--4b3ba14bde7bfc86b704d4ff.md) | 69 | `declaration-track:4b3ba14bde7bfc86b704d4ff58df4552deba10c1755ef8859d075c247fdd2caf` |
| 7 | `def` | [centerStarEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/centerstarembedding--fa2a19486d61a4fae06f1d3d.md) | 80 | `declaration-track:fa2a19486d61a4fae06f1d3da3133539bef5e609300f71b1d3a9e8017e8107c2` |
| 8 | `theorem` | [star_centerToCentroidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/star-centertocentroidcenter--031589921bd14c28a8055def.md) | 88 | `result-track:031589921bd14c28a8055def433eeabc109cca128eb2f33abd0b5c15dac64e4e` |
| 9 | `def` | [starCenterToCentroidCenter](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcentertocentroidcenter--e750a2569c62c96174cf4d57.md) | 101 | `declaration-track:e750a2569c62c96174cf4d577da09c2cfda35405d5eca1fb263ce3eec7101c55` |
| 10 | `def` | [starCenterToCentroid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcentertocentroid--333a1095245087849fdae337.md) | 109 | `declaration-track:333a1095245087849fdae3376101171aba995626014e4a0a5eaadad39e1007a5` |
| 11 | `lemma` | [starCenterToCentroid_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcentertocentroid-apply--c21285d151845dd5cf9a26d6.md) | 112 | `result-track:c21285d151845dd5cf9a26d63b2786da488165c6882245efcb4bf10acdf02d08` |
| 12 | `def` | [starRingOfCommCentroidHom](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starringofcommcentroidhom--00440b6fb35a9a46ff4e756e.md) | 119 | `declaration-track:00440b6fb35a9a46ff4e756e51dac6af2991fd4d93c8c222577a5e3791da2882` |
| 13 | `def` | [starCenterIsoCentroid](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcenterisocentroid--a3f240897871b60d5d5b2a0a.md) | 132 | `declaration-track:a3f240897871b60d5d5b2a0a9680590c60093c626960c0bedd0c0da4f225d4cb` |
| 14 | `lemma` | [starCenterIsoCentroid_apply](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcenterisocentroid-apply--9854b1dddb608507b4390344.md) | 143 | `result-track:9854b1dddb608507b439034413cdf43531714998d0699db72e75acf93c179c1f` |
| 15 | `lemma` | [starCenterIsoCentroid_symm_apply_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CentroidHom/Variantbf1712ce592b06186d3537c9d4b9ef841373e60fad3080aa910d524d4bfc6b2b.lean/declarations/starcenterisocentroid-symm-apply-coe--330553cb19b031fbb90f797d.md) | 147 | `result-track:330553cb19b031fbb90f797d5302c0e2ed091e7b94e04a68c20343019e005fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
