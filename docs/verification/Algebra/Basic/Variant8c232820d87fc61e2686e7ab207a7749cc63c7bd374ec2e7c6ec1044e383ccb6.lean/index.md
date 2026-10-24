# Verification target: GRWTSK.Algebra.Basic.Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff49bb9d8d1f589ec0cfb62cef7fda901f4015da",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff49bb9d8d1f589ec0cfb62cef7fda901f4015da`.

Source path: `GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.CompLemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Away](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/away--74654ac9a1919ef37117d918.md) | 46 | `declaration-track:74654ac9a1919ef37117d918e21a949874e904bd77f472e979c96ee257abcfa8` |
| 2 | `def` | [invSelf](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/invself--3281f08bfbd327f3e5b62a34.md) | 55 | `declaration-track:3281f08bfbd327f3e5b62a34efc6e33c5d58d934b46542bc0d0b7475f26d3b92` |
| 3 | `theorem` | [mul_invSelf](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/mul-invself--be4388ee7312ac050349c5de.md) | 60 | `result-track:be4388ee7312ac050349c5dec29bbc28274c048ab8fe997c91d9f6ae3c6ae9ae` |
| 4 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/lift--80669a5dba77c22a3ba4e09f.md) | 71 | `declaration-track:80669a5dba77c22a3ba4e09f0d3e65d76d182b01c3f4c9418919ec21dc1174f3` |
| 5 | `theorem` | [AwayMap.lift_eq](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/awaymap-lift-eq--b8075da251f6ea1fd2772664.md) | 80 | `result-track:b8075da251f6ea1fd2772664cc8b4ff03f96dcc1cc455ad70519e46621e755b3` |
| 6 | `theorem` | [AwayMap.lift_comp](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/awaymap-lift-comp--ad995a1530af631c05b6b98d.md) | 85 | `result-track:ad995a1530af631c05b6b98d2c4d2efb918019aed893632a8b1fd8ab4c2a1438` |
| 7 | `def` | [awayToAwayRight](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/awaytoawayright--0540aebf7a10e7c314576261.md) | 91 | `declaration-track:0540aebf7a10e7c31457626170cb3c85faf9a4c9734e2f3cf520cf9172c8312e` |
| 8 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/map--1dca0358cf0090d3718d3bc7.md) | 101 | `declaration-track:1dca0358cf0090d3718d3bc7e200c3fc73be9297f467218c73a48104f1db8b05` |
| 9 | `def` | [atUnits](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/atunits--01a44131b71b67c5f247dd30.md) | 121 | `declaration-track:01a44131b71b67c5f247dd3013752be012fd612e38820d857abc6e4bf364755f` |
| 10 | `def` | [atUnit](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/atunit--b53e4af83b399985a6392fa7.md) | 137 | `declaration-track:b53e4af83b399985a6392fa74363c978be2522d95d71ddb61ce3de1d6aa9f1f5` |
| 11 | `def` | [atOne](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/atone--0a3d9260fb34340bb762b758.md) | 147 | `declaration-track:0a3d9260fb34340bb762b7589be9701fbcf9ba3663d6c533672f4a90f5a9833c` |
| 12 | `theorem` | [away_of_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/away-of-isunit-of-bijective--eae02556ae1f62c7a9d57c75.md) | 151 | `result-track:eae02556ae1f62c7a9d57c7520d377b10a1791dc78fd12c34467cdafbd6b8549` |
| 13 | `abbrev` | [awayLift](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/awaylift--0a9b3992ab56b6b9d63eb5ea.md) | 181 | `declaration-track:0a9b3992ab56b6b9d63eb5ea5ae51ce432361a91172098186087a0fc46b936ff` |
| 14 | `abbrev` | [awayMap](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/awaymap--556f693e8e33130aff6a259f.md) | 187 | `declaration-track:556f693e8e33130aff6a259fc88fa785e57d75ea585e1b4b73dc2e43c0f75554` |
| 15 | `def` | [selfZpow](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow--8bc14f55be161dbc323f599b.md) | 209 | `declaration-track:8bc14f55be161dbc323f599b319b7d71a43924d28f982f26506073af466a1169` |
| 16 | `theorem` | [selfZpow_of_nonneg](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-of-nonneg--a806775485f8f2114d6575ab.md) | 213 | `result-track:a806775485f8f2114d6575ab16dfc556891fc8db053b92594291eaaafb2daabd` |
| 17 | `theorem` | [selfZpow_coe_nat](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-coe-nat--5149938ef43077764f0ffdf4.md) | 218 | `result-track:5149938ef43077764f0ffdf486164e69fac7e6fb1a70c4cdd72f986f91b133d6` |
| 18 | `theorem` | [selfZpow_zero](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-zero--0b2bf7150339dc8f2597623a.md) | 223 | `result-track:0b2bf7150339dc8f2597623a05072b2eb3ed70c21ef91c8162d2c6741c78aeed` |
| 19 | `theorem` | [selfZpow_of_neg](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-of-neg--a88792e5d559c206aa57994f.md) | 227 | `result-track:a88792e5d559c206aa57994facaef4947fe31400e2db87b650f2498a9c1321b2` |
| 20 | `theorem` | [selfZpow_of_nonpos](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-of-nonpos--0d4227348a07708507c4e41b.md) | 232 | `result-track:0d4227348a07708507c4e41b5da4e2d8d486a3cdf5b30792b2015998c9ce6491` |
| 21 | `theorem` | [selfZpow_neg_coe_nat](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-neg-coe-nat--e900bc1abfb30423cc0c3995.md) | 240 | `result-track:e900bc1abfb30423cc0c3995c70d679ff7a9b07c72459b94c22c463713375180` |
| 22 | `theorem` | [selfZpow_sub_cast_nat](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-sub-cast-nat--a03812ecfa3b20d6c5fe17bd.md) | 245 | `result-track:a03812ecfa3b20d6c5fe17bd004ee7d9f89d4fda7d30074af336056bb78ee557` |
| 23 | `theorem` | [selfZpow_add](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-add--d585eeace40a81cb214d1605.md) | 256 | `result-track:d585eeace40a81cb214d1605cee54878c6f3f6539d81b9b061439f85f45ae594` |
| 24 | `theorem` | [selfZpow_mul_neg](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-mul-neg--0fb932dc18235f6657e3b75c.md) | 275 | `result-track:0fb932dc18235f6657e3b75cf4c17d1c88d3f29b4800a91da354376834a26545` |
| 25 | `theorem` | [selfZpow_neg_mul](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-neg-mul--bbd2521cccdaa64d5678c009.md) | 288 | `result-track:bbd2521cccdaa64d5678c009d4f28deeeca11563f19afe15b25b924808b59541` |
| 26 | `theorem` | [selfZpow_pow_sub](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/selfzpow-pow-sub--bf53302d2368fe3940fa19a5.md) | 292 | `result-track:bf53302d2368fe3940fa19a587025824eb7d21c98fd2dcd421200e4288c7b6a1` |
| 27 | `theorem` | [exists_reduced_fraction'](../../../../mathematics/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/declarations/exists-reduced-fraction--09be309c4913fa332cde8d9d.md) | 309 | `result-track:09be309c4913fa332cde8d9d2189b33ac2319cbde8c59d0106cf726ea90fa381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
