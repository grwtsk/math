# Verification target: GRWTSK.Algebra.Field.Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "207a1c4fa98923a86922bebb686e85694eb26c29",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `207a1c4fa98923a86922bebb686e85694eb26c29`.

Source path: `GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/algequiv-adjoinsingletonequivadjoinrootminpoly--b6ed88cce5d56343ff907903.md) | 41 | `declaration-track:b6ed88cce5d56343ff90790335a59ea476b5e4ecafbea2138ada7df2eb5b8aba` |
| 2 | `def` | [Algebra.adjoin.liftSingleton](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/algebra-adjoin-liftsingleton--486389472de17c9fbd475300.md) | 51 | `declaration-track:486389472de17c9fbd475300a23fdc2b16507e36154ac503366ad5c7e561016b` |
| 3 | `theorem` | [Polynomial.lift_of_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/polynomial-lift-of-splits--cc835582f17c51d68249d948.md) | 61 | `result-track:cc835582f17c51d68249d94879f90cfb1b27e807f2ea69921f9764591b7bc5cc` |
| 4 | `theorem` | [IsIntegral.mem_range_algHom_of_minpoly_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/isintegral-mem-range-alghom-of-minpoly-splits--c39a3c10df8bfa5bfa469c08.md) | 96 | `result-track:c39a3c10df8bfa5bfa469c08a615b77265c9c75417eb983851b5640e6c0650f2` |
| 5 | `theorem` | [IsIntegral.mem_range_algebraMap_of_minpoly_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/isintegral-mem-range-algebramap-of-minpoly-splits--4492ce07ad959f1b8a2cdfbe.md) | 103 | `result-track:4492ce07ad959f1b8a2cdfbe012dc82eff657e2ab41650961161cfd2e2986e76` |
| 6 | `theorem` | [minpoly_neg_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/minpoly-neg-splits--e7c8863f585bb00af2f7b825.md) | 108 | `result-track:e7c8863f585bb00af2f7b8253b6701fbc4ee91bae65718b743e87ae1977e7071` |
| 7 | `theorem` | [minpoly_add_algebraMap_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/minpoly-add-algebramap-splits--a870427dad553273b97fe6db.md) | 115 | `result-track:a870427dad553273b97fe6dba5cc6e511730245e2d776ee78c8b32a0e83b7b59` |
| 8 | `theorem` | [minpoly_sub_algebraMap_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/minpoly-sub-algebramap-splits--54aaf5afaa05b23de45c610a.md) | 120 | `result-track:54aaf5afaa05b23de45c610ae8e3d6c9a9e940411dfabc9e53c34c46d4b08b2b` |
| 9 | `theorem` | [minpoly_algebraMap_add_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/minpoly-algebramap-add-splits--097c5956c256c56b2ce728d6.md) | 125 | `result-track:097c5956c256c56b2ce728d62b47d65bb814f5dad6cba6e9a718596f7c534562` |
| 10 | `theorem` | [minpoly_algebraMap_sub_splits](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/minpoly-algebramap-sub-splits--ae14de2b1399387329bab218.md) | 130 | `result-track:ae14de2b1399387329bab2185bf37c6b962bbbb41c3735fac026bcf862b02f18` |
| 11 | `theorem` | [IsIntegral.minpoly_splits_tower_top'](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/isintegral-minpoly-splits-tower-top--fbf9b62bc319d769e16cf45e.md) | 140 | `result-track:fbf9b62bc319d769e16cf45e6e4dafb604071e17de9b4c8b480186231d00b0d8` |
| 12 | `theorem` | [IsIntegral.minpoly_splits_tower_top](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/isintegral-minpoly-splits-tower-top--05e98c0ad9a40a389f856043.md) | 146 | `result-track:05e98c0ad9a40a389f85604305b752e11303f81c225dd80c2732c53d13e4f576` |
| 13 | `lemma` | [Subalgebra.adjoin_rank_le](../../../../mathematics/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/declarations/subalgebra-adjoin-rank-le--7876e3539dda080d84b589a1.md) | 154 | `result-track:7876e3539dda080d84b589a1bf50750c380d5a8d5530a7c7c5bb2d0a928a6c94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
