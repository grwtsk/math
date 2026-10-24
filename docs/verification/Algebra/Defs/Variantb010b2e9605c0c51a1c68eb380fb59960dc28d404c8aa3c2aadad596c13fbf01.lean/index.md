# Verification target: GRWTSK.Algebra.Defs.Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c73dc56118f1f2f169414529a71c29d1592b9cd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c73dc56118f1f2f169414529a71c29d1592b9cd`.

Source path: `GRWTSK/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasQuotient](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/insthasquotient--b142a98a2d4072ed1123f0c3.md) | 39 | `declaration-track:b142a98a2d4072ed1123f0c3f38dca2eff68e3c595b00e1908463fe2479de16b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/instance--a70c5ebe9c99b7ba2b74f524.md) | 42 | `declaration-track:a70c5ebe9c99b7ba2b74f5242f3ee550109af1fa7d71c382b4682a1184734d8d` |
| 3 | `instance` | [one](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/one--b8182bf77db83546c141fd49.md) | 48 | `declaration-track:b8182bf77db83546c141fd491485820d2dfb2bb724c2fa72aeeb8d11cf191e33` |
| 4 | `def` | [ringCon](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/ringcon--cbf2aad9f2d3b5b93b99dc5e.md) | 52 | `declaration-track:cbf2aad9f2d3b5b93b99dc5e32ec619de8ea4079ff1b98fcee1f02f372a9dbd9` |
| 5 | `instance` | [ring](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/ring--3f46eabeb94dd8b92b0a5e9d.md) | 58 | `declaration-track:3f46eabeb94dd8b92b0a5e9da90d53d5b608b0440709d122cd9ff7e79d7de1be` |
| 6 | `instance` | [commRing](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/commring--718b20a7ca0fa12826b8a894.md) | 62 | `declaration-track:718b20a7ca0fa12826b8a894b022f95afddbe4f1ba382099d8d1cce1bee86e4a` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/instance--b7b709526a1252e06ccb9305.md) | 65 | `declaration-track:b7b709526a1252e06ccb9305e1d7302efe08a1401b401b37f8e105f58301bb01` |
| 8 | `instance` | [commSemiring](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/commsemiring--1e8ada1f5e43c46c9e828088.md) | 66 | `declaration-track:1e8ada1f5e43c46c9e8280886e3863b81e60e4cd8b7258e260356972818e21f7` |
| 9 | `instance` | [semiring](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/semiring--c7d2a6342251c3e14f4a3719.md) | 68 | `declaration-track:c7d2a6342251c3e14f4a37194519f08d8fd7bb77a3622e87678424d37b5b4703` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/example--286c57e4d15e465e5ea4667a.md) | 73 | `declaration-track:286c57e4d15e465e5ea4667afd2466436542dadaa6edcf3fea93a37eed9ab8d2` |
| 11 | `def` | [mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/mk--d8e59353a8aced48384ab19d.md) | 77 | `declaration-track:d8e59353a8aced48384ab19d2bab875ae1480336a358fdbffaaeb1cbd938a19b` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/instance--4b89b66f7f02545a35fc3268.md) | 84 | `declaration-track:4b89b66f7f02545a35fc3268486b926082799f2165565762895c81e3f8fb38d4` |
| 13 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/ringhom-ext--caeac9277a72c0063e507af2.md) | 92 | `result-track:caeac9277a72c0063e507af24b545c5d3b8a2e23ab7a08dbf833429b8435deae` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/instance--4499cb4a28ee49f47bbdb68e.md) | 96 | `declaration-track:4499cb4a28ee49f47bbdb68e73a0ea081a90edbc75267d400f6c60c865c4c3d5` |
| 15 | `theorem` | [eq](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/eq--34350aee6c3fa9eb513589e9.md) | 99 | `result-track:34350aee6c3fa9eb513589e980fd9ee5a1eb0cbd0f2888d4f7e2b622401b5ef3` |
| 16 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/mk-eq-mk--5b809e5f89af92d605cbd5c9.md) | 103 | `result-track:5b809e5f89af92d605cbd5c92dee48363c2359b64194ff908331e8a0de1685ce` |
| 17 | `theorem` | [eq_zero_iff_mem](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/eq-zero-iff-mem--8bebacffd9f7a378dbc94aff.md) | 105 | `result-track:8bebacffd9f7a378dbc94afff6e49e35f0e1861d1bf679ed209067da5a3edd78` |
| 18 | `theorem` | [mk_eq_mk_iff_sub_mem](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/mk-eq-mk-iff-sub-mem--862157b31345f7ef678c84f4.md) | 108 | `result-track:862157b31345f7ef678c84f469a4bc9b6cd2dd7b34469af8fc8514589dd7ac72` |
| 19 | `theorem` | [mk_out](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/mk-out--ec645cc2c6cbe6569a346d4d.md) | 112 | `result-track:ec645cc2c6cbe6569a346d4d951691d2133b84a53b341481a08bac6dc295be87` |
| 20 | `theorem` | [mk_surjective](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/mk-surjective--975f521c85d59f228186b85e.md) | 115 | `result-track:975f521c85d59f228186b85e50e6fc110e22d865f7383360345b0d738427fc22` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/instance--f1f811e71e72235cd1cd1803.md) | 118 | `declaration-track:f1f811e71e72235cd1cd180386b4fbd21cec138e4605a7f2ca9997ff5916fdb8` |
| 22 | `theorem` | [quotient_ring_saturate](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/quotient-ring-saturate--80814d337d4204b42436030f.md) | 123 | `result-track:80814d337d4204b42436030f55608969c11ac7a6956527f901b6be762fd6b6f8` |
| 23 | `def` | [lift](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/lift--35239e439e4b90b61efe2891.md) | 135 | `declaration-track:35239e439e4b90b61efe2891259317e057fb9d94b594dfea18b2d5daa4c96933` |
| 24 | `theorem` | [lift_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/lift-mk--6efe803dc4e657b3aa4032cd.md) | 141 | `result-track:6efe803dc4e657b3aa4032cd813564140e0075ebded0a62d9dc90edfdb4122a5` |
| 25 | `lemma` | [lift_comp_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/lift-comp-mk--f41212d2282c2c529eac4c67.md) | 145 | `result-track:f41212d2282c2c529eac4c679ce087787e27bfc345df4dc77feb3facf6ab46b6` |
| 26 | `theorem` | [lift_surjective_of_surjective](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/lift-surjective-of-surjective--02eaa7acfc5853497b63e296.md) | 148 | `result-track:02eaa7acfc5853497b63e2961a473df400177a120738da50119962329237c6b9` |
| 27 | `def` | [factor](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor--02c33075c4d7412952b2bea8.md) | 163 | `declaration-track:02c33075c4d7412952b2bea8764d66e6318cae5b86b926e36d1923ac85b68ed8` |
| 28 | `theorem` | [factor_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-mk--32d159ae0c8254eb2a8ca415.md) | 167 | `result-track:32d159ae0c8254eb2a8ca415b95787ed43bd9857228668344dcb3867c7967b52` |
| 29 | `theorem` | [factor_eq](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-eq--9762572911a70ffd850065c0.md) | 171 | `result-track:9762572911a70ffd850065c01ef36c577fa720cbc25de6b8271889bb8bd7cab9` |
| 30 | `theorem` | [factor_comp_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-comp-mk--cefae783a33aadf1e6d8efa0.md) | 176 | `result-track:cefae783a33aadf1e6d8efa0d710d6220f126d787201b9ff8b2daa3afcbb746f` |
| 31 | `theorem` | [factor_comp](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-comp--adabab53420501c43224ad7f.md) | 181 | `result-track:adabab53420501c43224ad7fc3d1eb8804b32017068d60d3a51c405c8653712c` |
| 32 | `theorem` | [factor_comp_apply](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-comp-apply--001ce18a25efbde6c2b33714.md) | 187 | `result-track:001ce18a25efbde6c2b337147e648ff8a893a1dd2db7cb4bab514784285bc0bd` |
| 33 | `lemma` | [factor_surjective](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/factor-surjective--4c5e6bfc7987069a1eadef60.md) | 192 | `result-track:4c5e6bfc7987069a1eadef602c8cb7bd492bf4d0f475d087d0546d5a6c560a71` |
| 34 | `def` | [quotEquivOfEq](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/quotequivofeq--1962552105f5cddb84ebfa43.md) | 203 | `declaration-track:1962552105f5cddb84ebfa4352bcce343447dab13f60a89113a7a9fef441f9a4` |
| 35 | `theorem` | [quotEquivOfEq_mk](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/quotequivofeq-mk--f0532709f92415317bb1a082.md) | 210 | `result-track:f0532709f92415317bb1a082e19c73d2cbee9a4a21df1d2219a211100fa59432` |
| 36 | `theorem` | [quotEquivOfEq_symm](../../../../mathematics/Algebra/Defs/Variantb010b2e9605c0c51a1c68eb380fb59960dc28d404c8aa3c2aadad596c13fbf01.lean/declarations/quotequivofeq-symm--0861139c72898b36fbdafc59.md) | 215 | `result-track:0861139c72898b36fbdafc598f5c8706f0844aa6056b36eab27937d750e6aeb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
