# Verification target: GRWTSK.Geometry.DifferentialGeometry.GroupLieAlgebra.Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d279a49fca338886877ebc5d41f9224c039ef83`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorField.LieBracket` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/groupliealgebra--ba6c0797bb425d81ab98fbd9.md) | 52 | `declaration-track:ba6c0797bb425d81ab98fbd9b4bb22458fbb628b9caeae0531d255ea93070901` |
| 2 | `def` | [mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mulinvariantvectorfield--295b67dd4b884edcf337d6fd.md) | 58 | `declaration-track:295b67dd4b884edcf337d6fd16ab51a9f4ce13b6357c8856c6e5ac29583cc879` |
| 3 | `lemma` | [mulInvariantVectorField_add](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mulinvariantvectorfield-add--b5a5297a66f188e325627b37.md) | 62 | `result-track:b5a5297a66f188e325627b37d7c3965ee06a1d789f06f01b0d239a7365621113` |
| 4 | `lemma` | [addInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/addinvariantvectorfield-smul--8d9ece671e8a8311ed9da20d.md) | 69 | `result-track:8d9ece671e8a8311ed9da20d6bd06a3a016f8b61e5a48085936ab9f5047c8575` |
| 5 | `lemma` | [mulInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mulinvariantvectorfield-smul--a5ea48315140f410912cec3a.md) | 75 | `result-track:a5ea48315140f410912cec3abe8d130f55a70cfcb02ec862a5b56f588efc8d0e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/instance--2034b307b0f9791d144ff851.md) | 86 | `declaration-track:2034b307b0f9791d144ff851061af49d4891f95e1577bd2bcd5cec25801b6571` |
| 7 | `lemma` | [GroupLieAlgebra.bracket_def](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/groupliealgebra-bracket-def--77e6f8944f59ac4d00da6cf2.md) | 90 | `result-track:77e6f8944f59ac4d00da6cf2cbb3295ff1cb16bbdcc6de45ccbd9dd5bce39b0f` |
| 8 | `lemma` | [inverse_mfderiv_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/inverse-mfderiv-mul-left--bdcf6e3f12388595e992c0c5.md) | 96 | `result-track:bdcf6e3f12388595e992c0c549a5094cce2af3448d1208b9c579084d4dd8d4eb` |
| 9 | `lemma` | [mpullback_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mpullback-mulinvariantvectorfield--07f4ad816e1d9f303d801919.md) | 115 | `result-track:07f4ad816e1d9f303d8019198c3db75e947119915c97f2e5b553630ef67d8bd7` |
| 10 | `lemma` | [mulInvariantVectorField_eq_mpullback](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mulinvariantvectorfield-eq-mpullback--135cc09c4d0e3d2c09ebbdf8.md) | 129 | `result-track:135cc09c4d0e3d2c09ebbdf8a323d67a23038c458d9494baf69e988ae714af29` |
| 11 | `theorem` | [contMDiff_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/contmdiff-mulinvariantvectorfield--4dc649e2e6f682d07110295e.md) | 137 | `result-track:4dc649e2e6f682d07110295e21f36d7d28a94fb69f7bc97f6fa652ba34a4c351` |
| 12 | `theorem` | [contMDiffAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/contmdiffat-mulinvariantvectorfield--be2917ec93c03e79045c53c2.md) | 180 | `result-track:be2917ec93c03e79045c53c261faa69899836a48f7a69af3e5d229239da6a319` |
| 13 | `theorem` | [mdifferentiable_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mdifferentiable-mulinvariantvectorfield--bdd326b63ae4e6127e6ab7d4.md) | 186 | `result-track:bdd326b63ae4e6127e6ab7d4bba503ffcd33cb00c3c2c6f600a882349b326f4d` |
| 14 | `theorem` | [mdifferentiableAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mdifferentiableat-mulinvariantvectorfield--c93f5a4e6fe4187ee3763653.md) | 192 | `result-track:c93f5a4e6fe4187ee3763653604d963ee1d1c91e4cfa6c9fea633e88ad718ef8` |
| 15 | `lemma` | [mulInvariantVector_mlieBracket](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/mulinvariantvector-mliebracket--d361d01321b432d06d57078c.md) | 207 | `result-track:d361d01321b432d06d57078c851412b9157f94ef439103e10e8828dfd4f608f8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/instance--c99f028dd89e021db42bc066.md) | 223 | `declaration-track:c99f028dd89e021db42bc06668f8c6663fb5d5909b74df4ebfcb6ff827a625fe` |
| 17 | `instance` | [instLieAlgebraAddGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/instliealgebraaddgroupliealgebra--cb009e9437f11ed9e1fedc58.md) | 245 | `declaration-track:cb009e9437f11ed9e1fedc589a715de1f31412ec2802cb3f8dba73149a7894cc` |
| 18 | `instance` | [instLieAlgebraGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/declarations/instliealgebragroupliealgebra--36542782618d4b98b3259e64.md) | 255 | `declaration-track:36542782618d4b98b3259e646b61730ca1bd9fb221cba666076cdfa5002c93a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
