# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Balance.Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacdbb01be096b138788ceac49ddc3254e50e657",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacdbb01be096b138788ceac49ddc3254e50e657`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance--6c91abe8f2831f6a5fdb9ea8.md) | 37 | `declaration-track:6c91abe8f2831f6a5fdb9ea86a5a7b1742fbfc77addab8ccd7d63bae6ef3b8e9` |
| 2 | `lemma` | [balance_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-apply--cc5af64910f6fa43172edfe5.md) | 39 | `result-track:cc5af64910f6fa43172edfe54a661207acdaad1a37e85b833468a7e2c8e9cb93` |
| 3 | `lemma` | [balance_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-zero--a4afbc037327464a1d1ad883.md) | 41 | `result-track:a4afbc037327464a1d1ad8832433dba24a367120daebcf68afcbee5485f246ea` |
| 4 | `lemma` | [balance_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-add--1e3440b5910c937be03e3013.md) | 43 | `result-track:1e3440b5910c937be03e30134dc1bfce9817f8b6b856f20ab4896030dcae2c7e` |
| 5 | `lemma` | [balance_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-sub--fd34ee0ee435fcbcb27a435f.md) | 46 | `result-track:fd34ee0ee435fcbcb27a435f336b149ad6a2e30d6a057cb462318f871f5f9dbe` |
| 6 | `lemma` | [balance_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-neg--c605571498efe805ad9a2e39.md) | 49 | `result-track:c605571498efe805ad9a2e3918ce48fcb93d43a022b543130ac4462de01a534b` |
| 7 | `lemma` | [sum_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/sum-balance--f31b6f7f6f58ecfd1a6aa4c8.md) | 52 | `result-track:f31b6f7f6f58ecfd1a6aa4c8bc836201be139c9f6f5d6fe885917e9c55b60abc` |
| 8 | `lemma` | [expect_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/expect-balance--6c82456348aaae03be7d7021.md) | 55 | `result-track:6c82456348aaae03be7d7021001994a7d12ff9f56f2d3f4ee0d8265e1ce8ef73` |
| 9 | `lemma` | [balance_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/balance-idem--380475abc3f1f8403c3c46a1.md) | 57 | `result-track:380475abc3f1f8403c3c46a19af97c2216cfce633fa5ce705f6771440de0ee11` |
| 10 | `lemma` | [map_balance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Balance/Variant65cec581e2381f9fe834cc58d3c1c74007442820e594bf1ce200d0a565a379af.lean/declarations/map-balance--905948bee568b37481151015.md) | 60 | `result-track:905948bee568b374811510153d88fb1122f3e2a84d6528e926f9c7fadc2d3665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
