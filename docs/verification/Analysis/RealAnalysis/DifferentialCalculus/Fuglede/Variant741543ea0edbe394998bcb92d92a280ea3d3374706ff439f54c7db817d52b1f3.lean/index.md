# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Fuglede.Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef263280eedf310d800336a2ed6c38d8737594d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Exponential` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expMulMulExp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/expmulmulexp--449cfe54c5b3ae6c0ff17d96.md) | 69 | `declaration-track:449cfe54c5b3ae6c0ff17d96c8141ebf46ee3dcb3f3dbeaa9b33a00d4f04c268` |
| 2 | `lemma` | [expMulMulExp_eq_expUnitary_mul_mul_expUnitary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/expmulmulexp-eq-expunitary-mul-mul-expunitary--1e041d000017b8cd00e7b128.md) | 71 | `result-track:1e041d000017b8cd00e7b128b77d3cb6bdccc1c7f54724e45c9472c810815fab` |
| 3 | `lemma` | [expMulMulExp_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/expmulmulexp-const--72d110cd79021d87fe0a8eff.md) | 82 | `result-track:72d110cd79021d87fe0a8eff9dfb71f9d1737d3428e514e0101d33c993b47dd8` |
| 4 | `lemma` | [SemiconjBy.star_right_of_unital](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/semiconjby-star-right-of-unital--1d9e185f4c416f98577984e4.md) | 92 | `result-track:1d9e185f4c416f98577984e4355d2d4632ae5310c852a19c075a428b4d81a8e9` |
| 5 | `lemma` | [isStarNormal_iff_forall_exp_mul_exp_mem_unitary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/isstarnormal-iff-forall-exp-mul-exp-mem-unitary--9dcbf26709bbe9668fec707f.md) | 106 | `result-track:9dcbf26709bbe9668fec707fd496fbd817db41f9e04ebf6332d5b5d38d972c8a` |
| 6 | `lemma` | [SemiconjBy.star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/semiconjby-star-right--b133dd6041bccb449bfb7b15.md) | 166 | `result-track:b133dd6041bccb449bfb7b1583f2f0154f92b51d43600b66f794f207e83c0f88` |
| 7 | `lemma` | [IsStarNormal.commute_star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/isstarnormal-commute-star-right--dd50a0132e4d5bde4c632787.md) | 177 | `result-track:dd50a0132e4d5bde4c63278757500988c3c74c0637b1b046fc5a7ff8178bc396` |
| 8 | `lemma` | [IsStarNormal.commute_star_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/isstarnormal-commute-star-left--0478f43047255353e85176f9.md) | 183 | `result-track:0478f43047255353e85176f9f10711fdb643ff390676a7d83225f48577a1ff0b` |
| 9 | `lemma` | [Set.Pairwise.commute_star_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/set-pairwise-commute-star-right--42602d5d44eae71ba623fb4b.md) | 187 | `result-track:42602d5d44eae71ba623fb4b29ba6a64892313aed34b450669efc2c8fc531b95` |
| 10 | `lemma` | [Set.Pairwise.commute_star_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/set-pairwise-commute-star-left--da0361bd1ec39e2cb80eaa25.md) | 192 | `result-track:da0361bd1ec39e2cb80eaa25018aba6e847b44ce5a3053b6d67b7a2d6ec0a0b0` |
| 11 | `lemma` | [Set.Pairwise.commute_union_star_self_iff_of_isStarNormal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/set-pairwise-commute-union-star-self-iff-of-isstarnormal--147df5529450189ed81d96a0.md) | 197 | `result-track:147df5529450189ed81d96a009a5f0e02773ad37a0a40494c5fd5c3cf2522db7` |
| 12 | `lemma` | [CStarAlgebra.isMulCommutative_nonUnital_adjoin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/cstaralgebra-ismulcommutative-nonunital-adjoin--bb05108b8dee9bf916500eb3.md) | 205 | `result-track:bb05108b8dee9bf916500eb3cbf01d0820f53608f21fe70fd4981a4a2c5ae460` |
| 13 | `lemma` | [CStarAlgebra.isMulCommutative_nonUnital_adjoin_pair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/cstaralgebra-ismulcommutative-nonunital-adjoin-pair--0d5c992a5bc7cf1fe81326fa.md) | 210 | `result-track:0d5c992a5bc7cf1fe81326fa3ecba8a18667171251578c5264409bd84b9aaef1` |
| 14 | `lemma` | [CStarAlgebra.isMulCommutative_adjoin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/cstaralgebra-ismulcommutative-adjoin--5ece65444c5809095e1cd3b6.md) | 223 | `result-track:5ece65444c5809095e1cd3b6bd62bd563511a891165b1f6935f73770dbc22d30` |
| 15 | `lemma` | [CStarAlgebra.isMulCommutative_adjoin_pair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/declarations/cstaralgebra-ismulcommutative-adjoin-pair--abe0da597fe0e0185b1a5614.md) | 228 | `result-track:abe0da597fe0e0185b1a56140204df2a9a2bcfca6c654ef2b4f21e847178816c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
