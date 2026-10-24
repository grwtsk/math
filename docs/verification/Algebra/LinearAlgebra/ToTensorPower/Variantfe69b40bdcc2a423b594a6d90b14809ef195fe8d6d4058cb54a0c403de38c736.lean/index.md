# Verification target: GRWTSK.Algebra.LinearAlgebra.ToTensorPower.Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/totensoralgebra--f6cd2ab472011ae4f853a035.md) | 34 | `declaration-track:f6cd2ab472011ae4f853a035678fa3b81649bad6278d1b265d34a5c8433f87ca` |
| 2 | `theorem` | [toTensorAlgebra_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/totensoralgebra-tprod--b904284a86a444c651f2a3f3.md) | 39 | `result-track:b904284a86a444c651f2a3f3d1ade1aed0ff436d408326896eb341909b63fa2c` |
| 3 | `theorem` | [toTensorAlgebra_gOne](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/totensoralgebra-gone--37cd71e29ea58b90eb2f457d.md) | 45 | `result-track:37cd71e29ea58b90eb2f457d0d970f72693f0ecae3ecc0bee055917e97fd9c68` |
| 4 | `theorem` | [toTensorAlgebra_gMul](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/totensoralgebra-gmul--a339e2e8dd725be20e95e533.md) | 51 | `result-track:a339e2e8dd725be20e95e533a8741c31176cc5a1d46d219a63f199d8d8cff809` |
| 5 | `theorem` | [toTensorAlgebra_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/totensoralgebra-galgebra-tofun--e734436ed563243ca058a00b.md) | 76 | `result-track:e734436ed563243ca058a00bdfa3c5151220bad7f7e35c74a0ade0c9218f7a35` |
| 6 | `def` | [ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/ofdirectsum--a044fd584acd8593ef533a86.md) | 88 | `declaration-track:a044fd584acd8593ef533a86969665dd6589de3ecbe132505ae7031bf9a3ae60` |
| 7 | `theorem` | [ofDirectSum_of_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/ofdirectsum-of-tprod--1a20697a18d9b9b86db9e3b8.md) | 94 | `result-track:1a20697a18d9b9b86db9e3b8c332dbce6d13fc51f1a8d1e267a6ad137b753ba0` |
| 8 | `def` | [toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/todirectsum--6497b0939462fc04af0f98c3.md) | 102 | `declaration-track:6497b0939462fc04af0f98c3d0795164f443f213349c1742137dc3da396701cb` |
| 9 | `theorem` | [toDirectSum_ι](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/todirectsum--f3b4178e9a59c168761bd3f1.md) | 109 | `result-track:f3b4178e9a59c168761bd3f1de1907ccf37f0fc56529ea51044058278400a47e` |
| 10 | `theorem` | [ofDirectSum_comp_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/ofdirectsum-comp-todirectsum--a61ef68348b15675164dc1de.md) | 115 | `result-track:a61ef68348b15675164dc1de85fed29e3294a9a5c91b080d5ff0d51bffcf4612` |
| 11 | `theorem` | [ofDirectSum_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/ofdirectsum-todirectsum--1b09d9dff7804e828038b722.md) | 122 | `result-track:1b09d9dff7804e828038b7227ed167e9f2bf8b95899c1e3ddede9560c831bab5` |
| 12 | `theorem` | [mk_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/mk-reindex-cast--d9eac776355c050e01a66a5b.md) | 128 | `result-track:d9eac776355c050e01a66a5b72ca9020999f7ebc82c4f00cda9acadb16a5196d` |
| 13 | `theorem` | [mk_reindex_fin_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/mk-reindex-fin-cast--bf9e8a2097d256f2f9ceb9b7.md) | 136 | `result-track:bf9e8a2097d256f2f9ceb9b724a1ef2e6bc95c4d4c8ede7e26afb535c15a5096` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToTensorAlgebra.Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.TensorPower.list_prod_gradedMonoid_mk_single](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/root-grwtsk-algebra-linearalgebra-totensoralgebra-variantda2c2d0c926dd7f--e6431b9dd2f3c9834ce78096.md) | 144 | `result-track:e6431b9dd2f3c9834ce7809696ac06cefa01edc46cac552ae777f9abdd64f60e` |
| 15 | `theorem` | [toDirectSum_tensorPower_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/todirectsum-tensorpower-tprod--94f2307a6a85f6f62f6fdabb.md) | 163 | `result-track:94f2307a6a85f6f62f6fdabba414a50e46fe678e29c3151fa4230f55c88db85f` |
| 16 | `theorem` | [toDirectSum_comp_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/todirectsum-comp-ofdirectsum--e4545d06d020ada62621920d.md) | 173 | `result-track:e4545d06d020ada62621920de34bc4bc6b7df5c2a4f3b001176da8904e22adc6` |
| 17 | `theorem` | [toDirectSum_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/todirectsum-ofdirectsum--5053200dfb52bd9c42f6d66c.md) | 180 | `result-track:5053200dfb52bd9c42f6d66c2f38a9323dd31adc34e9ecb6a6e165d0e92fe798` |
| 18 | `def` | [equivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/declarations/equivdirectsum--399a2290f3ef53c691b4fbec.md) | 187 | `declaration-track:399a2290f3ef53c691b4fbec8a1d3de8e52e6df74492fddb66655c63582f9a20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
