# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4157eed3a2510503e081eb50100c8fda6e72365",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4157eed3a2510503e081eb50100c8fda6e72365`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/declarations/function-injective-orderedcommmonoid--b111343633f4b14b9b0a318d.md) | 28 | `declaration-track:b111343633f4b14b9b0a318dfb6c546470be3cc7d6f88fdadb0540cbdf6bc7ca` |
| 2 | `def` | [Function.Injective.linearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/declarations/function-injective-linearorderedcommmonoid--51c70c0aa168b86deabeec76.md) | 45 | `declaration-track:51c70c0aa168b86deabeec768ab7aa86f5fe990996597f862f9a8092f5450dc7` |
| 3 | `def` | [OrderEmbedding.mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/declarations/orderembedding-mulleft--8ab3e537deab69664a80cbda.md) | 60 | `declaration-track:8ab3e537deab69664a80cbda4fd1f4dadcc76c88f64334a085633a943665d9a8` |
| 4 | `def` | [OrderEmbedding.mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/declarations/orderembedding-mulright--453f6d8f6a6ba9225784ed98.md) | 73 | `declaration-track:453f6d8f6a6ba9225784ed982ab3964680636f8a56c7b808c929a2ea31c3e9ca` |
| 5 | `theorem` | [eq_and_eq_of_le_of_le_of_mul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/declarations/eq-and-eq-of-le-of-le-of-mul-le--22713e908a57352fff7f1ad0.md) | 82 | `result-track:22713e908a57352fff7f1ad00808a3d2b605a087dbe24a51d6c654e1bf6ac4f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
