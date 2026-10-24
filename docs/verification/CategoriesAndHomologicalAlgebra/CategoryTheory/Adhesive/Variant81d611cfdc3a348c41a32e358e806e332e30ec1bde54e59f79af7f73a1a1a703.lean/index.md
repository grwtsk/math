# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adhesive.Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "359481872780845c029f738342224ea56b3781a4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `359481872780845c029f738342224ea56b3781a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Extensive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPushout.IsVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen--4b456bab7689d13b128d2554.md) | 57 | `declaration-track:4b456bab7689d13b128d2554ae977e4e01262e4f63c1ad6b3400d417413219da` |
| 2 | `theorem` | [IsPushout.IsVanKampen.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-flip--dadd12a4d501ded3c85d15a8.md) | 64 | `result-track:dadd12a4d501ded3c85d15a83edd0d4045a6b014e166a075a5295d9aba4f415e` |
| 3 | `theorem` | [IsPushout.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-iff--87df9c07b9bce38dc1d6d5a0.md) | 71 | `result-track:87df9c07b9bce38dc1d6d5a09f2f9153e27a29838f9e88f44ab17b3752d548a4` |
| 4 | `theorem` | [is_coprod_iff_isPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/is-coprod-iff-ispushout--5888208a2e39d384710cd3af.md) | 118 | `result-track:5888208a2e39d384710cd3af15e33213a26b2b8be4ec0430375938eaa3c3cd83` |
| 5 | `theorem` | [IsPushout.isVanKampen_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-inl--cf58f1cdd8a9cca67461ef3a.md) | 151 | `result-track:cf58f1cdd8a9cca67461ef3a9794088d218e499dee0ede833115d27c61a52601` |
| 6 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-ispullback-of-mono-left--2c1bc9cc7ae75df72d51d205.md) | 191 | `result-track:2c1bc9cc7ae75df72d51d205582157841929843ad9ef38fa00801c2403dbcb5d` |
| 7 | `theorem` | [IsPushout.IsVanKampen.isPullback_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-ispullback-of-mono-right--8b397a4930b35b02c3498416.md) | 198 | `result-track:8b397a4930b35b02c3498416c89623aedb3ed433164fe610a053e170be1a1d6b` |
| 8 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-mono-of-mono-left--95621586a6c8aba18a25bc17.md) | 205 | `result-track:95621586a6c8aba18a25bc175bb7c136930fb67e814391333faf3b1394a67e7a` |
| 9 | `theorem` | [IsPushout.IsVanKampen.mono_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/ispushout-isvankampen-mono-of-mono-right--a7fb73c95facb1716cfae75b.md) | 213 | `result-track:a7fb73c95facb1716cfae75bcad2724f8af4782ee86328d3525272731105a978` |
| 10 | `class` | [Adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive--951b701158e8f8d567849e54.md) | 223 | `declaration-track:951b701158e8f8d567849e5461ef06dfff42a4982b837f0ff1c62eb9772e0537` |
| 11 | `theorem` | [Adhesive.van_kampen'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive-van-kampen--d2a80959f84fc9f4b3d8c452.md) | 232 | `result-track:d2a80959f84fc9f4b3d8c452a212989cdb7e8412cfee3da943ca81f5c8170308` |
| 12 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-left--885a62406ad3bfe265c95191.md) | 236 | `result-track:885a62406ad3bfe265c95191da02837a8db5ad8321e3d9f70d3d11d96ddadd32` |
| 13 | `theorem` | [Adhesive.isPullback_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive-ispullback-of-ispushout-of-mono-right--6855b846a16c72013a0f37b8.md) | 241 | `result-track:6855b846a16c72013a0f37b84ca5b41c8a2def95eb801af5fb4b33b8ff930bd4` |
| 14 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive-mono-of-ispushout-of-mono-left--871e3a75517c7925cc1a2e1c.md) | 246 | `result-track:871e3a75517c7925cc1a2e1cdec950505d95fd4899055a3cccb1f29f3304e92c` |
| 15 | `theorem` | [Adhesive.mono_of_isPushout_of_mono_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/adhesive-mono-of-ispushout-of-mono-right--cf38f5f2398bc08ffa210278.md) | 251 | `result-track:cf38f5f2398bc08ffa21027869e40fe1b288bed9f047bdedd07dd749ba7c1d20` |
| 16 | `instance` | [Type.adhesive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/type-adhesive--f1d8f34ec896665cb2e11803.md) | 256 | `declaration-track:f1d8f34ec896665cb2e11803c2657b8f886eedd54f1bb8fcc5428336c520be88` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/instance--54fcfce7dcdb6027631d44b3.md) | 261 | `declaration-track:54fcfce7dcdb6027631d44b30302591d045a46435c1f28a69e9dd961e8c55f2c` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant81d611cfdc3a348c41a32e358e806e332e30ec1bde54e59f79af7f73a1a1a703.lean/declarations/example--cd324e1f4e853af59fc02499.md) | 273 | `declaration-track:cd324e1f4e853af59fc024999a998b9c0e6361549301c89b428d081a96994cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
