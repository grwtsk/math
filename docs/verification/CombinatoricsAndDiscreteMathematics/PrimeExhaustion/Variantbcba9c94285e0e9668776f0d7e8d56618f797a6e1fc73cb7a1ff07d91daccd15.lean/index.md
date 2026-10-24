# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeExhaustion.Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primesUpTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/primesupto--0b71ed9f25ae1fabfc0e11b7.md) | 18 | `declaration-track:0b71ed9f25ae1fabfc0e11b7a35fa39c5b275a61f7ca21d42dacd528085b9126` |
| 2 | `theorem` | [mem_primesUpTo_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/mem-primesupto-iff--eaa458c5cf63a726a790f9ce.md) | 22 | `result-track:eaa458c5cf63a726a790f9ceb293a09d457de320c4f7823a65dcce08d586d40d` |
| 3 | `theorem` | [primesUpTo_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/primesupto-prime--398e398bac44dcedf72b758a.md) | 33 | `result-track:398e398bac44dcedf72b758af71b5a9b23ac34112ae9afb37c55f8cfba920799` |
| 4 | `theorem` | [primesUpTo_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/primesupto-pos--662d780cb067d3f101d487bc.md) | 39 | `result-track:662d780cb067d3f101d487bc3096d0d949001b0a69bb5f99a64237acc4f10fd8` |
| 5 | `theorem` | [prime_factor_mem_primesUpTo_of_dvd_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/prime-factor-mem-primesupto-of-dvd-le--00ddbe191b5b61ff73b1c07f.md) | 45 | `result-track:00ddbe191b5b61ff73b1c07f1c461ee0f5be932fb80a7ef2cb18556062604db5` |
| 6 | `theorem` | [factorization_le_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/factorization-le-self--2b39929195836b3b2252f119.md) | 55 | `result-track:2b39929195836b3b2252f119622ab40f8809098d3ba3d51d73b8f029e835a0a0` |
| 7 | `theorem` | [factorization_support_subset_primesUpTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/factorization-support-subset-primesupto--42d64f1a402f7e540666b841.md) | 72 | `result-track:42d64f1a402f7e540666b841989cd429d3113b3bbda3c8160d6d578b025fe947` |
| 8 | `theorem` | [nat_mem_boundedSmoothNumbers_primesUpTo_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/nat-mem-boundedsmoothnumbers-primesupto-self--36c2f31edc8577f400f6764f.md) | 87 | `result-track:36c2f31edc8577f400f6764fe40a62692fe10be9467e0c25cd97ed05a66dfc31` |
| 9 | `theorem` | [Icc_subset_boundedSmoothNumbers_primesUpTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/declarations/icc-subset-boundedsmoothnumbers-primesupto--8183011a78b5b49d10367dce.md) | 118 | `result-track:8183011a78b5b49d10367dce438d31f5943796f839eb250af0996f029c001258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
