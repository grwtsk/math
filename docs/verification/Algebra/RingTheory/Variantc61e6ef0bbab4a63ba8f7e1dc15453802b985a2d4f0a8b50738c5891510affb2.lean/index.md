# Verification target: GRWTSK.Algebra.Ring.Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b24e73b66a5f3a6042a59f8f969d051cd5fabcb5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b24e73b66a5f3a6042a59f8f969d051cd5fabcb5`.

Source path: `GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedRing](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/orderedring--569c3904caa03bf6fd5c5fa1.md) | 25 | `declaration-track:569c3904caa03bf6fd5c5fa1af53040d630257e35d676f0ac4f14d45ac53b486` |
| 2 | `theorem` | [neg_one_lt_zero](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/neg-one-lt-zero--403eb4c0c1a868b5b8f73f21.md) | 43 | `result-track:403eb4c0c1a868b5b8f73f21ccb7691ada6303bc493a0cf1cac2d851ed06a0af` |
| 3 | `theorem` | [ofNat_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/ofnat-nonneg--826977dcb23bee5aaac4df30.md) | 49 | `result-track:826977dcb23bee5aaac4df30cea2c3d1c5500ddd16f2483a2b2f486db0640bde` |
| 4 | `theorem` | [le_of_natCast_le_natCast](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/le-of-natcast-le-natcast--f9fbe1b7119b472190359ea5.md) | 62 | `result-track:f9fbe1b7119b472190359ea5af2694247d361b3fbb831c441c68038197e80491` |
| 5 | `theorem` | [le_of_intCast_le_intCast](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/le-of-intcast-le-intcast--f8c9f2ee7f8fa76ed7508c32.md) | 88 | `result-track:f8c9f2ee7f8fa76ed7508c32da9dd5171d8fdce46b4cce6a0a56c80034d5b5fe` |
| 6 | `theorem` | [lt_of_natCast_lt_natCast](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/lt-of-natcast-lt-natcast--ac86538a23e9b31a7ed6587d.md) | 102 | `result-track:ac86538a23e9b31a7ed6587d9597f219ebe3603b76302c486c520656718ff5c2` |
| 7 | `theorem` | [lt_of_intCast_lt_intCast](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/lt-of-intcast-lt-intcast--97f21d3b9c3f92a90a1eee5a.md) | 124 | `result-track:97f21d3b9c3f92a90a1eee5a904d3e14fa8f267919e0bb5934f46a2cb1880cc5` |
| 8 | `theorem` | [natCast_le_natCast_of_le](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/natcast-le-natcast-of-le--6b98be29e9830040ba7569d0.md) | 140 | `result-track:6b98be29e9830040ba7569d0fe4fd47cf96cc38595bbdc24ad78ed73f75e8d73` |
| 9 | `theorem` | [natCast_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/natcast-nonneg--5f43ef43980723bfe3fa1cd5.md) | 158 | `result-track:5f43ef43980723bfe3fa1cd5c20786204234eee4bb7cdc6d71c984fa8602a5bb` |
| 10 | `theorem` | [natCast_lt_natCast_of_lt](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/natcast-lt-natcast-of-lt--9843a92d9b3c64eda75dcd74.md) | 161 | `result-track:9843a92d9b3c64eda75dcd742f2bc9997ada36534227036cdc21c94fe6d30c1b` |
| 11 | `theorem` | [pos_natCast_of_pos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/pos-natcast-of-pos--42de012599a878e09997664c.md) | 177 | `result-track:42de012599a878e09997664c76f3c22314ef056a8ad9197605905db21085ba3e` |
| 12 | `theorem` | [pos_intCast_of_pos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/pos-intcast-of-pos--afd8730560cd8a21127d86f7.md) | 189 | `result-track:afd8730560cd8a21127d86f70e32470632c11e1dc114087a30293aa2ad788581` |
| 13 | `theorem` | [neg_intCast_of_neg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/neg-intcast-of-neg--146e41f86f35fd8336ecab9b.md) | 199 | `result-track:146e41f86f35fd8336ecab9b58580fb7b6331245454dc20ab46f464a1b4fc1c6` |
| 14 | `theorem` | [nonneg_intCast_of_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/nonneg-intcast-of-nonneg--dab6d209f84b32127dd663e5.md) | 206 | `result-track:dab6d209f84b32127dd663e570c1810e944fd86c1821b1cff61ea5618e1c26ad` |
| 15 | `theorem` | [nonpos_intCast_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/nonpos-intcast-of-nonpos--99a38a1a279abe79011a0681.md) | 215 | `result-track:99a38a1a279abe79011a068144765bacf7230e9d495233c0fecb7985d664c6f6` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/instance--e42831ca02dc9681184959ca.md) | 222 | `declaration-track:e42831ca02dc9681184959cae6c2eb1ff844ab2ccee1c74320048926681848f9` |
| 17 | `theorem` | [mul_pos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-pos--4963abf6273cd6573efe3522.md) | 246 | `result-track:4963abf6273cd6573efe3522eefca15cdb7f76be67e1b6a318c9b899abde1cc7` |
| 18 | `theorem` | [zero_le_one](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/zero-le-one--075e32eacbfc4c3635023a8f.md) | 249 | `result-track:075e32eacbfc4c3635023a8fefd62fabdbad5350debab11d1b66f4e7d1ca15ba` |
| 19 | `theorem` | [not_one_lt_zero](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/not-one-lt-zero--4d5204f7e3cd7486bd8de16a.md) | 252 | `result-track:4d5204f7e3cd7486bd8de16a663a2204926255ec36b963741df0a39bb6224dd9` |
| 20 | `theorem` | [mul_le_mul_of_nonneg_left](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-le-mul-of-nonneg-left--bee54d6710246ca0363ef316.md) | 261 | `result-track:bee54d6710246ca0363ef316e19550f0606401b8f0432feacb612264b4f7b4b1` |
| 21 | `theorem` | [mul_le_mul_of_nonneg_right](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-le-mul-of-nonneg-right--f108c0728a2bf6f79a653150.md) | 272 | `result-track:f108c0728a2bf6f79a653150535d8046f65d316bd0709d2a39fa839ac983bf80` |
| 22 | `theorem` | [mul_le_mul_of_nonpos_left](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-le-mul-of-nonpos-left--084a2cc15b311edc8cff395a.md) | 285 | `result-track:084a2cc15b311edc8cff395a243cb1118849c5f6d43cb5db0325d7e2eb83b97d` |
| 23 | `theorem` | [mul_le_mul_of_nonpos_right](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-le-mul-of-nonpos-right--fac7153383f43c18733ffd49.md) | 289 | `result-track:fac7153383f43c18733ffd49256cd7675d177f143f77729e593688d3b6a49733` |
| 24 | `theorem` | [mul_lt_mul_of_neg_left](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-lt-mul-of-neg-left--c7c87779bb6a08d6b6ab47d3.md) | 293 | `result-track:c7c87779bb6a08d6b6ab47d3b7d4ad0ef4e5f13c5ece3d960d7f8c4576e0d196` |
| 25 | `theorem` | [mul_lt_mul_of_neg_right](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-lt-mul-of-neg-right--357e2c9d536bbfc6e37d0e5d.md) | 297 | `result-track:357e2c9d536bbfc6e37d0e5dd137c4fe6636d1d7a156172a761a6cf0164829eb` |
| 26 | `theorem` | [mul_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-nonneg--3794da891adb6373b64e641a.md) | 301 | `result-track:3794da891adb6373b64e641ac5a2fd804f56421777f4c0bc17e4e48cdf218cc8` |
| 27 | `theorem` | [mul_nonneg_of_nonpos_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-nonneg-of-nonpos-of-nonpos--20c6b10035f4c1db5f241d16.md) | 304 | `result-track:20c6b10035f4c1db5f241d16507499ac183ca4b0f799ea88256671ccd4166c59` |
| 28 | `theorem` | [mul_nonpos_of_nonneg_of_nonpos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-nonpos-of-nonneg-of-nonpos--9a37a867c50864713a00b1f6.md) | 308 | `result-track:9a37a867c50864713a00b1f65375997b124466d021a06bed0dcb2714c8b75f61` |
| 29 | `theorem` | [mul_nonpos_of_nonpos_of_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-nonpos-of-nonpos-of-nonneg--d89476f9402fb95835809e50.md) | 312 | `result-track:d89476f9402fb95835809e506fad574b10e9f4ae991596ea14dc79c3f72019e7` |
| 30 | `theorem` | [mul_pos_of_neg_of_neg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-pos-of-neg-of-neg--65b52555749677250b570412.md) | 316 | `result-track:65b52555749677250b5704127a39f46d4da674b053d4d609dcc9df84a8ed6e2b` |
| 31 | `theorem` | [mul_neg_of_pos_of_neg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-neg-of-pos-of-neg--07494cf52f91898f02e93e3b.md) | 320 | `result-track:07494cf52f91898f02e93e3bca5d9ad2bcdc7ad760752ba80d6ffb90dc53c7f4` |
| 32 | `theorem` | [mul_neg_of_neg_of_pos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-neg-of-neg-of-pos--c86965aa25312e7318f8b1f0.md) | 324 | `result-track:c86965aa25312e7318f8b1f012be33d75d63e206c51cd873e70ed3d471d37254` |
| 33 | `theorem` | [mul_nonneg_iff](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-nonneg-iff--cc132965e8535e200f885d39.md) | 334 | `result-track:cc132965e8535e200f885d392379f3fc5549ecbf53b39f717a0168074da1ade0` |
| 34 | `theorem` | [mul_pos_iff](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/mul-pos-iff--964162c15e6dd29a21bd64eb.md) | 350 | `result-track:964162c15e6dd29a21bd64ebe89bcb3e2725e09f732a6ca75f9008a8da03ec10` |
| 35 | `theorem` | [sq_nonneg](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/sq-nonneg--d031f0fa825759caf06ad22f.md) | 366 | `result-track:d031f0fa825759caf06ad22fb4380a4ed29a38b78ae1341e0c455dd699df22d7` |
| 36 | `theorem` | [sq_pos](../../../../mathematics/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/declarations/sq-pos--2f30dce646e6a595936c9400.md) | 372 | `result-track:2f30dce646e6a595936c940001910df7b6a3a76863fc80a4af777e5d5b48ba19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
