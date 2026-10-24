# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lifts.Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3660928f055cfa8758d2971351c9691e02309b02",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3660928f055cfa8758d2971351c9691e02309b02`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts--c1ce03e91c19d243f20e6057.md) | 68 | `declaration-track:c1ce03e91c19d243f20e605791a0e9328b50213b175dd090cc0a50d81656f3d2` |
| 2 | `theorem` | [mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/mem-lifts--306b68d31cff6314a95a1f1f.md) | 71 | `result-track:306b68d31cff6314a95a1f1fb6eae5ce64e25e523ce4e13157af0c7f3e78022c` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-iff-set-range--4bad74cf32f6b25b5c78c973.md) | 74 | `result-track:4bad74cf32f6b25b5c78c97318d4eefaa8958ec7476111b2b7a59cad17d337c0` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-iff-ringhom-ranges--98b4d38b3bb451e57dbc0a21.md) | 77 | `result-track:98b4d38b3bb451e57dbc0a21e4d714bf1f42139d5a37fcecb7380a3a22a2181e` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-iff-coeff-lifts--4dfe197074d63dc73254b340.md) | 80 | `result-track:4dfe197074d63dc73254b3402f8db9b211f24ddf4c3b962c5a25e75a0c9de944` |
| 6 | `theorem` | [lifts_iff_coeffs_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-iff-coeffs-subset-range--8d5c970c57d1e8967f680720.md) | 84 | `result-track:8d5c970c57d1e8967f680720bf27f391c86b42016eb3810b7cf8b1d866cd63c7` |
| 7 | `theorem` | [mem_lifts_of_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/mem-lifts-of-surjective--ca130bd8bc631fabf1402a68.md) | 96 | `result-track:ca130bd8bc631fabf1402a686791ade30daed40c0e2291dd4fbdbdb8eb14014e` |
| 8 | `theorem` | [C_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/c-mem-lifts--d22b5aed63840bf777396e2a.md) | 100 | `result-track:d22b5aed63840bf777396e2aefc619ba004fdd49937e8cf02d92b3626835fceb` |
| 9 | `theorem` | [C'_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/c-mem-lifts--bf03426f3b05cd47e32472fc.md) | 105 | `result-track:bf03426f3b05cd47e32472fcd1619836fa10d8d5d3f20c22065c5913c9aa3533` |
| 10 | `theorem` | [X_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/x-mem-lifts--6d50c6018b7f8e0f38995c31.md) | 111 | `result-track:6d50c6018b7f8e0f38995c31ffddd2683334c702b6ea86df489a3ee4044663ee` |
| 11 | `theorem` | [X_pow_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/x-pow-mem-lifts--f41a67f8e072f8460b3ec751.md) | 116 | `result-track:f41a67f8e072f8460b3ec751c5b3249be5e2de96ec537ea700d772ca01ef7b02` |
| 12 | `theorem` | [base_mul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/base-mul-mem-lifts--446c9259dacfcfce2757e130.md) | 121 | `result-track:446c9259dacfcfce2757e1304c38687a48ac07f6e0623d5195db5d542fb5cdd8` |
| 13 | `theorem` | [monomial_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/monomial-mem-lifts--b188c407d0704450ef7e8d38.md) | 128 | `result-track:b188c407d0704450ef7e8d3888d35ff142e37457f3e9c924318dc3b194e3cb21` |
| 14 | `theorem` | [erase_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/erase-mem-lifts--c69478edaaf0f1fe4a0cddf9.md) | 134 | `result-track:c69478edaaf0f1fe4a0cddf981a8c66e1ac9bd3aac26641c1733913f6b7cfc20` |
| 15 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/monomial-mem-lifts-and-degree-eq--7f27962d44bc89127dd6dde1.md) | 146 | `result-track:7f27962d44bc89127dd6dde1080f7b0741c83ed818e8de782e7128fe19a6b62f` |
| 16 | `theorem` | [exists_support_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/exists-support-eq-of-mem-lifts--701f07fe47fef6650352cdb0.md) | 156 | `result-track:701f07fe47fef6650352cdb08ccbb86bad5ff5466628ba4fc925bc358b85862a` |
| 17 | `theorem` | [exists_degree_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/exists-degree-eq-of-mem-lifts--541d668fd63019dea9102e00.md) | 170 | `result-track:541d668fd63019dea9102e00493e2f810226ccddfdf15a15cb339c82f2bc50e7` |
| 18 | `theorem` | [exists_natDegree_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/exists-natdegree-eq-of-mem-lifts--545930561b4851e211d86a52.md) | 175 | `result-track:545930561b4851e211d86a52bdf22fde1dc91367b1f23ee5b395744e853ea979` |
| 19 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-and-degree-eq-and-monic--b600818df7327f0081d0755c.md) | 185 | `result-track:b600818df7327f0081d0755c94ad0c03d437a90e83e0406b119223e9d5884950` |
| 20 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-and-natdegree-eq-and-monic--1739758dfd64d12a1f84db65.md) | 197 | `result-track:1739758dfd64d12a1f84db6592943da37f71d20b90f1c515d82bb8011be665db` |
| 21 | `def` | [liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/liftsring--0903725097270262423e389d.md) | 214 | `declaration-track:0903725097270262423e389d760f842c1f19a80c64d8c58b4e33059a790aa6a9` |
| 22 | `theorem` | [lifts_iff_liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/lifts-iff-liftsring--b9cba3f45ea69f7e08eb0bfd.md) | 219 | `result-track:b9cba3f45ea69f7e08eb0bfd81b031f794b779830da79d1874508a55e1cfb2cf` |
| 23 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/mem-lifts-iff-mem-alg--40f6710e86fb8e56c1796d65.md) | 229 | `result-track:40f6710e86fb8e56c1796d65b4327ae2628f40e2bae50ce86ccfb1a887d19cdd` |
| 24 | `theorem` | [smul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/smul-mem-lifts--8845f448d2d72634c5f0e351.md) | 234 | `result-track:8845f448d2d72634c5f0e351607874bbc5536008823d9d3923ad70cf8e7037a2` |
| 25 | `theorem` | [monic_of_monic_mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant2b3e8b173d273fed1a47f7cbee4950cfe80ef9b2e1bd557d8533df845f192197.lean/declarations/monic-of-monic-mapalg--8f118bc71bae9351038870ed.md) | 239 | `result-track:8f118bc71bae9351038870ed5bc8fc782af1f0a4fd329a89558f574039842013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
