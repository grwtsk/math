# Verification target: GRWTSK.Algebra.Basic.Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef315479f205954d60ea96df5814a88600e378a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef315479f205954d60ea96df5814a88600e378a`.

Source path: `GRWTSK/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes--4809d01a8b3ff4661ec1b8e1.md) | 35 | `declaration-track:4809d01a8b3ff4661ec1b8e1d1e0e5e50451db66a9f5052a36c4a046e5d44b48` |
| 2 | `def` | [minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/minimalprimes--9b366a2e7e0488d55124de20.md) | 41 | `declaration-track:9b366a2e7e0488d55124de2071d39289af285d90f4b0334aec192b42e3003b6a` |
| 3 | `lemma` | [minimalPrimes_eq_minimals](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/minimalprimes-eq-minimals--9c1a861418b9748764c11f59.md) | 44 | `result-track:9c1a861418b9748764c11f592ee25f520caae6a6674c78f1e9b4ccdc50e4674c` |
| 4 | `theorem` | [Ideal.minimalPrimes_isPrime](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes-isprime--a238442023250e954934680c.md) | 49 | `result-track:a238442023250e954934680cb416bd49515a52daf82ff0152896098278dce42c` |
| 5 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-exists-minimalprimes-le--fcfa45dd2fc683483d1c4874.md) | 52 | `result-track:fcfa45dd2fc683483d1c4874d68df929b13e1fb675829038022490fb7fa884f9` |
| 6 | `theorem` | [Ideal.nonempty_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-nonempty-minimalprimes--fd5563b7c20453d3c9c686cb.md) | 70 | `result-track:fd5563b7c20453d3c9c686cb206a55f9c3f080c2c73bbfea444325f2751c750e` |
| 7 | `theorem` | [Ideal.eq_bot_of_minimalPrimes_eq_empty](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-eq-bot-of-minimalprimes-eq-empty--bc609fd0659e325c74bbe495.md) | 75 | `result-track:bc609fd0659e325c74bbe495d34c304becf54a087e6c7951ff2811a99cb55f5d` |
| 8 | `theorem` | [Ideal.radical_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-radical-minimalprimes--4e62a09f7a296ba385e2bab9.md) | 81 | `result-track:4e62a09f7a296ba385e2bab9063a2e9201aec2a4772f268b83ea38a9def454da` |
| 9 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-sinf-minimalprimes--f53ee316f38b0ddf1bae2db2.md) | 93 | `result-track:f53ee316f38b0ddf1bae2db2d90a5ae33148a682629292fa565d3ce4a7d00104` |
| 10 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes-eq-subsingleton--4534b99f60777d69bafddaf3.md) | 111 | `result-track:4534b99f60777d69bafddaf348e8f90431bf69416d16a1dc6db3396ec48a56f1` |
| 11 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes-eq-subsingleton-self--9a954b9acc0bcb4bd66044a7.md) | 120 | `result-track:9a954b9acc0bcb4bd66044a7219d0758b2da4dcedbe9eb28c59835b1e0240def` |
| 12 | `theorem` | [Ideal.minimalPrimes_top](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes-top--8643cf116ab348fa106fe31f.md) | 133 | `result-track:8643cf116ab348fa106fe31f1846c7cf94cbc48973f80e42e5854a498d736266` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_empty_iff](../../../../mathematics/Algebra/Basic/Variantc546da3c4c02ed211719b4597ae8828918af4b409eb6dd29eed6ecb43a7ba24a.lean/declarations/ideal-minimalprimes-eq-empty-iff--065cdc0590f4bc04536c2a09.md) | 139 | `result-track:065cdc0590f4bc04536c2a09f88f165250ebfc0f4efe6ddf102ed8f8ce2a3e57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
