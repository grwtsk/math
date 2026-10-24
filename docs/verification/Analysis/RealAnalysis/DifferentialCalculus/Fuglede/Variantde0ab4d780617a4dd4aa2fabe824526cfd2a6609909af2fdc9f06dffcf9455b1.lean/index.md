# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Fuglede.Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Exponential` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expMulMulExp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/expmulmulexp--81f1af569facaf06cbe5e2a0.md) | 77 | `declaration-track:81f1af569facaf06cbe5e2a0f5890450a64cebb547c5635d83089d09f871a697` |
| 2 | `lemma` | [expMulMulExp_eq_expUnitary_mul_mul_expUnitary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/expmulmulexp-eq-expunitary-mul-mul-expunitary--6fbd1810c36960be03177893.md) | 79 | `result-track:6fbd1810c36960be03177893124719bd3da15fc47d9668761b09400d616e6b9c` |
| 3 | `lemma` | [expMulMulExp_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/expmulmulexp-const--543b7c9094bf80716021a4e7.md) | 90 | `result-track:543b7c9094bf80716021a4e7195c28b5b9250cb81729b55d91f7ad000e796862` |
| 4 | `lemma` | [SemiconjBy.star_right_of_unital](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/semiconjby-star-right-of-unital--4056c63c0942966e0379888a.md) | 100 | `result-track:4056c63c0942966e0379888a34ab1b11f6747eb717f659a905cf9f77f2d601f8` |
| 5 | `lemma` | [isStarNormal_iff_forall_exp_mul_exp_mem_unitary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/isstarnormal-iff-forall-exp-mul-exp-mem-unitary--c785ff1c3cbd4dfe0d2c44ee.md) | 114 | `result-track:c785ff1c3cbd4dfe0d2c44eeefb91c0a6056c4e0120492d8ca1b72bd4a022204` |
| 6 | `lemma` | [SemiconjBy.star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/semiconjby-star-right--81a52e83205624ceab398f8b.md) | 174 | `result-track:81a52e83205624ceab398f8b7975f6189e2ac93570793af11a0a0b86ff5e7593` |
| 7 | `lemma` | [IsStarNormal.commute_star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/isstarnormal-commute-star-right--d37456a6dfa52515e048be67.md) | 185 | `result-track:d37456a6dfa52515e048be67abc3bde1817fafde40a111d63fbf3e89774a98ba` |
| 8 | `lemma` | [IsStarNormal.commute_star_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/isstarnormal-commute-star-left--79a64bead55ec9b0129c252c.md) | 191 | `result-track:79a64bead55ec9b0129c252c2cb8eebf374de904939c4d3fc8e6a48d6321fcb2` |
| 9 | `lemma` | [Set.Pairwise.commute_star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/set-pairwise-commute-star-right--2040d7939f56b7171fd4bee7.md) | 195 | `result-track:2040d7939f56b7171fd4bee7e1b2159c116b63aa50e0330586de1df4b987d49f` |
| 10 | `lemma` | [Set.Pairwise.commute_star_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/set-pairwise-commute-star-left--42a0ec9ac139dd1cd16af5fc.md) | 200 | `result-track:42a0ec9ac139dd1cd16af5fcdd6ebc7f72158e34cfe57f4d52e56c7cdba8aaa6` |
| 11 | `lemma` | [Set.Pairwise.commute_union_star_self_iff_of_isStarNormal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/set-pairwise-commute-union-star-self-iff-of-isstarnormal--ab34f0672dbdeb369ca27522.md) | 205 | `result-track:ab34f0672dbdeb369ca2752266c9ccacf1437a34684b2eb661515dbbd2d85716` |
| 12 | `lemma` | [CStarAlgebra.isMulCommutative_nonUnital_adjoin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/cstaralgebra-ismulcommutative-nonunital-adjoin--b1aa5463fa71086b57d899c9.md) | 213 | `result-track:b1aa5463fa71086b57d899c9642cac6c849a376ba6ed0ead8ff459c075b56eb6` |
| 13 | `lemma` | [CStarAlgebra.isMulCommutative_nonUnital_adjoin_pair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/cstaralgebra-ismulcommutative-nonunital-adjoin-pair--37b36e51e027fe9b7e077dbd.md) | 218 | `result-track:37b36e51e027fe9b7e077dbdff75343cfc64176515ffd9df42b35f45c21e8406` |
| 14 | `lemma` | [CStarAlgebra.isMulCommutative_adjoin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/cstaralgebra-ismulcommutative-adjoin--94bde2252039d419df7f9b24.md) | 231 | `result-track:94bde2252039d419df7f9b245f3c4a7c657fc8eb20d806d42f5fa04d0988012d` |
| 15 | `lemma` | [CStarAlgebra.isMulCommutative_adjoin_pair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/declarations/cstaralgebra-ismulcommutative-adjoin-pair--cd84aeece279ee4d4e18cf9d.md) | 236 | `result-track:cd84aeece279ee4d4e18cf9d71bbd2352a41a0f224d1cae7b0bb13798cab1cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
