# Verification target: GRWTSK.Algebra.UniversalAlgebra.Canonical.Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicallyOrderedCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/canonicallyorderedcommsemiring--b8bf8af288234699c1075271.md) | 36 | `declaration-track:b8bf8af288234699c1075271d93fc0a8b4d9800ff34058d1a099485f050e321f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/instance--359e931b1b21c23a700118be.md) | 44 | `declaration-track:359e931b1b21c23a700118befe435199d07468c196885c87f5764d11740d3961` |
| 3 | `lemma` | [Odd.pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/odd-pos--65ef560e7a3065b33aedd220.md) | 50 | `result-track:65ef560e7a3065b33aedd22012c338c2d1de2b4c6b22f85b955a5d68c0116d11` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/instance--ef5b6d3b16a3ed5b2984d3c2.md) | 57 | `declaration-track:ef5b6d3b16a3ed5b2984d3c241773bf0c8f8ab56ce713ff597c2336b511cc708` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/instance--1403eaa133cfe25054dd3cb0.md) | 66 | `declaration-track:1403eaa133cfe25054dd3cb072f0db565a32fcb41115efb54e8295d9d7907ea5` |
| 6 | `lemma` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/toisorderedmonoid--811d59a85a3a3421abd2378c.md) | 77 | `result-track:811d59a85a3a3421abd2378c3313d1224c216be57d92a39d5c7770d802ba979e` |
| 7 | `lemma` | [toIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/toisorderedring--77e1d33f3c8d66209125f486.md) | 81 | `result-track:77e1d33f3c8d66209125f4868f4355f05e2c56c67934db17ac2570b6aa0fd4e3` |
| 8 | `theorem` | [mul_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-pos--c8b57fd8c48f50af5dfd223f.md) | 88 | `result-track:c8b57fd8c48f50af5dfd223f098d5c36f4ca770d1925570eb070df2fe8b8bd57` |
| 9 | `lemma` | [pow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/pow-pos--3f270dfea698f4e68cc346c0.md) | 92 | `result-track:3f270dfea698f4e68cc346c082be2060acbfb9d6eab8f3ecc7ba2ee8a371d4e0` |
| 10 | `lemma` | [mul_lt_mul_of_lt_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-lt-mul-of-lt-of-lt--2edd37652f35ad1d0fd118a1.md) | 95 | `result-track:2edd37652f35ad1d0fd118a1b047672e4fa444d39d5ccf1eabe7605011da1277` |
| 11 | `theorem` | [mul_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-tsub--c50afda1926fa9458d218ec8.md) | 116 | `result-track:c50afda1926fa9458d218ec882c2a2ff566ccfeb73abea6aef73e480c150ade8` |
| 12 | `theorem` | [tsub_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/tsub-mul--6afeaa8f0881dd0294976ae4.md) | 123 | `result-track:6afeaa8f0881dd0294976ae4e199af913732351dea7d30cbbd10f26cf9b624a5` |
| 13 | `theorem` | [mul_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-tsub--df87582994f43ff42f8963de.md) | 134 | `result-track:df87582994f43ff42f8963deab35672d5487340e97eb781bd3da9be7cb6db919` |
| 14 | `theorem` | [tsub_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/tsub-mul--89d0e1713eef6942a7120c38.md) | 137 | `result-track:89d0e1713eef6942a7120c386925241842fdd7f0e17b0816109a6f8694c015d1` |
| 15 | `lemma` | [mul_tsub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-tsub-one--c53895c7446af8cdc4369d06.md) | 148 | `result-track:c53895c7446af8cdc4369d06474d29c77daf5535b5831d7058e6f69bf8280c5c` |
| 16 | `lemma` | [tsub_one_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/tsub-one-mul--461bcd3774f7fd61a8d589d3.md) | 150 | `result-track:461bcd3774f7fd61a8d589d3cdc5da0131213928d2a9de2c2f95ca54f5d1eae2` |
| 17 | `theorem` | [mul_self_tsub_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-self-tsub-mul-self--45dfa29c4c25d304272c53fa.md) | 161 | `result-track:45dfa29c4c25d304272c53fa9aed3e73ab3f58e7a917ec72fc520d284fd2957d` |
| 18 | `theorem` | [sq_tsub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/sq-tsub-sq--ccf41c15cf5c4880c5d6330c.md) | 166 | `result-track:ccf41c15cf5c4880c5d6330cf935ee333ee245238be69e05d9ce65153c229cfc` |
| 19 | `theorem` | [mul_self_tsub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/declarations/mul-self-tsub-one--e7a5e1ee8019776e07cf7e1b.md) | 169 | `result-track:e7a5e1ee8019776e07cf7e1bf5ec25a9b5f6b2ce29168c19bb0dbe8702f6c340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
