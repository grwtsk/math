# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Verschiebung.Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e8c40edd2dca9873b66279d4bbf46915eddad90",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e8c40edd2dca9873b66279d4bbf46915eddad90`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungfun--4b966e76043e3b4a2c269aa5.md) | 46 | `declaration-track:4b966e76043e3b4a2c269aa559dcd00999027cf054353e4ad05eca1848d00151` |
| 2 | `theorem` | [verschiebungFun_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungfun-coeff--dd3f33626f9786432a2c87d4.md) | 50 | `result-track:dd3f33626f9786432a2c87d47dd215991abb52b42f7f8a6345a3115835db2dc1` |
| 3 | `theorem` | [verschiebungFun_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungfun-coeff-zero--aae2063c9c41468ebeecbe29.md) | 55 | `result-track:aae2063c9c41468ebeecbe29cc78d7b411ae042f08a177847e3bf3936590c5c9` |
| 4 | `theorem` | [verschiebungFun_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungfun-coeff-succ--bb7f7c4490773b5cdb1c740c.md) | 60 | `result-track:bb7f7c4490773b5cdb1c740ca4069f05df7fadc6487099faf36283d2b1f00dfe` |
| 5 | `theorem` | [ghostComponent_zero_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/ghostcomponent-zero-verschiebungfun--8c2b7edb90b15921867eab80.md) | 66 | `result-track:8c2b7edb90b15921867eab8041d3b2b83d41c48b5b5d986d9fe5a7c04a12395f` |
| 6 | `theorem` | [ghostComponent_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/ghostcomponent-verschiebungfun--a38f2ba28de35283b66de539.md) | 73 | `result-track:a38f2ba28de35283b66de539d4c30f5aa7d49199ae7171eda9d8c8c71a230312` |
| 7 | `def` | [verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungpoly--41b20993462c0a7d09b39f3c.md) | 86 | `declaration-track:41b20993462c0a7d09b39f3cb404291a0d5fd48245d8bf9e4c6474e3d2f1bdc6` |
| 8 | `theorem` | [verschiebungPoly_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungpoly-zero--607b30b834fc6c74271bed56.md) | 91 | `result-track:607b30b834fc6c74271bed561ccd2da240c4d34ba06bed97848ba7fec37a4c55` |
| 9 | `theorem` | [aeval_verschiebung_poly'](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/aeval-verschiebung-poly--f45672cc243196afc7b21ebf.md) | 95 | `result-track:f45672cc243196afc7b21ebf02235ea0e0d967b2b1eb7219bc41a58c008ed11b` |
| 10 | `instance` | [verschiebungFun_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebungfun-ispoly--1bc7be955501ef2c0169dede.md) | 109 | `declaration-track:1bc7be955501ef2c0169dede0feed92f784a8f41e34ad8bdb5cdbfe3d3215c0a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/example--dfc3b2d64c0c3912e953f49a.md) | 116 | `declaration-track:dfc3b2d64c0c3912e953f49a4a6f4c9c305557bd77864095774bdabcbfef4c27` |
| 12 | `def` | [verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebung--51aab9588d86b57a29731e9f.md) | 128 | `declaration-track:51aab9588d86b57a29731e9f66044874e0a625911bba50302d75e35fbdff1517` |
| 13 | `theorem` | [verschiebung_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebung-ispoly--962111a7aa63503f66242b8c.md) | 142 | `result-track:962111a7aa63503f66242b8c0ab1d4eef2ab63ed5c93a6e654c7cf31758f8cf7` |
| 14 | `theorem` | [map_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/map-verschiebung--730f6e9086d44e5dc99d0985.md) | 148 | `result-track:730f6e9086d44e5dc99d09858f837af5c26603cb7dd0b6facb3bbe80f7403c20` |
| 15 | `theorem` | [ghostComponent_zero_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/ghostcomponent-zero-verschiebung--1c96ddf359d84f5682e185af.md) | 153 | `result-track:1c96ddf359d84f5682e185afdcbaa7eef9981c3ff0c59b49c06452be6b1901f6` |
| 16 | `theorem` | [ghostComponent_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/ghostcomponent-verschiebung--8137e6e3e77fc633889a0c90.md) | 158 | `result-track:8137e6e3e77fc633889a0c90f53233aacb9b960e00656133e12fd94278cf0f99` |
| 17 | `theorem` | [verschiebung_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebung-coeff-zero--de4ce3ab428dbb9784268a27.md) | 164 | `result-track:de4ce3ab428dbb9784268a27f03bc67f2cdc97ab61f1c4f6ee7ffc97ad497e1c` |
| 18 | `theorem` | [verschiebung_coeff_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebung-coeff-add-one--0694b768c88412946a59383f.md) | 169 | `result-track:0694b768c88412946a59383ff29fb43ead396253b1b07dedeb7f613b269709bc` |
| 19 | `theorem` | [verschiebung_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/verschiebung-coeff-succ--bab6edd778b0515004018eed.md) | 175 | `result-track:bab6edd778b0515004018eed51122020a9da7dfb2bcc99a2e8e47f97a422b14a` |
| 20 | `theorem` | [aeval_verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/aeval-verschiebungpoly--9e3e6a51ed8342f981d105da.md) | 179 | `result-track:9e3e6a51ed8342f981d105da7a61397210865141bd533111e79a9c5c4ca3377d` |
| 21 | `theorem` | [bind₁_verschiebungPoly_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant126909fd1354a42976f0aabc45eb4252f0836b55662fa2d5985eb86f7b2a9714.lean/declarations/bind-verschiebungpoly-wittpolynomial--9d81826a9512f6da16d32ad2.md) | 185 | `result-track:9d81826a9512f6da16d32ad20d1440bf44dac939bda8561764fdcf2457972044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
