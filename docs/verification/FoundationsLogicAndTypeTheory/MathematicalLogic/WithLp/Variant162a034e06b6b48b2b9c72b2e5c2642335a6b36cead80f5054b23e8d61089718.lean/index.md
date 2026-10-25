# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WithLp.Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c26e2de0a771c6ba8628a4c1a8d3d561752087e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c26e2de0a771c6ba8628a4c1a8d3d561752087e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/withlp--46b58c2cc17bf3593b29471f.md) | 56 | `declaration-track:46b58c2cc17bf3593b29471ff810f6c25931aa7c8b20b93047d23c47ba787734` |
| 2 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv--d31425b731d46513af4f8515.md) | 64 | `declaration-track:d31425b731d46513af4f851563cd8f9a9e5339f275368340de5b39ff0d309e5d` |
| 3 | `instance` | [instAddCommGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/instaddcommgroup--12ff7c4cc1945e94061f4d57.md) | 70 | `declaration-track:12ff7c4cc1945e94061f4d575b3f1230419f5015cd6613a1ac86c68b61eb1155` |
| 4 | `instance` | [instModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/instmodule--9a01b5c4094226975b03c24b.md) | 71 | `declaration-track:9a01b5c4094226975b03c24b9b49d1c586dd99fddc100993f91667312752dbf0` |
| 5 | `instance` | [instIsScalarTower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/instisscalartower--2def20daacd970cacc0eff8e.md) | 73 | `declaration-track:2def20daacd970cacc0eff8ee84b0eee3943f328b6edd306b00e49e0727920e0` |
| 6 | `instance` | [instSMulCommClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/instsmulcommclass--7f9019d24e72f59adeb10a72.md) | 77 | `declaration-track:7f9019d24e72f59adeb10a72d548aa45e7047a2334989c0786c8d3acf0f34110` |
| 7 | `instance` | [instModuleFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/instmodulefinite--0fb37f19c6efd95c0c2437a5.md) | 81 | `declaration-track:0fb37f19c6efd95c0c2437a5572ddf11a704fee998418790865634d21f09b492` |
| 8 | `theorem` | [equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-zero--c3c8c003ff7bc2bdcf52592a.md) | 91 | `result-track:c3c8c003ff7bc2bdcf52592a3758f8034f123683d02bca7508b5ebc20a631d4d` |
| 9 | `theorem` | [equiv_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-symm-zero--e73ba7c8cb5b94dafc9fd550.md) | 96 | `result-track:e73ba7c8cb5b94dafc9fd550697d2bc18abb86851a823b0a85781a07898528c8` |
| 10 | `theorem` | [equiv_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-add--10d2763dedf3ce92926d2e7f.md) | 101 | `result-track:10d2763dedf3ce92926d2e7fcfcce3b1b8920c5090c3ec5290e413a875cd58c7` |
| 11 | `theorem` | [equiv_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-symm-add--d91806e189f1a39c00b4834c.md) | 106 | `result-track:d91806e189f1a39c00b4834c943f81a48694564032ebda7e61799532f1c306bd` |
| 12 | `theorem` | [equiv_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-sub--f8558b4a36128a3e06d48e90.md) | 112 | `result-track:f8558b4a36128a3e06d48e909b3c508aeb5ea0219c0fef2e3de8d590a1841ecb` |
| 13 | `theorem` | [equiv_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-symm-sub--40464cee57083858bb04bcd4.md) | 117 | `result-track:40464cee57083858bb04bcd48a7558586817441d88a02d1e0ed5b56357dedd34` |
| 14 | `theorem` | [equiv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-neg--09decb1bb1124c7a35c234ba.md) | 123 | `result-track:09decb1bb1124c7a35c234ba33fb4cda33a3ae613da889f7987d2b60b8d27224` |
| 15 | `theorem` | [equiv_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-symm-neg--6668f1e1cb0f7f91e64e41f1.md) | 128 | `result-track:6668f1e1cb0f7f91e64e41f15ad6f3627a8e920d3d96f22020e0516bdbe22d01` |
| 16 | `theorem` | [equiv_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-smul--54c7699bbd7abaca72df10e3.md) | 133 | `result-track:54c7699bbd7abaca72df10e394e9dfa5a791c228d462873d7eccdfb8efed1541` |
| 17 | `theorem` | [equiv_symm_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/equiv-symm-smul--e44c2ab079157d47e214ad5a.md) | 138 | `result-track:e44c2ab079157d47e214ad5ab2309bdd7f95285e6bd515d255ac687d7bcb56b8` |
| 18 | `def` | [linearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variant162a034e06b6b48b2b9c72b2e5c2642335a6b36cead80f5054b23e8d61089718.lean/declarations/linearequiv--10860de8d0d36921131c39ed.md) | 146 | `declaration-track:10860de8d0d36921131c39ed162077882ddf887d5e96c04c1fd937cdeefba57d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
