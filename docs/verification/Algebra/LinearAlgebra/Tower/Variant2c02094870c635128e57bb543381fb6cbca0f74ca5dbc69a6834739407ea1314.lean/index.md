# Verification target: GRWTSK.Algebra.LinearAlgebra.Tower.Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d76cea7aee56eebc33711c956086f3647338040",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d76cea7aee56eebc33711c956086f3647338040`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.LinearDisjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.PerfectClosure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.map_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/linearindependent-map-of-ispurelyinseparable-of-isseparable--758affd056ed7bcd730d2d4d.md) | 69 | `result-track:758affd056ed7bcd730d2d4d2a0c7e7dddf761c7a71e64791f8454f124676945` |
| 2 | `theorem` | [IntermediateField.linearDisjoint_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/intermediatefield-lineardisjoint-of-ispurelyinseparable-of-isseparable--54253e4de881d0d151751eb9.md) | 103 | `result-track:54253e4de881d0d151751eb9be8e0f1ed8a06822f4449f50a8cb7b8b157cabd3` |
| 3 | `lemma` | [sepDegree_eq_of_isPurelyInseparable_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/sepdegree-eq-of-ispurelyinseparable-of-isseparable--ffba8c4ccaa89a8f5b5b19a2.md) | 118 | `result-track:ffba8c4ccaa89a8f5b5b19a2a6cadcce8ea197b442a8e558c1ada30e2f19f8ce` |
| 4 | `lemma` | [lift_rank_mul_lift_sepDegree_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/lift-rank-mul-lift-sepdegree-of-isseparable--e1bd28616ee45eb6b745d770.md) | 128 | `result-track:e1bd28616ee45eb6b745d77045e3d20f4c91e7007f44935d783e2924989791cc` |
| 5 | `lemma` | [rank_mul_sepDegree_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/rank-mul-sepdegree-of-isseparable--2d7589d74482d3c4bb3a62f5.md) | 135 | `result-track:2d7589d74482d3c4bb3a62f5110209782b61978bef110fb702f2dc6e969fd55e` |
| 6 | `lemma` | [insepDegree_eq_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/insepdegree-eq-of-isseparable--eae720b0323ae4fd13f2d518.md) | 144 | `result-track:eae720b0323ae4fd13f2d518adccb515f3b4a65a90235bad4579f0ae14c69d37` |
| 7 | `lemma` | [sepDegree_eq_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/sepdegree-eq-of-ispurelyinseparable--7aa1ced606face18e6b84c06.md) | 153 | `result-track:7aa1ced606face18e6b84c0656bc9df2c0a9ad59f2a9f9f3c0ae5a5c8b6cc753` |
| 8 | `lemma` | [lift_rank_mul_lift_insepDegree_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/lift-rank-mul-lift-insepdegree-of-ispurelyinseparable--a0ca4ca6f2073a8df3bcdddf.md) | 166 | `result-track:a0ca4ca6f2073a8df3bcdddfaaf3964d626cc5880b773b68dba79a78acc73b29` |
| 9 | `lemma` | [rank_mul_insepDegree_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/rank-mul-insepdegree-of-ispurelyinseparable--44c5c1a8c5c3e991be553efd.md) | 174 | `result-track:44c5c1a8c5c3e991be553efd1631aaa7a9652db8399f0d72e8b4e0573487241e` |
| 10 | `theorem` | [lift_sepDegree_mul_lift_sepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/lift-sepdegree-mul-lift-sepdegree-of-isalgebraic--63f0044c013c06ed75107e6a.md) | 181 | `result-track:63f0044c013c06ed75107e6ac45b48f395e5d17d516b76e0240fe35fd67eb778` |
| 11 | `theorem` | [sepDegree_mul_sepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/sepdegree-mul-sepdegree-of-isalgebraic--4c516126fe0516900d8d9ab2.md) | 189 | `result-track:4c516126fe0516900d8d9ab2053d687047deae3475b3f70f0cf6396796ff9af6` |
| 12 | `theorem` | [lift_insepDegree_mul_lift_insepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/lift-insepdegree-mul-lift-insepdegree-of-isalgebraic--ae19936c679d48b1d3d6247e.md) | 196 | `result-track:ae19936c679d48b1d3d6247eaf3756b64198a0a314132fbd5778d7254baf464d` |
| 13 | `theorem` | [insepDegree_mul_insepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/insepdegree-mul-insepdegree-of-isalgebraic--4501e42b553bb1053e2d7e51.md) | 204 | `result-track:4501e42b553bb1053e2d7e511c9c5f8a7f3bf358ed58611892671fa9f242dc2c` |
| 14 | `theorem` | [finInsepDegree_mul_finInsepDegree_of_isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/fininsepdegree-mul-fininsepdegree-of-isalgebraic--3f9f27b75bddd51f1e88e0d9.md) | 212 | `result-track:3f9f27b75bddd51f1e88e0d912e72e98e714f5029f702bbc9fd352b0bb78d9cd` |
| 15 | `theorem` | [IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/intermediatefield-sepdegree-adjoin-eq-of-isalgebraic-of-ispurelyinsepara--00a98fdfb431d4f1f52bdfd5.md) | 223 | `result-track:00a98fdfb431d4f1f52bdfd5312102b72d469fe5ea0e8b47b79d6e062070ca0f` |
| 16 | `theorem` | [IntermediateField.sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable'](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/intermediatefield-sepdegree-adjoin-eq-of-isalgebraic-of-ispurelyinsepara--f5bf094d4f5f0ce21f05bc08.md) | 258 | `result-track:f5bf094d4f5f0ce21f05bc089d3cb9e821b3bb05892fd67472bcc5562b28aab5` |
| 17 | `theorem` | [minpoly.map_eq_of_isSeparable_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/minpoly-map-eq-of-isseparable-of-ispurelyinseparable--507459a117582499f135798a.md) | 269 | `result-track:507459a117582499f135798a9b28014a1b9da4fde1f45925a3622ff8fe3bd546` |
| 18 | `theorem` | [Polynomial.Separable.map_irreducible_of_isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/declarations/polynomial-separable-map-irreducible-of-ispurelyinseparable--c30657829567338707c5ece0.md) | 289 | `result-track:c30657829567338707c5ece0ba46d2df24780e1b20095d09f5ceca7d1f643137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
