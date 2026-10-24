# Verification target: GRWTSK.Algebra.LinearAlgebra.MapDomain.Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c37ca509dac3dc20fb61eb1953854511862eec2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c37ca509dac3dc20fb61eb1953854511862eec2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain--5fc579c4b23694b63d392636.md) | 41 | `declaration-track:5fc579c4b23694b63d3926363f64dbd2cde3c81e66969d086bf616c4011fb542` |
| 2 | `lemma` | [mapDomain_sum](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-sum--e0e3c06501b9a4e19c1ac0bc.md) | 43 | `result-track:e0e3c06501b9a4e19c1ac0bccfb80276c7ac4eb78c1aeeaf324b0e470630e3f5` |
| 3 | `lemma` | [mapDomain_single](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-single--f6c8dc0db55f3373c1d69cb8.md) | 46 | `result-track:f6c8dc0db55f3373c1d69cb8f99be5df679846b4188ad62593ad93d88e3c1da0` |
| 4 | `lemma` | [mapDomain_injective](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-injective--db5946083003868c6f884a37.md) | 48 | `result-track:db5946083003868c6f884a37c168dedb0aeb07b5add78becc470b4ff8de3b9d6` |
| 5 | `theorem` | [mapDomain_one](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-one--af8fb85080030df42af17278.md) | 62 | `result-track:af8fb85080030df42af17278ea139d89767d615f7a03345bff1c6f284e41a092` |
| 6 | `theorem` | [mapDomain_mul](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-mul--74b3cafb634ea337a97816a6.md) | 68 | `result-track:74b3cafb634ea337a97816a678e237d073402e2810236e5f3e5c943f05da1893` |
| 7 | `def` | [mapDomainRingHom](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomainringhom--ed4e5be37313ce658c990a35.md) | 88 | `declaration-track:ed4e5be37313ce658c990a352d80c0ed6b715a3586bcef03b9e42d9574c7f7d7` |
| 8 | `abbrev` | [mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain--bce3f31b6ba2cddcd1dcb0e4.md) | 103 | `declaration-track:bce3f31b6ba2cddcd1dcb0e43c02f5c366b42875a10e3ca1ba89cfb6c3fe8138` |
| 9 | `lemma` | [mapDomain_sum](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-sum--9029be63044a42b8106bf8b3.md) | 105 | `result-track:9029be63044a42b8106bf8b3a4e2a57f73e365fcc650f521bb4107861eacddbb` |
| 10 | `lemma` | [mapDomain_single](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-single--c5d4a92fbd57517459d1c13b.md) | 108 | `result-track:c5d4a92fbd57517459d1c13b833d12dd8fa0bd5a220d41487f2537624cbd611b` |
| 11 | `lemma` | [mapDomain_injective](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-injective--a5a0d588729761df41d70790.md) | 110 | `result-track:a5a0d588729761df41d707900fdd2e09a68d21e63ef1961d5eef6afc615331a5` |
| 12 | `theorem` | [mapDomain_one](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-one--535b39b15cd8be0b87c7e8e7.md) | 121 | `result-track:535b39b15cd8be0b87c7e8e7d8f6cacc541a71ce29c218129b14070af9bd5bbb` |
| 13 | `theorem` | [mapDomain_mul](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomain-mul--7f6d13c893e99ea4d3b8c0bb.md) | 128 | `result-track:7f6d13c893e99ea4d3b8c0bb54aa6379930be63d3fb8d1c0da84d4ea3b5dac6b` |
| 14 | `def` | [mapDomainRingHom](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/mapdomainringhom--01d9cafedaadb7142ed9fd56.md) | 144 | `declaration-track:01d9cafedaadb7142ed9fd565a7c888be10ff5927c44c4d1e86633aed17af7c9` |
| 15 | `def` | [AddMonoidAlgebra.toMultiplicative](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/addmonoidalgebra-tomultiplicative--9eb03d3764eeccdb2d2638c4.md) | 166 | `declaration-track:9eb03d3764eeccdb2d2638c4d5c84594b61513245c5a1d8f833e375a25677a44` |
| 16 | `def` | [MonoidAlgebra.toAdditive](../../../../../mathematics/Algebra/LinearAlgebra/MapDomain/Variantc8e151bd115a9eadeab11c2bae7c3e70f50b687894ef67e6bd61da12dea031e1.lean/declarations/monoidalgebra-toadditive--72a253dbfc3189e6725f94e6.md) | 179 | `declaration-track:72a253dbfc3189e6725f94e602fbbc253c41df2b2daf348ad25c3c98b74fa728` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
