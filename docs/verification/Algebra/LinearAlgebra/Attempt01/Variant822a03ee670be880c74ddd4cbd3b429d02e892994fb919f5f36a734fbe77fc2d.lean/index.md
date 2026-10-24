# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt01.Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f8fd2a35e02920a698c8d28c350b166586ecb58",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f8fd2a35e02920a698c8d28c350b166586ecb58`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramplus--0469c4ca2546efcc0b265c55.md) | 20 | `declaration-track:0469c4ca2546efcc0b265c550e5187c4c6ab090b5112a5d1a536d4fd97e9dc77` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramminus--4759d920e251b311165e396d.md) | 22 | `declaration-track:4759d920e251b311165e396d9a4dabe4fc7673341b2c8952e475199823164cf1` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/pairwiseprofile--6a227513563256ee8323670f.md) | 24 | `declaration-track:6a227513563256ee8323670fae179c027203b58f718cea7eca6e0eae0d74fd1f` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/triplecycle--00b7385b57055bc526864075.md) | 26 | `declaration-track:00b7385b57055bc526864075cca62a61222a72b3d7267746ff96de2ec64a6d23` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramplus-hermitian--192a9b555c5f7d7ae219ece8.md) | 28 | `result-track:192a9b555c5f7d7ae219ece875d6404d858b27db7bb9ffc2349e7339a97e2b5e` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramminus-hermitian--16c296450f79883f426ee180.md) | 31 | `result-track:16c296450f79883f426ee18048d5d0d321370efa7aec3ed74b42f815643c11e9` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramplus-energy--22977da6a19de00df39e71b0.md) | 35 | `result-track:22977da6a19de00df39e71b0ef63d1618d97871c37ee9cf12b4f9f6c2eadd805` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramminus-energy--981d2d1c76255fefea41519e.md) | 41 | `result-track:981d2d1c76255fefea41519e391c8bf6700425816b5aba95f766b13ac90f6c0c` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/sum-sq-pos--f9cd5fd0ffb763ac2622b039.md) | 48 | `result-track:f9cd5fd0ffb763ac2622b0392ede635ee3b1ac63dfaae98f90beb87c3aad7cbe` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramplus-posdef--43de0dc13d8cc60a38abf7fd.md) | 60 | `result-track:43de0dc13d8cc60a38abf7fd4958661b84c0d92f13268ba136508d1d71389703` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramminus-posdef--4057e972d2465aa5a576c2bf.md) | 65 | `result-track:4057e972d2465aa5a576c2bf46e7109a786c82cbfa50803c6e79f6be3f5754a6` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/positive-gram-factor--bc8dc2ef98e809f51138496e.md) | 71 | `result-track:bc8dc2ef98e809f51138496ecd77195a9b5f9e6c82727ead19c5aa19afa8088b` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramplus-realizable--da46d9874fe8c93de693a168.md) | 77 | `result-track:da46d9874fe8c93de693a1687782b8d62ee54fc5e8f35ec77d04a94474601b43` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/gramminus-realizable--4ecd66a62d72162bcde55b72.md) | 79 | `result-track:4ecd66a62d72162bcde55b723c4f093fdb7ab0e9d7e0d8986af55a01355947fa` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/diagonals-equal--a37e087cf16d20efa3937deb.md) | 82 | `result-track:a37e087cf16d20efa3937deb5234dc0358bb913f121f70e91c179dc4008dd89b` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/pairwise-equal--4af61ad76c8a4b56de5a8196.md) | 85 | `result-track:4af61ad76c8a4b56de5a8196df8be1c13bd4fe2ef07e68ebce2eeb61186b17e5` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/triple-plus--1b23c94fecd12178e2c170b5.md) | 88 | `result-track:1b23c94fecd12178e2c170b53630392ed2863df8c7c32c009d083a4321635f49` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/triple-minus--b73bc9c2b6a38eb253ee52f0.md) | 90 | `result-track:b73bc9c2b6a38eb253ee52f0f4df0a25fbba0e0dff2c8aa09a99e1dc6da66956` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/triple-distinct--ce1af6e11a94eca0971d15b2.md) | 92 | `result-track:ce1af6e11a94eca0971d15b29196121bdfce9a661ba2d23940305ab7b0878eba` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/det-plus--ef2168059a70ade10ce32626.md) | 96 | `result-track:ef2168059a70ade10ce326268efb0387eb3f485ccd3c3bb49dfaa23f74e7443e` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/det-minus--4d79a4f434f27fef277dedc3.md) | 98 | `result-track:4d79a4f434f27fef277dedc3c8be7248aa7b670c8590f1af26d9ae973072f748` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/det-distinct--f1635bb893af22aa091cebcc.md) | 100 | `result-track:f1635bb893af22aa091cebcc9c79d9b76d3aded60a3e6365978155994144217d` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/no-pairwise-triple-decoder--231610ff5cc64e5be6fbdf29.md) | 104 | `result-track:231610ff5cc64e5be6fbdf29eb032f5089b63056234e8b69488d4e3554b93eba` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean/declarations/no-pairwise-determinant-decoder--fb39c5ceafc4c23c2047c78c.md) | 113 | `result-track:fb39c5ceafc4c23c2047c78c64eb9537d1745c186946053b37f0a4740b921eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
