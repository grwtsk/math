# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Associated.Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ba4dac19f41567aee9273ac6a67ffd76728700",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ba4dac19f41567aee9273ac6a67ffd76728700`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finsupp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_mem_multiset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/exists-mem-multiset-dvd--efe2f658eaccf3ab2f2de724.md) | 31 | `result-track:efe2f658eaccf3ab2f2de72435cbea71a7db895154d418c299b8a36957defbe4` |
| 2 | `theorem` | [exists_mem_multiset_map_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/exists-mem-multiset-map-dvd--605ed5de8b06afeeab12fb7d.md) | 41 | `result-track:605ed5de8b06afeeab12fb7d344b93cc45e81ff4f2ddcc7e90c8a124c17e90cd` |
| 3 | `theorem` | [exists_mem_finset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/exists-mem-finset-dvd--aaea5450c2065c17069f46fa.md) | 47 | `result-track:aaea5450c2065c17069f46fad179fe6790a34b98541e577d2ba02161e8b54e48` |
| 4 | `theorem` | [exists_associated_mem_of_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/exists-associated-mem-of-dvd-prod--85da4229aaed862a29f6768c.md) | 53 | `result-track:85da4229aaed862a29f6768c45378de0795c4b60fdf3b7cdc461172ef030ae0a` |
| 5 | `theorem` | [Multiset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/multiset-prod-primes-dvd--30959d614882fd64a356c0eb.md) | 64 | `result-track:30959d614882fd64a356c0eb3fa08c9c572618d1adc6c3e60fcc6a08859a2d7c` |
| 6 | `theorem` | [Finset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/finset-prod-primes-dvd--76f72c8a8ffeaf0eba80e7ba.md) | 85 | `result-track:76f72c8a8ffeaf0eba80e7ba47336c2251b27e7d99836c8f713b7b6692bc6425` |
| 7 | `theorem` | [prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prod-mk--ee108036e1c76aadde4053f9.md) | 109 | `result-track:ee108036e1c76aadde4053f9aa734b5fe1a9a2a5835deceab3505d2d7ae0e177` |
| 8 | `theorem` | [finset_prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/finset-prod-mk--993069219f723c6051a2e08a.md) | 113 | `result-track:993069219f723c6051a2e08ac23c6644d449175c280600fff5a0af4bec0a26ad` |
| 9 | `theorem` | [rel_associated_iff_map_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/rel-associated-iff-map-eq-map--c13919d7aebad78d8093415c.md) | 121 | `result-track:c13919d7aebad78d8093415cc860d2ba7bfc33b4155f7600edb872d721c4e298` |
| 10 | `theorem` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prod-eq-one-iff--1c830ad015f000623438d182.md) | 127 | `result-track:1c830ad015f000623438d182747396ae4a86638e8ce27259376e7ee393c1783d` |
| 11 | `theorem` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prod-le-prod--f395eafe13354c1e2905e516.md) | 133 | `result-track:f395eafe13354c1e2905e5161d1282b92371a34022016a7717c97b84486cc645` |
| 12 | `theorem` | [exists_mem_multiset_le_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/exists-mem-multiset-le-of-prime--a787eb0a3afe4f6ff007b204.md) | 147 | `result-track:a787eb0a3afe4f6ff007b204f8962ec410b490baa909770d730093c8ba09cdbc` |
| 13 | `theorem` | [prod_ne_zero_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prod-ne-zero-of-prime--8f40f81972419e763bbb7e96.md) | 165 | `result-track:8f40f81972419e763bbb7e966713ad9c6f95bde9660854a9e2b4a381f163bcd2` |
| 14 | `theorem` | [Prime.dvd_finset_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prime-dvd-finset-prod-iff--678180987a430f76215d29b8.md) | 178 | `result-track:678180987a430f76215d29b815b5a6bc261f0a566c3dba40ca2a64dfd39b754d` |
| 15 | `theorem` | [Prime.dvd_finsupp_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/declarations/prime-dvd-finsupp-prod-iff--2c663386bf5e69dd7da172dc.md) | 183 | `result-track:2c663386bf5e69dd7da172dcf56497d6786406782c70314bfeb77703831f6d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
