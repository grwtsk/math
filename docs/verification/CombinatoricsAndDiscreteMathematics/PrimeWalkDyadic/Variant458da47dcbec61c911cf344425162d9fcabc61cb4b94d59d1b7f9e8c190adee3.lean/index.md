# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeWalkDyadic.Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a173235a2713200db525d98f6819a8662a476100",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a173235a2713200db525d98f6819a8662a476100`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicinterval--9000c72133d704339c6da727.md) | 38 | `declaration-track:9000c72133d704339c6da727a00ff26c0b262f8948feb41e9cc8892416f79137` |
| 2 | `def` | [discreteDyadicSlice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/discretedyadicslice--f05bfa7dd2c341f82a090422.md) | 44 | `declaration-track:f05bfa7dd2c341f82a090422f78781153fa52c81da195156c993ab2e083ff630` |
| 3 | `def` | [dyadicBlockMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicblockmass--d3c5b19cf2b906ef1c04894c.md) | 50 | `declaration-track:d3c5b19cf2b906ef1c04894c403482fb73827e4f51e6f78a3c1c4d2634654033` |
| 4 | `def` | [dyadicSampleFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicsamplefinset--0fcd14bdd47698552438e3e4.md) | 55 | `declaration-track:0fcd14bdd47698552438e3e40006c44e8876283efc0a8b29c849aaad6426525a` |
| 5 | `def` | [dyadicHarmonicMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicharmonicmass--c78c9a940c772c05630021c9.md) | 61 | `declaration-track:c78c9a940c772c05630021c927cf74f8d8706f16b70e95eb53eb91609fc3a6e8` |
| 6 | `def` | [dyadicHarmonicNormalizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicharmonicnormalizer--95625c52dce68bdcf717dc2a.md) | 67 | `declaration-track:95625c52dce68bdcf717dc2aecb2645fddf8fce9afb9cbd5cdc7ee99cb5ff3e4` |
| 7 | `theorem` | [mem_dyadicInterval_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/mem-dyadicinterval-iff--53e344ccd696cfb10993efeb.md) | 75 | `result-track:53e344ccd696cfb10993efeb54f3383f974620a5c1a11beb32a737295b289f3d` |
| 8 | `theorem` | [dyadicInterval_lower_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicinterval-lower-mem--75a801cc9e5acf2e59cbddb3.md) | 81 | `result-track:75a801cc9e5acf2e59cbddb3b13c52c28408d4c0b2bd086d415690d72148543c` |
| 9 | `theorem` | [dyadicInterval_upper_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicinterval-upper-not-mem--9c9262b80403326eb30f8608.md) | 92 | `result-track:9c9262b80403326eb30f8608896f3854d2fc05ed62f6e0735d6b83347b98eb30` |
| 10 | `theorem` | [card_dyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/card-dyadicinterval--b8cbfeee0d325519d077f351.md) | 98 | `result-track:b8cbfeee0d325519d077f35109fb22554118dde4a610e90bb52e9baf28e1ce3b` |
| 11 | `theorem` | [dyadicInterval_disjoint_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicinterval-disjoint-succ--ff54ee9d0f7f9ddd78d0ab22.md) | 105 | `result-track:ff54ee9d0f7f9ddd78d0ab22329499ab36c12abc8c9ca010ee62126b6954a6ea` |
| 12 | `theorem` | [dyadicInterval_union_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicinterval-union-succ--28dcc69d618fca64508c6286.md) | 112 | `result-track:28dcc69d618fca64508c628677a1abecdda3db4ce28bb835ce00cc178fec85ab` |
| 13 | `theorem` | [discreteDyadicSlice_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/discretedyadicslice-eq-of-mem--bdf2951f173eb46bd501dec9.md) | 123 | `result-track:bdf2951f173eb46bd501dec93f611e7fc8ed5e85eef0b163e337a6dbd093bec3` |
| 14 | `theorem` | [discreteDyadicSlice_eq_zero_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/discretedyadicslice-eq-zero-of-not-mem--6f5aa9c21b0e5a2907d8ae52.md) | 130 | `result-track:6f5aa9c21b0e5a2907d8ae5244dcc6134efecec271a1895c6c25b7aeb713376c` |
| 15 | `theorem` | [dyadicBlockMass_slice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicblockmass-slice--d90d0d8c858bdd99284c55a3.md) | 137 | `result-track:d90d0d8c858bdd99284c55a3916bb6dd2b73395f962a37349656bdab2885b18b` |
| 16 | `theorem` | [dyadicBlockMass_add_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicblockmass-add-succ--35a613bf8ff2333a90897895.md) | 147 | `result-track:35a613bf8ff2333a908978952d0e1c0e6133b365da75e4703a15149eb851d5bc` |
| 17 | `theorem` | [dyadicHarmonicMass_eq_blockMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicharmonicmass-eq-blockmass--6973f9ee04ba4c9268e7d5f9.md) | 159 | `result-track:6973f9ee04ba4c9268e7d5f9cdd2c458383e79daa874afadeb9f6b4a335d2512` |
| 18 | `theorem` | [dyadicHarmonicMass_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicharmonicmass-univ--8a4090f86ef5131cc5bfcb83.md) | 168 | `result-track:8a4090f86ef5131cc5bfcb8371dd8a405c16ca4dcd0f4bd38e31f60f47444bf2` |
| 19 | `theorem` | [harmonicMeasure_dyadicSample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/harmonicmeasure-dyadicsample--30a2047deefb4e28e1b50b89.md) | 175 | `result-track:30a2047deefb4e28e1b50b89b87430e5ebc3bacb08d6dd7e31ef8a05eb3119fc` |
| 20 | `theorem` | [harmonicMeasure_dyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/harmonicmeasure-dyadicinterval--ef5c936a6a27d5c43bfbf63b.md) | 186 | `result-track:ef5c936a6a27d5c43bfbf63bfc8121c9c1232bf0a1831cb14a0ec6f0966475f6` |
| 21 | `theorem` | [dyadicHarmonicMass_add_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3.lean/declarations/dyadicharmonicmass-add-succ--36b49fae274c6790739d779c.md) | 194 | `result-track:36b49fae274c6790739d779cb074b485ac64d8f63e8682f14a2a098db3622d40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
