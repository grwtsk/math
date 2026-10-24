# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3172bf8d21ca81b316933cbed4f0d6652152b2f3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3172bf8d21ca81b316933cbed4f0d6652152b2f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalmono--d8cb8589a81414775e66bb3d.md) | 54 | `declaration-track:d8cb8589a81414775e66bb3d0553166a0472a1914fd60a29f27198515503b3b8` |
| 2 | `def` | [equivalenceReflectsNormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/equivalencereflectsnormalmono--da70e2fcac2ec3557352266b.md) | 71 | `declaration-track:da70e2fcac2ec3557352266b50723abda380074c689165e4475febef31de458f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/instance--1b3bc8f44a35d20f74226e8d.md) | 94 | `declaration-track:1b3bc8f44a35d20f74226e8d6969908557314c44527de14f8389de40eaceb55b` |
| 4 | `def` | [NormalMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalmono-lift--0bc5cfaf4b4b9f0f8857142e.md) | 103 | `declaration-track:0bc5cfaf4b4b9f0f8857142ea05679b9c01f71ace0999bd7b9fa6614016b0976` |
| 5 | `def` | [normalOfIsPullbackSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalofispullbacksndofnormal--03cd622bc7f29b350cd3ccfc.md) | 113 | `declaration-track:03cd622bc7f29b350cd3ccfc4f3ba66c480ce135d79996ea492532e542b096d2` |
| 6 | `def` | [normalOfIsPullbackFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalofispullbackfstofnormal--6ef0214ce29366e77a21a74a.md) | 133 | `declaration-track:6ef0214ce29366e77a21a74abf9f25a78be0ae512e85cad6b4f2fbc801e898e9` |
| 7 | `class` | [NormalMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalmonocategory--a36b63fe796f9ad366a7b39b.md) | 144 | `declaration-track:a36b63fe796f9ad366a7b39bf72dbfa6f4d8f638aa15ec172aa54ddf6d97fc80` |
| 8 | `def` | [normalMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalmonoofmono--43903ec3c02270b377148103.md) | 155 | `declaration-track:43903ec3c02270b3771481030f5bf55e3bdf56a57f69a536b02ac0cd2a76419c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/instance--97c8d4b0524e512e2cee8880.md) | 159 | `declaration-track:97c8d4b0524e512e2cee88803ad75ce418c1d66e39d457402eae3ad9f83af078` |
| 10 | `class` | [NormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalepi--ef254e16791af5de58261654.md) | 173 | `declaration-track:ef254e16791af5de58261654922e6f1ce3f4bf2f3d1f4b06b05d2c93af1ea0b9` |
| 11 | `def` | [equivalenceReflectsNormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/equivalencereflectsnormalepi--7f376cfb8b50f1df483a52b0.md) | 190 | `declaration-track:7f376cfb8b50f1df483a52b01d66ac0416c3d7ed8d85559f0de33254b886d7a3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/instance--f59d600cf864f5294a61ec61.md) | 208 | `declaration-track:f59d600cf864f5294a61ec615bb9a75e4f7206de13319538768071b846289f88` |
| 13 | `def` | [NormalEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalepi-desc--781b6c7c01dd0ddf5b3112a4.md) | 217 | `declaration-track:781b6c7c01dd0ddf5b3112a480aa870706ccf939ae8fae01d22b41726149991b` |
| 14 | `def` | [normalOfIsPushoutSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalofispushoutsndofnormal--43d1a4a75e8b3b186eef6dd7.md) | 227 | `declaration-track:43d1a4a75e8b3b186eef6dd7449482adfc2f839a4658f8b8976cae3c105f8588` |
| 15 | `def` | [normalOfIsPushoutFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalofispushoutfstofnormal--c2e67cfff46135b1eb7abc4f.md) | 247 | `declaration-track:c2e67cfff46135b1eb7abc4f682163d34d3f2882f4ad9a2e30e0187f8d7bcc85` |
| 16 | `def` | [normalEpiOfNormalMonoUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalepiofnormalmonounop--c06da7dfdd711adaf920a820.md) | 260 | `declaration-track:c06da7dfdd711adaf920a820084baf4e4354fd87b5c5b4a8558e7219963c5564` |
| 17 | `def` | [normalMonoOfNormalEpiUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalmonoofnormalepiunop--49080eea189ab921df7fd36c.md) | 280 | `declaration-track:49080eea189ab921df7fd36cd484599fce57dad63b70e83daaa1ee31f5dc2ddb` |
| 18 | `class` | [NormalEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalepicategory--32535c6e02b501cf5a40fb10.md) | 304 | `declaration-track:32535c6e02b501cf5a40fb10c87a3849358f571147fe5ebf29fb89f6223e327c` |
| 19 | `def` | [normalEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/normalepiofepi--8772215b00046f3d772d357b.md) | 315 | `declaration-track:8772215b00046f3d772d357bb096738fa8697b8e5ccd5f7ddeb31bd53c0ba8c2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8902e81c0a12e8edc52e61088ea84638ac605839bc75b1d08c906ee016ab3983.lean/declarations/instance--afb52959f3013fcb803457e5.md) | 319 | `declaration-track:afb52959f3013fcb803457e5c042baef5ca18ea45e92ff804bcd5d788a225b83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
