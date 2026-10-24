# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a401c7e79d515b20deddf4d9550ce1b2fefd013e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a401c7e79d515b20deddf4d9550ce1b2fefd013e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/instance--f558ea6190c23416eb91cd08.md) | 36 | `declaration-track:f558ea6190c23416eb91cd086995c1ea508bdf26badda4c6005a214d23507b05` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/instance--2af866f0b4d039e9fa0975b4.md) | 39 | `declaration-track:2af866f0b4d039e9fa0975b48f6bd6d1ceb728accd8c1290031bff262629f76f` |
| 3 | `def` | [toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/toalghom--0a78031982b3fd6aebf13e24.md) | 42 | `declaration-track:0a78031982b3fd6aebf13e24039d477e7488622932513b39efd63fcbac273b31` |
| 4 | `lemma` | [toAlgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/toalghom-id--c7bb57134959930e39ef3bee.md) | 49 | `result-track:c7bb57134959930e39ef3beec877d16d9d22147e7036580b8f5f36ea8b6dd549` |
| 5 | `lemma` | [toAlgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/toalghom-comp--9b4e55d1982bf11af3bd7109.md) | 52 | `result-track:9b4e55d1982bf11af3bd710972a00b08c559d4aab61739dcb9dc98ee988802fc` |
| 6 | `lemma` | [toAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/toalghom-apply--b5fd65b0f995cd85d2961b43.md) | 56 | `result-track:b5fd65b0f995cd85d2961b43c4e896b64ed473e937481294e82e2dfce56a5a67` |
| 7 | `def` | [mkUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/mkunder--5d369d28c4d134b7483fa750.md) | 63 | `declaration-track:5d369d28c4d134b7483fa7507eb6fb7bfee1a3084bef897dac50063ae2cda016` |
| 8 | `lemma` | [mkUnder_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/mkunder-ext--851aa7ccf731148e3756cd34.md) | 67 | `result-track:851aa7ccf731148e3756cd34b07bb9fa620e1531b996df34f7e8e2971b3e5947` |
| 9 | `def` | [toUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder--161f07e126ca165fc0298657.md) | 78 | `declaration-track:161f07e126ca165fc029865710e4bdd0f0f4e6faf331284bbf7437d8f035864c` |
| 10 | `lemma` | [toUnder_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder-right--281eab8045312f45dad436cc.md) | 85 | `result-track:281eab8045312f45dad436cc61c7a0a08c27004daab31f23b5d5c69854febd5b` |
| 11 | `lemma` | [toUnder_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder-comp--39d77d0d6c15122985f28468.md) | 91 | `result-track:39d77d0d6c15122985f28468e75abcfb3c14c3cbcc30b9eef1791441f2c18ea9` |
| 12 | `def` | [toUnder](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder--74cb2f83fde9737ba4641165.md) | 101 | `declaration-track:74cb2f83fde9737ba46411652e7a58738d6bdc34154b421bdee1729b19f69ba2` |
| 13 | `lemma` | [toUnder_hom_right_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder-hom-right-apply--e8d0b52e270ab146f31e548e.md) | 114 | `result-track:e8d0b52e270ab146f31e548e3d39fafe7e873617749712a340e3c78ba4de2215` |
| 14 | `lemma` | [toUnder_inv_right_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder-inv-right-apply--74c75981ee879fc0b36a9ac0.md) | 119 | `result-track:74c75981ee879fc0b36a9ac0e84dfb60eed8835912c3756331bb7c6e3e0ee555` |
| 15 | `lemma` | [toUnder_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tounder-trans--f2473524c72736ba2f5b9c9c.md) | 124 | `result-track:f2473524c72736ba2f5b9c9c6741f4f15d4b4d5ca05d5c243624d583656c06e0` |
| 16 | `def` | [tensorProd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tensorprod--ca496660a0bced713d41657f.md) | 138 | `declaration-track:ca496660a0bced713d41657fd922cb6fa52a15b43f9c76a90c58a73827a8c56d` |
| 17 | `def` | [tensorProdObjIsoPushoutObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tensorprodobjisopushoutobj--1b696635a1e0a54a0799af09.md) | 145 | `declaration-track:1b696635a1e0a54a0799af0980165120c9b551bb37331af80a35864db2a31c49` |
| 18 | `lemma` | [pushout_inl_tensorProdObjIsoPushoutObj_inv_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/pushout-inl-tensorprodobjisopushoutobj-inv-right--a5d1bb9daa044bd59fa62289.md) | 153 | `result-track:a5d1bb9daa044bd59fa622891629c0a5980ba875632e02078d1f14db706edbe5` |
| 19 | `lemma` | [pushout_inr_tensorProdObjIsoPushoutObj_inv_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/pushout-inr-tensorprodobjisopushoutobj-inv-right--7d709b0a2da204739efccad0.md) | 159 | `result-track:7d709b0a2da204739efccad067861590e01fd405cc956cdbedeca3d58ef017ee` |
| 20 | `def` | [tensorProdIsoPushout](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tensorprodisopushout--7f8c9fc933bcfae4f05d9749.md) | 167 | `declaration-track:7f8c9fc933bcfae4f05d9749912e8e960e2f93ee228b4fec594788302fb28068` |
| 21 | `lemma` | [tensorProdIsoPushout_app](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdad5664efaad66f023ee887345f451848b0fa58cfb98a443044a6aac35fcd960.lean/declarations/tensorprodisopushout-app--601087e91f53e7786f5fe5a9.md) | 182 | `result-track:601087e91f53e7786f5fe5a9746428ad3a230211757f502b4836ccf7bd0f8ad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
