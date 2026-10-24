# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zeckendorf.Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5c19aa082a8c56d413b0a8faeb6ae4bcdf0d469",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5c19aa082a8c56d413b0a8faeb6ae4bcdf0d469`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/instance--0d43b2550ac8374a0405a3d4.md) | 45 | `declaration-track:0d43b2550ac8374a0405a3d4336322b68af1afbd170c9080533b62eea3c55e5c` |
| 2 | `def` | [IsZeckendorfRep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/iszeckendorfrep--4289752adcb8c26ec026b444.md) | 56 | `declaration-track:4289752adcb8c26ec026b444ceb97a94f3e6dc99faff4dba575f09dd52117df5` |
| 3 | `lemma` | [IsZeckendorfRep_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/iszeckendorfrep-nil--cdd9d0b68446b7df6bce4c82.md) | 59 | `result-track:cdd9d0b68446b7df6bce4c8246d41f2497afebbfc8b253f3fcae46a73acde227` |
| 4 | `lemma` | [IsZeckendorfRep.sum_fib_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/iszeckendorfrep-sum-fib-lt--c02b742ddca92bf31ac08999.md) | 61 | `result-track:c02b742ddca92bf31ac0899901a73106d395654dcb05becfe79f2b51871af5bd` |
| 5 | `def` | [greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib--10232d0d83e5c47f53b2ce3f.md) | 81 | `declaration-track:10232d0d83e5c47f53b2ce3f60b16028ecef81d44daec6f7dc96353b7dca3840` |
| 6 | `lemma` | [fib_greatestFib_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/fib-greatestfib-le--4a8b6a6d2e20b916113857f3.md) | 83 | `result-track:4a8b6a6d2e20b916113857f3c2448c7aa2cf2ab77899612b0c565ab8d7971bd7` |
| 7 | `lemma` | [greatestFib_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-mono--9c07dd11f54ea8355db5196b.md) | 86 | `result-track:9c07dd11f54ea8355db5196b4c07fdb51067c0537ae79d04e5fcbcd033b7f0b2` |
| 8 | `lemma` | [le_greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/le-greatestfib--8053501babad4209d59e19a1.md) | 89 | `result-track:8053501babad4209d59e19a1be6cfaf0443f921f84d2ec09b4fdfe887919bfa6` |
| 9 | `lemma` | [greatestFib_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-lt--a5dada3f78c9ba9b02b5b3eb.md) | 93 | `result-track:a5dada3f78c9ba9b02b5b3ebb8c156a66a85fec152093468814fb71c022647d8` |
| 10 | `lemma` | [lt_fib_greatestFib_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/lt-fib-greatestfib-add-one--56880211d51ed04cd6f2f455.md) | 96 | `result-track:56880211d51ed04cd6f2f455abe610b8fa524b603983b686ba3380765a34d9d4` |
| 11 | `lemma` | [greatestFib_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-fib--195ab6f9cebad1914b574a7c.md) | 99 | `result-track:195ab6f9cebad1914b574a7c7c908e752fa0341b427a3ce52b6afa2a67790ad6` |
| 12 | `lemma` | [greatestFib_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-eq-zero--53c19ca6f109b2f3bfc9a602.md) | 104 | `result-track:53c19ca6f109b2f3bfc9a60263eba64fece3a2852a4a5b20830751386122a85f` |
| 13 | `lemma` | [greatestFib_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-ne-zero--ef14119ff75eb8cc2b228bae.md) | 107 | `result-track:ef14119ff75eb8cc2b228bae78acb26230c0b719e41bc55564bb5abdf2d0617e` |
| 14 | `lemma` | [greatestFib_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-pos--de71f3aeb4302bf93e8209ec.md) | 109 | `result-track:de71f3aeb4302bf93e8209eca5c0abc47bcbab5adf2ef75accca061b024a7963` |
| 15 | `lemma` | [greatestFib_sub_fib_greatestFib_le_greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/greatestfib-sub-fib-greatestfib-le-greatestfib--69f87fde9c6b1402c1235b91.md) | 111 | `result-track:69f87fde9c6b1402c1235b91dd97c3835de280d8987e556da4df800c9b8adf73` |
| 16 | `lemma` | [zeckendorf_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf-aux--510261b3436db3abbf97c7e7.md) | 119 | `result-track:510261b3436db3abbf97c7e766d5cb87bd854855f0d52df670c02ceabe8d7f64` |
| 17 | `def` | [zeckendorf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf--c77e9890bbece19e9a45bfe9.md) | 126 | `declaration-track:c77e9890bbece19e9a45bfe9126114858cb65e3afb4bd9094353706dd8d8b1a0` |
| 18 | `lemma` | [zeckendorf_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf-zero--b5dea04fea5590a2e5fb382a.md) | 134 | `result-track:b5dea04fea5590a2e5fb382a3ad0a7e583739ecd01c7ba36fccd7ff00342e588` |
| 19 | `lemma` | [zeckendorf_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf-succ--67fbb02092cb8312a014bfb6.md) | 136 | `result-track:67fbb02092cb8312a014bfb6387b2cc4735e1f2d1acc5c75ae1e7c646bde2b77` |
| 20 | `lemma` | [zeckendorf_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf-of-pos--d223db609a8e2b45e3e672ba.md) | 140 | `result-track:d223db609a8e2b45e3e672bad5c5bd64bea9cca1e9fc145741588cd5783c49a8` |
| 21 | `lemma` | [isZeckendorfRep_zeckendorf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/iszeckendorfrep-zeckendorf--faa9139c52c863fb0427102b.md) | 144 | `result-track:faa9139c52c863fb0427102b23e77e7c527ddefec8a6c5d59adfcc276c6b0bd0` |
| 22 | `lemma` | [zeckendorf_sum_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorf-sum-fib--e47193327437994426d0e22a.md) | 158 | `result-track:e47193327437994426d0e22aa2398d9cb4f0ccba95b7686696079dac97b2d473` |
| 23 | `lemma` | [sum_zeckendorf_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/sum-zeckendorf-fib--346efac4991933c4a2563618.md) | 175 | `result-track:346efac4991933c4a2563618885b6dd90df8b1c8c638f1a0ee1dae6c5e15502c` |
| 24 | `def` | [zeckendorfEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant725299740051c946a12527c2d277a622e186d78566799245c638a759ac64e82a.lean/declarations/zeckendorfequiv--9575bcd7211f4daf8267f3cd.md) | 181 | `declaration-track:9575bcd7211f4daf8267f3cd28b2b2b137ec18e2c58c881f1978262a76cc314d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
