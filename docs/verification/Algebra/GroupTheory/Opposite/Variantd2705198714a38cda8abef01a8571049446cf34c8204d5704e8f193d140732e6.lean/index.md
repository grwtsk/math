# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24dc26aa2d6cfea7911dc82d37a8f6bd64793856",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24dc26aa2d6cfea7911dc82d37a8f6bd64793856`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Units.opEquiv](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/units-opequiv--7d22434e0c16e94e1e2a641d.md) | 24 | `declaration-track:7d22434e0c16e94e1e2a641d90c543eac754a217e682937f58509a3e7804c2c1` |
| 2 | `theorem` | [Units.coe_unop_opEquiv](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/units-coe-unop-opequiv--4753a76b4e5d81c158c9ccb3.md) | 32 | `result-track:4753a76b4e5d81c158c9ccb35d51cfc0848248d9bfba0b2a6ef86c93b8a8248d` |
| 3 | `theorem` | [Units.coe_opEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/units-coe-opequiv-symm--34678098096c6347f6cb42be.md) | 37 | `result-track:34678098096c6347f6cb42be827adeb9fc0c64f1a16510da0de0d55bf6a75005` |
| 4 | `theorem` | [IsUnit.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/isunit-op--890319ebc11d36f864623697.md) | 42 | `result-track:890319ebc11d36f8646236973c0491db70cfe22ff9e5cedc48912d016de01c5f` |
| 5 | `theorem` | [IsUnit.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/isunit-unop--8f9f4eeba39096e3cc35f105.md) | 47 | `result-track:8f9f4eeba39096e3cc35f105e0b941b6f246323a3813ef553d0f8380dfed39b1` |
| 6 | `theorem` | [isUnit_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/isunit-op--e6376c583b1e0be8e998982a.md) | 52 | `result-track:e6376c583b1e0be8e998982abbe989f6f70b5d4c0b0015567e442bbfda2ad00c` |
| 7 | `theorem` | [isUnit_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantd2705198714a38cda8abef01a8571049446cf34c8204d5704e8f193d140732e6.lean/declarations/isunit-unop--a038c3655576cfa335424292.md) | 56 | `result-track:a038c3655576cfa3354242921be4898261a87d5e4db5a50a229392f2e00559a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
