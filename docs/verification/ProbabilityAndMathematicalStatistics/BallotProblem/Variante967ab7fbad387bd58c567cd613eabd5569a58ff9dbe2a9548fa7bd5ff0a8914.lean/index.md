# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.BallotProblem.Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a7bca5244db2924da55c6950254f56ead1b6c20",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a7bca5244db2924da55c6950254f56ead1b6c20`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.UniformOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/stayspositive--465c8d1434fd5db2de896465.md) | 47 | `declaration-track:465c8d1434fd5db2de89646534467592c60485739fc96756e2f9b81c03166cfe` |
| 2 | `theorem` | [staysPositive_nil](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/stayspositive-nil--e0669dd06563f8aee6c50828.md) | 51 | `result-track:e0669dd06563f8aee6c508288f1f217eb0acaa711a2483da32e830d1bcf3dafd` |
| 3 | `theorem` | [staysPositive_suffix](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/stayspositive-suffix--725ea299c5c494c084c5e3ee.md) | 54 | `result-track:725ea299c5c494c084c5e3eece04465188d9d7758cfd69782a768b048cd9be2d` |
| 4 | `theorem` | [staysPositive_cons](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/stayspositive-cons--a3c3620b27148033027e10ab.md) | 57 | `result-track:a3c3620b27148033027e10abebf5fac9f1e599123f86b102fb0aab5628284720` |
| 5 | `theorem` | [sum_nonneg_of_staysPositive](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/sum-nonneg-of-stayspositive--b7eb8e2db722935cfb6893be.md) | 61 | `result-track:b7eb8e2db722935cfb6893bef0c20d277e130d7c6bb17f532259a6077980bafe` |
| 6 | `theorem` | [staysPositive_cons_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/stayspositive-cons-pos--2ba400dfa3e409045e4544fa.md) | 65 | `result-track:2ba400dfa3e409045e4544faa384f5c426ba0dca7c608566d9698c5897ac5a78` |
| 7 | `def` | [countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/countedsequence--ac9ca62dcc2f8975cc1db03f.md) | 78 | `declaration-track:ac9ca62dcc2f8975cc1db03f53e7a31cefea96083ae8f2d0a4850f7ae2470b17` |
| 8 | `theorem` | [mem_countedSequence_iff_perm](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/mem-countedsequence-iff-perm--246a1c2737b270e50114f4e0.md) | 83 | `result-track:246a1c2737b270e50114f4e06b75a90aea485f263ccb7d0cc0b283d518e7bad4` |
| 9 | `theorem` | [counted_right_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-right-zero--78f8b7e54054034f183965ed.md) | 91 | `result-track:78f8b7e54054034f183965ed4e70848c436efb705a76ec5f261e0c2a8f9da304` |
| 10 | `theorem` | [counted_left_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-left-zero--206fe99f570d9ec5cd9288d8.md) | 95 | `result-track:206fe99f570d9ec5cd9288d80c31b791e14b71e4327b8d7b36596e7ea87d756c` |
| 11 | `theorem` | [mem_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/mem-of-mem-countedsequence--acfb5cf3ab20e216823b8b50.md) | 98 | `result-track:acfb5cf3ab20e216823b8b50f975233b8b415f7353dc2c63abc6e4cc28af229c` |
| 12 | `theorem` | [length_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/length-of-mem-countedsequence--c464f9e02e525e294e41f416.md) | 102 | `result-track:c464f9e02e525e294e41f41646d3dbcd2c75a00ae661e1508e10d72baac1d18d` |
| 13 | `theorem` | [counted_eq_nil_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-eq-nil-iff--695d7c73697cffe8ddcdfea3.md) | 105 | `result-track:695d7c73697cffe8ddcdfea39312e0b23a2280c7ed975a26e9d89f0993963235` |
| 14 | `theorem` | [counted_ne_nil_left](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-ne-nil-left--49313f408c902601bdb0388d.md) | 109 | `result-track:49313f408c902601bdb0388df968fb92fd468359204699390c6083e591fdb8da` |
| 15 | `theorem` | [counted_ne_nil_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-ne-nil-right--704c931639ddf17ffcb5a85c.md) | 112 | `result-track:704c931639ddf17ffcb5a85c14c6e88843167bc417bfed1b3ea3773c21257b46` |
| 16 | `theorem` | [counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/counted-succ-succ--ae5ab0f0fa4c60107e744069.md) | 115 | `result-track:ae5ab0f0fa4c60107e744069668b991a44d15dfa058565bae7624c5d2db38c89` |
| 17 | `theorem` | [countedSequence_finite](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/countedsequence-finite--dca545a28d55a704cbdc28ae.md) | 148 | `result-track:dca545a28d55a704cbdc28ae719d92a88fafe3b85db1794cf78d196229db4aa1` |
| 18 | `theorem` | [countedSequence_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/countedsequence-nonempty--cfc2e437003a03361bd0764d.md) | 156 | `result-track:cfc2e437003a03361bd0764dcdc072b9b51450ea71c8bd45629dfac2839a93a6` |
| 19 | `theorem` | [sum_of_mem_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/sum-of-mem-countedsequence--5266588a136aba3ca687b020.md) | 163 | `result-track:5266588a136aba3ca687b0205ffba8d668237b6b2f6c31d85797eef97609d38c` |
| 20 | `theorem` | [disjoint_bits](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/disjoint-bits--eacda1f0954f6fce978bb4de.md) | 166 | `result-track:eacda1f0954f6fce978bb4def5a188dc8fa5f9fa1a516f977b1e5038878a822c` |
| 21 | `def` | [measurableSpace_list_int](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/measurablespace-list-int--d19d300b1d7a2fd657f309db.md) | 174 | `declaration-track:d19d300b1d7a2fd657f309db693d418763ff5ea163cc43869815414d193ab23e` |
| 22 | `theorem` | [measurableSingletonClass_list_int](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/measurablesingletonclass-list-int--4dcab8c1d1deb8223e3fb705.md) | 178 | `result-track:4dcab8c1d1deb8223e3fb705125061b030e68bd42aad333f9194c38521879da9` |
| 23 | `theorem` | [list_int_measurableSet](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/list-int-measurableset--6d020095ec23fc0bbb9fdaa5.md) | 183 | `result-track:6d020095ec23fc0bbb9fdaa5d030a047153d5af587cde7616c60bed796a3a026` |
| 24 | `theorem` | [count_countedSequence](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/count-countedsequence--5152af763954f5eac84a9947.md) | 185 | `result-track:5152af763954f5eac84a99471e8ca10409926a855d755a9b3dd49b71776e97fe` |
| 25 | `theorem` | [first_vote_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/first-vote-pos--eafff1c76ebbe11d387bdaa7.md) | 195 | `result-track:eafff1c76ebbe11d387bdaa710147bc3d4a9a4eb041d0b2951a0822a98811ebb` |
| 26 | `theorem` | [headI_mem_of_nonempty](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/headi-mem-of-nonempty--9c834debc9099101b5c192f8.md) | 232 | `result-track:9c834debc9099101b5c192f8d4151b8c7a10edf5edf04495f42353f8f04a62d3` |
| 27 | `theorem` | [first_vote_neg](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/first-vote-neg--afcdca01d4fa69ee6e246bc9.md) | 236 | `result-track:afcdca01d4fa69ee6e246bc9882bc9d11b72c1ae06be12bfdd34b624f0099cd7` |
| 28 | `theorem` | [ballot_same](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-same--859a068ae7b36470bd8950bb.md) | 246 | `result-track:859a068ae7b36470bd8950bbb1c5478f247fe636b02b6e077282584568c0c5df` |
| 29 | `theorem` | [ballot_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-edge--859b20812567a0fcdb2c3744.md) | 255 | `result-track:859b20812567a0fcdb2c3744e9a4f7f11bd110d5af53e080c1916ee9daae7c87` |
| 30 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/countedsequence-int-pos-counted-succ-succ--12127a78095384493f391ad6.md) | 262 | `result-track:12127a78095384493f391ad6aa0ba7465d6d0db4b56e60cddbf02b5854262f4b` |
| 31 | `theorem` | [ballot_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-pos--3841fdf625462e5288733ea1.md) | 273 | `result-track:3841fdf625462e5288733ea14d64c0497771ed98cc9dd4f52a059f91b7b09b44` |
| 32 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/countedsequence-int-neg-counted-succ-succ--2822b8eaac7ce1204ae04853.md) | 288 | `result-track:2822b8eaac7ce1204ae0485319bfe7e10b44eb74c6e545acfffdfce52d3f7e21` |
| 33 | `theorem` | [ballot_neg](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-neg--61a06740c7539457c77ec436.md) | 300 | `result-track:61a06740c7539457c77ec43649308b77263929d15de126b59e7b812b884f5bbf` |
| 34 | `theorem` | [ballot_problem'](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-problem--5d44d4e048725fd061df03d1.md) | 316 | `result-track:5d44d4e048725fd061df03d1791a96e4a0e2a62fcbe2384590670037636d4326` |
| 35 | `theorem` | [ballot_problem](../../../../mathematics/ProbabilityAndMathematicalStatistics/BallotProblem/Variante967ab7fbad387bd58c567cd613eabd5569a58ff9dbe2a9548fa7bd5ff0a8914.lean/declarations/ballot-problem--c3335f81cb47b1bad3db7173.md) | 355 | `result-track:c3335f81cb47b1bad3db717359476092937770100a11e53685b4aeda0820e958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
