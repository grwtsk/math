# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetry.Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27ec686d1b1026ec654a151c65104d85b2e9471",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27ec686d1b1026ec654a151c65104d85b2e9471`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.FiberTensor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSymmetryGroup](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/declarations/finitesymmetrygroup--7245d64b04f91a6bce774e07.md) | 13 | `declaration-track:7245d64b04f91a6bce774e0797a1c46f0be2d80dd4ed0817f05aee566646d931` |
| 2 | `structure` | [FiberTwist](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/declarations/fibertwist--c49ce74fa9d5f58e3775db8e.md) | 20 | `declaration-track:c49ce74fa9d5f58e3775db8e59d459c5010c4c167cb64ae6e743ac72a9a796b8` |
| 3 | `theorem` | [finiteSymmetryGroup_requires_laws](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/declarations/finitesymmetrygroup-requires-laws--d344d971fde5e51d781e78eb.md) | 26 | `result-track:d344d971fde5e51d781e78ebc91e5786314348d44a494e439a71958214edc7a2` |
| 4 | `theorem` | [fiberTwist_requires_action_sound](../../../../../mathematics/Algebra/LinearAlgebra/Symmetry/Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a.lean/declarations/fibertwist-requires-action-sound--efc5ceb3849493b6b64a3f23.md) | 32 | `result-track:efc5ceb3849493b6b64a3f2359b97821e28b649a233f9fd4c8efa6d5f8b53bec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
