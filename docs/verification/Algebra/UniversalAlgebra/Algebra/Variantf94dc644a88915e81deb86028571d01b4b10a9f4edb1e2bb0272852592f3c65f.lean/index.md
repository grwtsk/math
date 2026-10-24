# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "993956c18b570f2cb09880ba3e9a2db59e64bc98",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `993956c18b570f2cb09880ba3e9a2db59e64bc98`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/galgebra--f0f2f49214e667d1b575a870.md) | 44 | `declaration-track:f0f2f49214e667d1b575a870c13210abad2feb4c8e5043cd697a38de76ab0d30` |
| 2 | `instance` | [_root_.GradedMonoid.smulCommClass_right](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/root-gradedmonoid-smulcommclass-right--b8bab03d776c61bda9fb13f1.md) | 56 | `declaration-track:b8bab03d776c61bda9fb13f12ccb2a344e57686eefa31f698c6ab4b08da63253` |
| 3 | `instance` | [_root_.GradedMonoid.isScalarTower_right](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/root-gradedmonoid-isscalartower-right--553cecca2b65ab6316cbf8cb.md) | 62 | `declaration-track:553cecca2b65ab6316cbf8cbb78b5fc4ff0ed52e2a3015b0160337d1af0770f1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/instance--3d95daed86ae06bc113f303c.md) | 70 | `declaration-track:3d95daed86ae06bc113f303cfa342aafcacceddebd8596e21fdf2d7437ec19d0` |
| 5 | `theorem` | [algebraMap_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/algebramap-apply--1fcd38889a8d559a584c161f.md) | 96 | `result-track:1fcd38889a8d559a584c161faaad3acb6c743e2196c8d722d745b967c2df28fd` |
| 6 | `theorem` | [algebraMap_toAddMonoid_hom](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/algebramap-toaddmonoid-hom--2cfa63a83247c30309726934.md) | 100 | `result-track:2cfa63a83247c3030972693418be417dace6a2e12742937cb874bca82d777171` |
| 7 | `def` | [toAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/toalgebra--12ba7dff8a725d0cb90270e4.md) | 112 | `declaration-track:12ba7dff8a725d0cb90270e48cf6533d2b9c9b28c65bf537c8be5dd97061273a` |
| 8 | `theorem` | [algHom_ext'](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/alghom-ext--9c180916ab7072242fedb22f.md) | 126 | `result-track:9c180916ab7072242fedb22f4485f3aa205efba829e7442df5f6c4b45c625c04` |
| 9 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/alghom-ext--f93aa92d4e0d4a96137a3017.md) | 130 | `result-track:f93aa92d4e0d4a96137a30179c50f4b075705fa59355462a80099e99d88a4407` |
| 10 | `def` | [gMulLHom](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/gmullhom--e2ae522f29627658032a9801.md) | 137 | `declaration-track:e2ae522f29627658032a9801ad405fe7e993be8da4089ce7bc8ecf1926dc8c37` |
| 11 | `instance` | [Algebra.directSumGAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/declarations/algebra-directsumgalgebra--948bbdd423db185a3ab4ce9b.md) | 154 | `declaration-track:948bbdd423db185a3ab4ce9b47d2db0a6277a196020773e6b4c9255d4b89fd39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
