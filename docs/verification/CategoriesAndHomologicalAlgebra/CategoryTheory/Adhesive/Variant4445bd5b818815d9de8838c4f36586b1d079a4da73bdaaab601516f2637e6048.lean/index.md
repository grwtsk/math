# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "740a925edc2384e31d13dc643bdf05f289d3a752",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `740a925edc2384e31d13dc643bdf05f289d3a752`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPushout.IsVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen--dd26dce952d9ab7f1e9fc23b.md) | 59 | `declaration-track:dd26dce952d9ab7f1e9fc23b6b1ef67f796754b5af1c85441e7a365290254ab9` |
| 2 | `theorem` | [IsPushout.IsVanKampen.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-flip--c8b5c43f80304152dcfe82b5.md) | 65 | `result-track:c8b5c43f80304152dcfe82b53cc3075e255142199d6ef8694bca985aafa5d72d` |
| 3 | `theorem` | [IsPushout.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-iff--c2c3bd35cf11b4c213d99352.md) | 71 | `result-track:c2c3bd35cf11b4c213d99352bae57cbda6f734b623e42f7c3529271244babdbd` |
| 4 | `theorem` | [is_coprod_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/is-coprod-iff-ispushout--ecd9ef2ea8c957ea69817b48.md) | 120 | `result-track:ecd9ef2ea8c957ea69817b48d442b320f9feda562e9450bba55dfc5dda74afb6` |
| 5 | `theorem` | [IsPushout.isVanKampen_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-inl--5eb219c964d8c7152b8e5e16.md) | 158 | `result-track:5eb219c964d8c7152b8e5e167730d11453d95a7754a2e944045efd498b00899c` |
| 6 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-ispullback-of-mono-left--1692e81791dba77e1755366f.md) | 198 | `result-track:1692e81791dba77e1755366f0154b7311ca481d2f0fbc1164d2d73d13a448e17` |
| 7 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-ispullback-of-mono-right--d916400474d3b69e6db0b359.md) | 204 | `result-track:d916400474d3b69e6db0b3594ed193323f80482785f321eb4a6c07cd1fb587e5` |
| 8 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-mono-of-mono-left--ad4232ccabd45d41fd6e31ab.md) | 210 | `result-track:ad4232ccabd45d41fd6e31abc35022b00ce99dbe382c55de2184a45832a3011b` |
| 9 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/ispushout-isvankampen-mono-of-mono-right--a2a11fc552ec87050f3ef3b2.md) | 217 | `result-track:a2a11fc552ec87050f3ef3b2cae099e96a1449fdade11c7eb30dd978d18ea6c6` |
| 10 | `class` | [Adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive--21d7a30d1eebc51619c3ef99.md) | 226 | `declaration-track:21d7a30d1eebc51619c3ef9957e55431b1c9f23dc66650f17c910acea3fbe27b` |
| 11 | `theorem` | [Adhesive.van_kampen'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-van-kampen--a2c7ee35a60f2635a346fc41.md) | 234 | `result-track:a2c7ee35a60f2635a346fc41014ed43d06d69d5ed3179eb3a89e996b4f6ef470` |
| 12 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-left--0455d67f013ef4c75d8931e0.md) | 237 | `result-track:0455d67f013ef4c75d8931e003f9aaf01dd9e116b8c25caa4bdc6fc2b9822b40` |
| 13 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-right--f729cf442f7075e7415c7f71.md) | 241 | `result-track:f729cf442f7075e7415c7f717ad1cf663d248c5db50216685273d764981396cb` |
| 14 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-mono-of-ispushout-of-mono-left--66b9bcdfbc459431b74eec32.md) | 245 | `result-track:66b9bcdfbc459431b74eec323c3311f407c01ad7a85eb40fcfee02ae8509a86d` |
| 15 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-mono-of-ispushout-of-mono-right--a039000672aac4fe154330f3.md) | 249 | `result-track:a039000672aac4fe154330f3ea96588839a65db056a3e82ca43b0ea6af9d7ab0` |
| 16 | `instance` | [Type.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/type-adhesive--40697117e49141ad3093dee6.md) | 253 | `declaration-track:40697117e49141ad3093dee6b78400885bfef53d5a3b6bedabe91a500eaac29e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/instance--47c9b7a0d3d05666981dc588.md) | 257 | `declaration-track:47c9b7a0d3d05666981dc5886647f2edd1de95db01565e79b613f3c16195417a` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/example--877046a22c836eb3ca30cf7b.md) | 268 | `declaration-track:877046a22c836eb3ca30cf7b5657008925ad8f9c3561ba6d7c6cee82dc2a750f` |
| 19 | `instance` | [adhesive_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-functor--3f33d9b4a0d99fbceb778f36.md) | 277 | `declaration-track:3f33d9b4a0d99fbceb778f36e85ec1af2a086af7e5266ced87cccf9eafd21630` |
| 20 | `theorem` | [adhesive_of_preserves_and_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-of-preserves-and-reflects--c5366819717c12164fb62fb5.md) | 289 | `result-track:c5366819717c12164fb62fb59ef15d06ebc46d5d8facca2f8b8cf64422b06b5e` |
| 21 | `theorem` | [adhesive_of_preserves_and_reflects_isomorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-of-preserves-and-reflects-isomorphism--bd9801b0ee4d9aa5169327e0.md) | 306 | `result-track:bd9801b0ee4d9aa5169327e0cd365efd5b2a652669d719bd2ce8c51bfb313915` |
| 22 | `theorem` | [adhesive_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant4445bd5b818815d9de8838c4f36586b1d079a4da73bdaaab601516f2637e6048.lean/declarations/adhesive-of-reflective--0dcc2cfedc4c0961eabb54ce.md) | 318 | `result-track:0dcc2cfedc4c0961eabb54ce5d06815d48f867b7e3893d643e048a1e18e466bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
