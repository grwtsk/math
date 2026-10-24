# Verification target: GRWTSK.Algebra.MinimalPrime.Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8fda48eef7d03fb60c2504b6ed42f32ac11305f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8fda48eef7d03fb60c2504b6ed42f32ac11305f`.

Source path: `GRWTSK/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-minimalprimes--a970dacc118664afa5daf1ef.md) | 46 | `declaration-track:a970dacc118664afa5daf1efc41a917e04756302c907466907402973a15d9727` |
| 2 | `def` | [minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/minimalprimes--78a65422eb8fd8a51d2f06cf.md) | 52 | `declaration-track:78a65422eb8fd8a51d2f06cf120e99f92feb4ffa45e5b251e4607ca62bbe521f` |
| 3 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-exists-minimalprimes-le--95a8591eff948a4257e13750.md) | 58 | `result-track:95a8591eff948a4257e1375069b2c2471be4fbd363337caa81434994b96c0cc7` |
| 4 | `theorem` | [Ideal.radical_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-radical-minimalprimes--f8a2fab3409dc59da8ae3a20.md) | 80 | `result-track:f8a2fab3409dc59da8ae3a207819d4c92b8eac8370f39a7915388d8d92d02bf1` |
| 5 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-sinf-minimalprimes--f8a23a9ae1176936c8088abb.md) | 94 | `result-track:f8a23a9ae1176936c8088abb6351b5d76bec386fdc36c471bd983bb75a33277c` |
| 6 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--13439eb3bb62222cb3bee694.md) | 107 | `result-track:13439eb3bb62222cb3bee694ada96a5d5ce0964389b752bc0c4ed9953895f7ff` |
| 7 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes--ea14bd6b3251fc77db9e6481.md) | 131 | `result-track:ea14bd6b3251fc77db9e6481922716b09bd766e6a126bda72dda3423158ded7b` |
| 8 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-exists-minimalprimes-comap-eq--3e3272194b13a1466fd9fe25.md) | 164 | `result-track:3e3272194b13a1466fd9fe254d829e68fabbd68ec310a8dab69b66ff2bcd1949` |
| 9 | `theorem` | [Ideal.mimimal_primes_comap_of_surjective](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-mimimal-primes-comap-of-surjective--de18f263cd3f37f5408d5476.md) | 174 | `result-track:de18f263cd3f37f5408d54768f5e448abb88bc3480d79b0703b024ad4a9cd8ef` |
| 10 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective--0728fac5bd26dbcb278bdc2d.md) | 187 | `result-track:0728fac5bd26dbcb278bdc2db7928eff2a5e341c2cc9de6ca2ef7c52ef5462a9` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-minimalprimes-eq-comap--06907f8cb25c98dc4e0dcda1.md) | 198 | `result-track:06907f8cb25c98dc4e0dcda152a0490c1546a31206f65a7a983c2dbe7a3da146` |
| 12 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-minimalprimes-eq-subsingleton--0f02036847eb8444579c720d.md) | 204 | `result-track:0f02036847eb8444579c720d2a1411a12a239aed6934bdf422315a179fce1c54` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../mathematics/Algebra/MinimalPrime/Variantc9018f1faf06c9fc8fcad9e912986d9018005bf9b41e78cc994a1526971da248.lean/declarations/ideal-minimalprimes-eq-subsingleton-self--51349b0e135a48fad107b5ab.md) | 214 | `result-track:51349b0e135a48fad107b5ab7618c80bd8f797ee0b081dee2b11182a1d779aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
