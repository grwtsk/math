# Verification target: GRWTSK.Algebra.LinearAlgebra.QuotientConvention.Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0e19398731813805fb287f497f41500ff753d2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0e19398731813805fb287f497f41500ff753d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Grassmannian` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotientPlane](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientplane--9d0f93aac73a1475c46812ed.md) | 22 | `declaration-track:9d0f93aac73a1475c46812edea03c2a70b27c2124b54b640cdd5fa8430e9213d` |
| 2 | `theorem` | [intrinsicPlane_quotient_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsicplane-quotient-finrank--5c7c86a2c0f28aef6e956bcf.md) | 25 | `result-track:5c7c86a2c0f28aef6e956bcf04d5984309e917ba30ed4b1eb577ae0ebbcb1aa7` |
| 3 | `theorem` | [quotientPlane_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientplane-finrank--33a47fa8b8c2e93df417958a.md) | 33 | `result-track:33a47fa8b8c2e93df417958ab35087574ca2f3115f008b3d1d304db4f95db130` |
| 4 | `theorem` | [quotientPlane_dimension_sum](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientplane-dimension-sum--ba0976b3e809ec539f851084.md) | 39 | `result-track:ba0976b3e809ec539f851084d0f688d1ecac9efb39ab7e97c97a03d75310e465` |
| 5 | `theorem` | [quotientPlane_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientplane-rank-le--1d6a8ff252f403e909408b4a.md) | 46 | `result-track:1d6a8ff252f403e909408b4aca2ae84b5c6d57162b2cd5e74216996dc18d9756` |
| 6 | `def` | [intrinsicToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsictoquotientconvention--4289312d4081b0821a95720a.md) | 51 | `declaration-track:4289312d4081b0821a95720a7b7fc9f956f3f3f8a9a72d3a9f1a0842d151edce` |
| 7 | `theorem` | [intrinsicToQuotientConvention_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsictoquotientconvention-submodule--bcbe045a99ac4858fa29d682.md) | 60 | `result-track:bcbe045a99ac4858fa29d682c86804401ce2f5a6fc0f86bfb14ffb3736af9336` |
| 8 | `def` | [quotientConventionToIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconventiontointrinsic--d2fbf8e685a637dcfb029b32.md) | 64 | `declaration-track:d2fbf8e685a637dcfb029b3237ada7cd92531e55602ca7d8361b4d9c8df26e94` |
| 9 | `theorem` | [quotientConventionToIntrinsic_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconventiontointrinsic-submodule--aa51d97926b0fbb58deb4a53.md) | 71 | `result-track:aa51d97926b0fbb58deb4a53b5b33d5a183fe230ce471bfec587f3daadd8418f` |
| 10 | `def` | [intrinsicEquivQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsicequivquotientconvention--6382fa511883e8c53f7f642b.md) | 76 | `declaration-track:6382fa511883e8c53f7f642b36d0ccf7c47a1359e6d97be1eaea80c40343197b` |
| 11 | `theorem` | [quotientConvention_roundTrip_intrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconvention-roundtrip-intrinsic--63f7bf0961e47095dbb3aa59.md) | 84 | `result-track:63f7bf0961e47095dbb3aa59a941cf3f1d0bea8e39c6462e0a1d1cc5f5e4342a` |
| 12 | `theorem` | [quotientConvention_roundTrip_mathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconvention-roundtrip-mathlib--b7748c68d5229bb0028b0ca5.md) | 90 | `result-track:b7748c68d5229bb0028b0ca559e1524bddb767c6252f64baa6103f9872dc750b` |
| 13 | `def` | [frameQuotientEquivMathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/framequotientequivmathlib--a9f0d56b451c3514b937f0cb.md) | 96 | `declaration-track:a9f0d56b451c3514b937f0cb69e96a6769b5c131f3dd14e532192c356270d8fe` |
| 14 | `def` | [frameToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/frametoquotientconvention--db759ad441349f31a1408f8c.md) | 101 | `declaration-track:db759ad441349f31a1408f8c66954af94b021ffbe7059bae9890c566a3dbb3a2` |
| 15 | `theorem` | [frameToQuotientConvention_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/frametoquotientconvention-eq-iff--ba99a0a3b97fffda6f012882.md) | 105 | `result-track:ba99a0a3b97fffda6f0128822922987d34c7e5b640d6868ed21e9ae514a86269` |
| 16 | `theorem` | [frameToQuotientConvention_eq_iff_minors](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/frametoquotientconvention-eq-iff-minors--07de75d6e59e4e96ae9517db.md) | 115 | `result-track:07de75d6e59e4e96ae9517db45bba3a5235da2645b8aa2ce7855b5186e0f52cc` |
| 17 | `def` | [QuotientConventionNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconventionnonnegative--162c65ce3d0f02f23c4f73f2.md) | 123 | `declaration-track:162c65ce3d0f02f23c4f73f22a5caaa466b42f795c3cfb5e23376402412408d6` |
| 18 | `def` | [QuotientConventionPositive](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconventionpositive--0253a0e0446d6d0be6493982.md) | 128 | `declaration-track:0253a0e0446d6d0be6493982508ecfc48f933d01cfdcc9aa4bfa3a80ba848112` |
| 19 | `theorem` | [intrinsicNonnegative_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsicnonnegative-iff-quotientconvention--3a60c6089771748d7fdb288a.md) | 133 | `result-track:3a60c6089771748d7fdb288af0ee2f14570c6b5f877d6139a5a91ec96e89311e` |
| 20 | `theorem` | [intrinsicPositive_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/intrinsicpositive-iff-quotientconvention--6f6844f2f2b9746097ad8a30.md) | 144 | `result-track:6f6844f2f2b9746097ad8a3076cf2d1aa0ad00e11f0ed16fa38e196125abc14d` |
| 21 | `def` | [wholeSpaceQuotientPoint](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/wholespacequotientpoint--dab8f4d5c4643fa7ac559d92.md) | 155 | `declaration-track:dab8f4d5c4643fa7ac559d92a511ef559c06f0eaf88d372b630261d6f644d2ea` |
| 22 | `theorem` | [quotientConvention_dimension_guard](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/quotientconvention-dimension-guard--95c88c0abb9210d5015a8151.md) | 162 | `result-track:95c88c0abb9210d5015a8151f763390192d5fa737803d97a120f9cf302e27249` |
| 23 | `theorem` | [line_in_three_quotient_rank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/line-in-three-quotient-rank--284eed359ce1c1213d5e2542.md) | 171 | `result-track:284eed359ce1c1213d5e2542305412d7acae1fc85b5409d5063c869d3f246f71` |
| 24 | `theorem` | [line_in_three_not_quotient_rank_one](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/declarations/line-in-three-not-quotient-rank-one--8bc3b8e4cd0682596661b3f3.md) | 176 | `result-track:8bc3b8e4cd0682596661b3f337fb0d37b5bc15b3a9c1765eb4b8c765095e90c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
