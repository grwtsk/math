# Verification target: GRWTSK.Algebra.LinearAlgebra.RingHom.Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa13009342d840f6e4c42f38cf927ad9f6cd807",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa13009342d840f6e4c42f38cf927ad9f6cd807`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.moduleLeft](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/declarations/function-surjective-moduleleft--9ed58f516885f6dafd625a8f.md) | 41 | `declaration-track:9ed58f516885f6dafd625a8f8e0b899bf5ee664ce59d70396e0f2a1aab49a6e4` |
| 2 | `abbrev` | [Module.compHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/declarations/module-comphom--7d0cb0cb44610510009d4094.md) | 53 | `declaration-track:7d0cb0cb44610510009d4094453a69077055bcdbf5926b72ef0e7f218f772998` |
| 3 | `abbrev` | [RingHom.toModule](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/declarations/ringhom-tomodule--105791d16e2b02dc6a9b3ebc.md) | 68 | `declaration-track:105791d16e2b02dc6a9b3ebcac73b495ca5988dd9d8130ce693d4b50531debfa` |
| 4 | `def` | [RingHom.smulOneHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/declarations/ringhom-smulonehom--1fe6db0729e320655dd72e9f.md) | 77 | `declaration-track:1fe6db0729e320655dd72e9fae324fb0a3a1ca006a0a7187898351d7656799ce` |
| 5 | `def` | [ringHomEquivModuleIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6d311b1e7a33f761f13824b7328a75f60e65fcf41dc3130dff86a374e680adf4.lean/declarations/ringhomequivmoduleisscalartower--21e1ced028a3555f9f3ba635.md) | 85 | `declaration-track:21e1ced028a3555f9f3ba635be93d3503f90447f9d26b723e8d1966099723ef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
