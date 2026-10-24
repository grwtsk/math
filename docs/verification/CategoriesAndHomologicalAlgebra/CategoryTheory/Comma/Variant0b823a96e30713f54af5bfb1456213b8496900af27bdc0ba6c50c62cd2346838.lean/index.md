# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d9efff285e12caf400aa98dbfcd07e1e733e37f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d9efff285e12caf400aa98dbfcd07e1e733e37f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectsubobject--dfe4b95a81d23824898ea39d.md) | 57 | `declaration-track:dfe4b95a81d23824898ea39dd941187bc907fb49da76c22b4a6902db8394225a` |
| 2 | `theorem` | [projectSubobject_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectsubobject-mk--61f27aa3f6207202cb2fda94.md) | 66 | `result-track:61f27aa3f6207202cb2fda94da1ceb2014dcfa5f1670b4dd0c7e301b1b2dd110` |
| 3 | `theorem` | [projectSubobject_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectsubobject-factors--0083f1dc5bd7ab8f3694c33c.md) | 71 | `result-track:0083f1dc5bd7ab8f3694c33cad8aaf09134ad3a30eb76b57b6d762d8390b0a1f` |
| 4 | `def` | [liftSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/liftsubobject--a0cb05ae2c7ced7df50ae3e7.md) | 83 | `declaration-track:a0cb05ae2c7ced7df50ae3e7d70f16a0922936598b62ace01e6d503a04fe4bea` |
| 5 | `theorem` | [lift_projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/lift-projectsubobject--5d5c31eeef04bbdf6526ee09.md) | 90 | `result-track:5d5c31eeef04bbdf6526ee09e4f5a95f457f23251fc534c16a3ac31a2a37d615` |
| 6 | `def` | [subobjectEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/subobjectequiv--5db413dd14c1f832a10df6da.md) | 107 | `declaration-track:5db413dd14c1f832a10df6da56a5a5da61780959bffc449dd4f2754fcb400921` |
| 7 | `instance` | [wellPowered_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/wellpowered-structuredarrow--a31e2321a1356c75bd666174.md) | 127 | `declaration-track:a31e2321a1356c75bd6661741cd24c602589af6243a2f3ec5458e0ec4c2b9d84` |
| 8 | `def` | [projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectquotient--86e19b916afe5204e8f4b9a1.md) | 140 | `declaration-track:86e19b916afe5204e8f4b9a1217682e927210ff6907122237eaf14e563100c8b` |
| 9 | `theorem` | [projectQuotient_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectquotient-mk--7c4383ebac14aac77d29eda5.md) | 150 | `result-track:7c4383ebac14aac77d29eda509d206d48cacadb95d127f11ea76b0a951949b79` |
| 10 | `theorem` | [projectQuotient_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/projectquotient-factors--0b0ddb0d1731f2bccc70f6f6.md) | 156 | `result-track:0b0ddb0d1731f2bccc70f6f60acef20d1b3401a3791f6cd35f5f79824067ccf8` |
| 11 | `def` | [liftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/liftquotient--ea3bad2c8688d8ffd9cad8b4.md) | 169 | `declaration-track:ea3bad2c8688d8ffd9cad8b49d88dde4031974871489c4fbf7cf041cfb579119` |
| 12 | `theorem` | [unop_left_comp_underlyingIso_hom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/unop-left-comp-underlyingiso-hom-unop--f8ec3e4371341be1e41700c9.md) | 176 | `result-track:f8ec3e4371341be1e41700c90134b2e61a6cf5f7abd08ef056994e037b4c90fb` |
| 13 | `theorem` | [lift_projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/lift-projectquotient--9342dcabf008b456cbf26e5d.md) | 188 | `result-track:9342dcabf008b456cbf26e5d433d4b829389924039dff838826197ee2eba21f8` |
| 14 | `theorem` | [unop_left_comp_ofMkLEMk_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/unop-left-comp-ofmklemk-unop--a9b412d3eb184286862ff62a.md) | 203 | `result-track:a9b412d3eb184286862ff62a32e6db950ce42c78deec4e637887183207d0f04b` |
| 15 | `def` | [quotientEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/quotientequiv--55906517ed5a03b286c68759.md) | 217 | `declaration-track:55906517ed5a03b286c68759a7d23876a9233b97ed72dae700265f5a171ffaef` |
| 16 | `instance` | [well_copowered_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/declarations/well-copowered-costructuredarrow--affa49945543b29e38c9761d.md) | 245 | `declaration-track:affa49945543b29e38c9761d6089b13254f78c4da0a2e25880b88ca994de6fb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
