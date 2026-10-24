# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c31826af01923fe4a837bced23dae425ba132592",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c31826af01923fe4a837bced23dae425ba132592`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPushout.IsVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen--b0986841bb8702a31cf2bbeb.md) | 65 | `declaration-track:b0986841bb8702a31cf2bbeb6ebd9a88d5d9992390fc0666cb0b9ffd02a1733d` |
| 2 | `theorem` | [IsPushout.IsVanKampen.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-flip--40f59dbe0b756163c1da00f5.md) | 72 | `result-track:40f59dbe0b756163c1da00f5bbf2c765fbd2fc9a5abb1c8f6c2c1c01cc253081` |
| 3 | `theorem` | [IsPushout.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-iff--b073e78c669530e3d163ab29.md) | 79 | `result-track:b073e78c669530e3d163ab29c7c3276dea53c81a43fe893fdf4a316024999271` |
| 4 | `theorem` | [is_coprod_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/is-coprod-iff-ispushout--12aacda554e5ef4965f91b4b.md) | 126 | `result-track:12aacda554e5ef4965f91b4bd5976dec7d583fe11725fe74d73ec0d6a0977609` |
| 5 | `theorem` | [IsPushout.isVanKampen_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-inl--6f2e020404879b7d0dc81b1b.md) | 159 | `result-track:6f2e020404879b7d0dc81b1b5882c7ac2f63b0db79e34139c47b4b2fae89d0a1` |
| 6 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-ispullback-of-mono-left--61b5e55a2a800f91745ce5e3.md) | 199 | `result-track:61b5e55a2a800f91745ce5e34feafe0fec9939bddd8c16094c432738eab1a51e` |
| 7 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-ispullback-of-mono-right--06f579c32d6ed3ae267dbcb7.md) | 206 | `result-track:06f579c32d6ed3ae267dbcb7caf68412d05ecc2c7d7566c1155272db2ad01739` |
| 8 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-mono-of-mono-left--d8a9c6255341e76f2f771358.md) | 213 | `result-track:d8a9c6255341e76f2f7713584f3a79696834e3122c6798991134369211138118` |
| 9 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/ispushout-isvankampen-mono-of-mono-right--e25013fc455d104e5458d002.md) | 221 | `result-track:e25013fc455d104e5458d0020e77d8ce659a98edcd8ac0a664bc3c7ef1b18788` |
| 10 | `class` | [Adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive--beb57bca0dbc67c4909d529f.md) | 231 | `declaration-track:beb57bca0dbc67c4909d529ffc94309d3fa159b1dd7cdb15934835df34195f0d` |
| 11 | `theorem` | [Adhesive.van_kampen'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive-van-kampen--cee87f23a6cc43d34c2caa2e.md) | 240 | `result-track:cee87f23a6cc43d34c2caa2ed55048c36234205895ac49877c11b3cea6375d4c` |
| 12 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-left--208eeff996e078c66a9632ba.md) | 244 | `result-track:208eeff996e078c66a9632ba78964ecdbcf4f16bdb481d76e9ac257e421c03c9` |
| 13 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-right--d70729f1f2de3fad6dda1133.md) | 249 | `result-track:d70729f1f2de3fad6dda113369265f3b8c8e7d30c90782bc9d9cfa472699f72e` |
| 14 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive-mono-of-ispushout-of-mono-left--6900b79e9a567a95fa9bf55f.md) | 254 | `result-track:6900b79e9a567a95fa9bf55fc9f94761cdf04bf596283cdb10ae7f241c335060` |
| 15 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/adhesive-mono-of-ispushout-of-mono-right--c38561bd65135f73eb79c366.md) | 259 | `result-track:c38561bd65135f73eb79c366eeb6206b26346015d10eaf6ccf1a28072b0bd74e` |
| 16 | `instance` | [Type.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/type-adhesive--138f6679e6471199923b4811.md) | 264 | `declaration-track:138f6679e6471199923b4811e74a758724ef49f22aea9d065de7a67f270dd3f7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/instance--9bbc73c2c80155ce2db5f3f0.md) | 269 | `declaration-track:9bbc73c2c80155ce2db5f3f0a1a5927933636ce2d78db637908193058e56f8c3` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variantc3d3c0ac864ba99bd939b838cc9846506147537dcbaad9360a1b1208d5b1f59c.lean/declarations/example--27a5b8aa120ebafc1231e8ef.md) | 281 | `declaration-track:27a5b8aa120ebafc1231e8ef9e3b47705bc2870a3bf2ecfb457527ff49a08a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
