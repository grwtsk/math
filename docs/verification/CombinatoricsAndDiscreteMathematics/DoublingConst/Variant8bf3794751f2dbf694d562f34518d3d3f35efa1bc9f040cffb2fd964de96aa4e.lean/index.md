# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoublingConst.Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9395dd8e8b19b10571e3eece5e14c76c9c71572",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9395dd8e8b19b10571e3eece5e14c76c9c71572`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.PluenneckeRuzsa` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst--3c45545586ca4918f41eaa1f.md) | 29 | `declaration-track:3c45545586ca4918f41eaa1fc856373527411595bd793dc7c58b3bd33c6e0417` |
| 2 | `def` | [divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst--b76e94d6c3bf1f01d9dda2c6.md) | 38 | `declaration-track:b76e94d6c3bf1f01d9dda2c6ac64142b6ede82e3deb7a1044856f79a5b7c40f6` |
| 3 | `lemma` | [mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-mul-card--58916f2e78a3914bdb637647.md) | 67 | `result-track:58916f2e78a3914bdb637647676fe8030d5e301db568b8c4da7912b5c5368a76` |
| 4 | `lemma` | [divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-mul-card--759817982d7434eb42465fc4.md) | 73 | `result-track:759817982d7434eb42465fc4bf29beac39ffd2fdc8f862700e74ebbf82841036` |
| 5 | `lemma` | [card_mul_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-mulconst--17d3dd536a70ed974af9100b.md) | 79 | `result-track:17d3dd536a70ed974af9100b76e8531ba36ac1e95a9722be249598222bf4bd0c` |
| 6 | `lemma` | [card_mul_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-divconst--fb53f482b6d5e4504cd80748.md) | 83 | `result-track:fb53f482b6d5e4504cd8074838cda08264fe658dc7a2bf37a133e4799818af8d` |
| 7 | `lemma` | [mulConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-empty-left--1d7134c8b14fc9b31b7344cd.md) | 87 | `result-track:1d7134c8b14fc9b31b7344cd3a303d643607c871dcb704f1887ee6beb8ce8522` |
| 8 | `lemma` | [divConst_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-empty-left--780ec67fc3c569124fa9b64d.md) | 90 | `result-track:780ec67fc3c569124fa9b64de5cb2f225596e37481bb0db6c22a6c6e3a122d16` |
| 9 | `lemma` | [mulConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-empty-right--85ec1d92be42dae3b50db20b.md) | 93 | `result-track:85ec1d92be42dae3b50db20b65ff191be709cdbc9591268f2c9c4430f003e1a0` |
| 10 | `lemma` | [divConst_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-empty-right--23dce6dced417ecf12411f16.md) | 96 | `result-track:23dce6dced417ecf12411f16b68cb6f4b65d4187e28199f7a5c150907df81a63` |
| 11 | `lemma` | [mulConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-inv-right--3296429245167784d2825570.md) | 99 | `result-track:3296429245167784d282557097324acc5e8bedf037313dd57832368e8d4b682b` |
| 12 | `lemma` | [divConst_inv_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-inv-right--8237e37314b2bc3c31e3eee3.md) | 103 | `result-track:8237e37314b2bc3c31e3eee3c77e9f8d6effa9de388d7246e6ec4fa88f08c7e3` |
| 13 | `lemma` | [mulConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-le-inv-dens--f154fac8ae1f60af26d244c6.md) | 111 | `result-track:f154fac8ae1f60af26d244c62750b77167b214144adcc5a72303785f8c8c6834` |
| 14 | `lemma` | [divConst_le_inv_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-le-inv-dens--ca214ff43a5fd4b814e71033.md) | 116 | `result-track:ca214ff43a5fd4b814e710337b1bdd4c12a66e7e80bcd126fc2a189c6c4f2c2a` |
| 15 | `lemma` | [cast_addConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-addconst--b114a1decef128735077a65d.md) | 124 | `result-track:b114a1decef128735077a65d2c334c9b9fff85c31ec53d2fd865c5bb8a47b404` |
| 16 | `lemma` | [cast_subConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-subconst--2a3d442a8f52504f1375b412.md) | 127 | `result-track:2a3d442a8f52504f1375b412ec96b01c66919c04e95148c642a396863a785fed` |
| 17 | `lemma` | [cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-mulconst--92e24bde595e4434790e3cf8.md) | 130 | `result-track:92e24bde595e4434790e3cf8e0dd25e2727d6bcd8d7000982073fb6265a90856` |
| 18 | `lemma` | [cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-divconst--acf459192cba870d75bd12ce.md) | 132 | `result-track:acf459192cba870d75bd12ce15159208f34fe5d7e98a3ce9c5b0242e2a102835` |
| 19 | `lemma` | [cast_addConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-addconst-mul-card--b24440207e143d55983f9f7d.md) | 134 | `result-track:b24440207e143d55983f9f7da2f05cc64d41eca62484c9b4d370403940981cb4` |
| 20 | `lemma` | [cast_subConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-subconst-mul-card--d723e6ce785c3d0771ee4465.md) | 137 | `result-track:d723e6ce785c3d0771ee4465de7850a584be9ccfd05d8ba01133f8cf820489cf` |
| 21 | `lemma` | [card_mul_cast_addConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-cast-addconst--123ae7e1e9cdc53b5d3dd52f.md) | 140 | `result-track:123ae7e1e9cdc53b5d3dd52f06b968fb8db4da7f6636c73bff8164eed01fb907` |
| 22 | `lemma` | [card_mul_cast_subConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-cast-subconst--97e01f9c2983eca1d5859f5f.md) | 143 | `result-track:97e01f9c2983eca1d5859f5f6a0adb46c3a4bd21fcdccb8ee2ac5e44b4ddd617` |
| 23 | `lemma` | [cast_mulConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-mulconst-mul-card--34b18877bf35124d3b7e72b7.md) | 147 | `result-track:34b18877bf35124d3b7e72b7d84117eb32a9e51b623dc50194863b646cbfb030` |
| 24 | `lemma` | [cast_divConst_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/cast-divconst-mul-card--b2baf08ed3a2fa80c42abc1b.md) | 151 | `result-track:b2baf08ed3a2fa80c42abc1b1a65a0e72429f4f1324c73beda89bf7196d2d78f` |
| 25 | `lemma` | [card_mul_cast_mulConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-cast-mulconst--4b2814128cd606cde3714e66.md) | 155 | `result-track:4b2814128cd606cde3714e66e4f21a9410de39d0042b7ae99cc017f7a173685c` |
| 26 | `lemma` | [card_mul_cast_divConst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/card-mul-cast-divconst--ac2ca6b3b1a3164b8146339a.md) | 159 | `result-track:ac2ca6b3b1a3164b8146339ae14a1caecdd448a60bc8bb9b2601d356c9a8ac43` |
| 27 | `lemma` | [mulConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-inv-left--1db0522874167c673aaa07fe.md) | 170 | `result-track:1db0522874167c673aaa07fe82b14a1c177aeed0555ff6747ea96c79be340f07` |
| 28 | `lemma` | [divConst_inv_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-inv-left--8c09cbef7184069400ab23ef.md) | 174 | `result-track:8c09cbef7184069400ab23ef921a7ec8cedfe15ae1ff98d951b6d5528152437c` |
| 29 | `lemma` | [mulConst_le_divConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/mulconst-le-divconst-sq--7da363827e169f2501a67e06.md) | 184 | `result-track:7da363827e169f2501a67e067145a6d2e79d902bae054ef2bbf5b4dd96a624ed` |
| 30 | `lemma` | [divConst_le_mulConst_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoublingConst/Variant8bf3794751f2dbf694d562f34518d3d3f35efa1bc9f040cffb2fd964de96aa4e.lean/declarations/divconst-le-mulconst-sq--d040c333d975bed073b107b3.md) | 200 | `result-track:d040c333d975bed073b107b37a941a3a234be82a3d79e9a228883787cf10d463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
