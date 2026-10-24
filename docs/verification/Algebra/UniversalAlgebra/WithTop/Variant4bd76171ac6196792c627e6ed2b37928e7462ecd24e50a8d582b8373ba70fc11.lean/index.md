# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87ebd68826b99375d43d1359d1ed00717e9f5707",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87ebd68826b99375d43d1359d1ed00717e9f5707`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean/declarations/instance--1a0b033a5de32ded45fb1ae4.md) | 16 | `declaration-track:1a0b033a5de32ded45fb1ae435f6d42cf7af4e1f600c54028cbe8f2d8967567e` |
| 2 | `theorem` | [Nat.cast_withTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean/declarations/nat-cast-withtop--7b99dcac9dba2be9601fd1fa.md) | 20 | `result-track:7b99dcac9dba2be9601fd1fa1190682a69dcf4c17310b6e9b06012b6fe910603` |
| 3 | `theorem` | [Nat.cast_withBot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean/declarations/nat-cast-withbot--ecc87ac8fb6bb73d951ad9d9.md) | 23 | `result-track:ecc87ac8fb6bb73d951ad9d905d5c7cbc7d4f86ebf8ecfbf44649e2707d905c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
