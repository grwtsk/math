# Verification target: GRWTSK.Algebra.LinearAlgebra.CartanMatrix.Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f66318d30e3ad7d8af0406f23e7a23cb084e130",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f66318d30e3ad7d8af0406f23e7a23cb084e130`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Generators](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/generators--f689c94e16f91c45fa64826c.md) | 99 | `declaration-track:f689c94e16f91c45fa64826c912193660893ac116df0b0331ccafc757f0bd06a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/instance--e98fb164d169ceabe512b56b.md) | 105 | `declaration-track:e98fb164d169ceabe512b56bc0e75472d2ac743a3efe4759717fa8c5012bf4fd` |
| 3 | `def` | [HH](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/hh--4506afb0b5a50b6e7cf1a930.md) | 120 | `declaration-track:4506afb0b5a50b6e7cf1a930a06ab12065649cbca55c42382219aabb1c78445c` |
| 4 | `def` | [EF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/ef--ba51fd9cbbc5f7ff5241b9b4.md) | 125 | `declaration-track:ba51fd9cbbc5f7ff5241b9b4d6bba6dd77e87c81a2ff518d5d4e4201b339ba74` |
| 5 | `def` | [HE](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/he--09152e727ca4fac4642767c8.md) | 130 | `declaration-track:09152e727ca4fac4642767c8a767e70e89e15eb053bdb97db708b39b07017ff6` |
| 6 | `def` | [HF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/hf--2d7bd97b057e21c3b7e4b892.md) | 135 | `declaration-track:2d7bd97b057e21c3b7e4b8923089cfbf80d05491059a939dec293bbef1720c9a` |
| 7 | `def` | [adE](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/ade--bc253647448c86e2d5b089f4.md) | 144 | `declaration-track:bc253647448c86e2d5b089f4bba179fd62ed389003535d4f4d953a0b38820309` |
| 8 | `def` | [adF](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/adf--1686472fc40b097f9196cf11.md) | 151 | `declaration-track:1686472fc40b097f9196cf1118f8296e7a091e05b4d6aac3c474a88a1d6b2c91` |
| 9 | `theorem` | [adE_of_eq_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/ade-of-eq-eq-zero--7f7e69bfb352f76421ae9afb.md) | 155 | `result-track:7f7e69bfb352f76421ae9afb31fb3dfea8498540c40b82d627f16277619d1e59` |
| 10 | `theorem` | [adF_of_eq_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/adf-of-eq-eq-zero--fc3bba47080ec8a30680e290.md) | 159 | `result-track:fc3bba47080ec8a30680e29099819ad4254705131b24701c546c50ff9d58b613` |
| 11 | `def` | [toSet](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/toset--8fa5d830a5136d3427fb2a44.md) | 164 | `declaration-track:8fa5d830a5136d3427fb2a448594674ba433ae7e7162b2ecc668ee35fd7acdf4` |
| 12 | `def` | [toIdeal](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/toideal--8726189a427a5447f7164343.md) | 171 | `declaration-track:8726189a427a5447f7164343d7243f9700577cf1ce65ee3bc6b8646657a40cbd` |
| 13 | `def` | [Matrix.ToLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/matrix-toliealgebra--e69c558f48953a45eab8beb8.md) | 183 | `declaration-track:e69c558f48953a45eab8beb87941037ea804227e3ebb04be706b7a9946b35a4e` |
| 14 | `instance` | [Matrix.ToLieAlgebra.instLieRing](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/matrix-toliealgebra-instliering--ff6849dbc78af1ade73248e5.md) | 188 | `declaration-track:ff6849dbc78af1ade73248e55fe68d7af9891b367aba78e1e53960681297da89` |
| 15 | `instance` | [Matrix.ToLieAlgebra.instInhabited](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/matrix-toliealgebra-instinhabited--9445bfc8df456da6793372b5.md) | 192 | `declaration-track:9445bfc8df456da6793372b57ea70bec3fb6f177540fdc3cfe0e93a9757310a5` |
| 16 | `instance` | [Matrix.ToLieAlgebra.instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/matrix-toliealgebra-instliealgebra--32360aae8fe3d97bfbeb10d5.md) | 196 | `declaration-track:32360aae8fe3d97bfbeb10d55518ab05ac2554193ad7ac6efffc6962860e6212` |
| 17 | `def` | [E₆](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--83764bda8e8804281e3fe12c.md) | 211 | `declaration-track:83764bda8e8804281e3fe12c0eb7d322023ad376790a608001946de680ef3f30` |
| 18 | `def` | [E₇](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--7588c0e0172d7c901adec09b.md) | 229 | `declaration-track:7588c0e0172d7c901adec09bc90d1fa97f45e3e42eca93b0bcdf3a9096a2def8` |
| 19 | `def` | [E₈](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--1458540339a5cb7a174a50f4.md) | 248 | `declaration-track:1458540339a5cb7a174a50f40e539fa4c7bc3eb149da9c96e029e3c384c7e39f` |
| 20 | `def` | [F₄](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/f--c384b843680f7b98d7a50f43.md) | 266 | `declaration-track:c384b843680f7b98d7a50f43411a8f4b1f4c0d4d86b36c2802800f0472861c6c` |
| 21 | `def` | [G₂](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/g--28436d51885791c4f736706b.md) | 278 | `declaration-track:28436d51885791c4f736706b1981d1bd343f69e4b4b339453c0edf4bdc02b511` |
| 22 | `abbrev` | [e₆](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--961090feaa73f2f1e6ec7c06.md) | 287 | `declaration-track:961090feaa73f2f1e6ec7c06f0a279c5b71fff93f31d0583392e915c8c7e3c84` |
| 23 | `abbrev` | [e₇](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--074d9a5e1f6f5cb0ee5c6f2a.md) | 292 | `declaration-track:074d9a5e1f6f5cb0ee5c6f2af666beef8bbe328cbbdfa5084a3cacaed5687b7c` |
| 24 | `abbrev` | [e₈](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/e--f0adacb22c2e09b37fe21a1d.md) | 297 | `declaration-track:f0adacb22c2e09b37fe21a1d07d97cf13ff2f32a76daaa0bf40f33afba52cf93` |
| 25 | `abbrev` | [f₄](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/f--b6dece594b2a51b32d2ce5e9.md) | 302 | `declaration-track:b6dece594b2a51b32d2ce5e9bd9a21fe48159d12585cb2af11cd9935bb7c49fe` |
| 26 | `abbrev` | [g₂](../../../../../mathematics/Algebra/LinearAlgebra/CartanMatrix/Variant178096aec9c0e130bf5804ee0d5de1c7e3a8ea8a1c1c5b43ddd8193e82c8e0db.lean/declarations/g--e79cb77e58118b663a5032ec.md) | 307 | `declaration-track:e79cb77e58118b663a5032ec481d945cb7f0fe1072b08ad1fca54666bdcae1ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
