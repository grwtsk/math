# Verification target: GRWTSK.Algebra.Instances.Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77981413c876752bf7709fc68d395216e1a6efbe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77981413c876752bf7709fc68d395216e1a6efbe`.

Source path: `GRWTSK/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [localization_unit_isIso](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/localization-unit-isiso--00c99c1f847755447e7da4c5.md) | 26 | `declaration-track:00c99c1f847755447e7da4c5a5d80da238743f36b4b6f1c35e5ea9f887fc3f77` |
| 2 | `instance` | [localization_unit_isIso'](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/localization-unit-isiso--55ea704d70f87a618ad9e8ae.md) | 30 | `declaration-track:55ea704d70f87a618ad9e8ae38882bd8abcae289575acc3a84703ff0d1483af3` |
| 3 | `theorem` | [IsLocalization.epi](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/islocalization-epi--7d5ee92749a7177fd2ee54bf.md) | 35 | `result-track:7d5ee92749a7177fd2ee54bf64522c807c25186f532e0f153f5d701b293ea90b` |
| 4 | `instance` | [Localization.epi](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/localization-epi--d0d198b4794e7001d8d61089.md) | 40 | `declaration-track:d0d198b4794e7001d8d610896c50f81c5c7139374f9a90c9c3ce356e0db0d6e1` |
| 5 | `instance` | [Localization.epi'](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/localization-epi--e1194e71ac8c20f18970d56f.md) | 44 | `declaration-track:e1194e71ac8c20f18970d56fac55577b07efc48c2dc410b7762ccec7de2420ea` |
| 6 | `theorem` | [CommRingCat.isLocalHom_comp](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/commringcat-islocalhom-comp--c2cb117649094bbf652d40c0.md) | 50 | `result-track:c2cb117649094bbf652d40c059cf232ad3b9988a0b0f7be4571324bac8f425ef` |
| 7 | `theorem` | [isLocalHom_of_iso](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/islocalhom-of-iso--2135700aa63529935e3929fe.md) | 54 | `result-track:2135700aa63529935e3929fea8d9f1fc75be8ffea7e66472f59a97396f080f36` |
| 8 | `theorem` | [isLocalHom_of_isIso](../../../../mathematics/Algebra/Instances/Variant9b2809e079db3f3ed2c6fe8f6ccea3a833b71b78ddbbe5cf23afbc34e919c055.lean/declarations/islocalhom-of-isiso--fcfb6d12916389242cc37f39.md) | 61 | `result-track:fcfb6d12916389242cc37f39262a6cac543636e5caf0ef264e4620c130016824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
