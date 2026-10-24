# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "319412d135a7c3026a561cc3702cfce51d570ee8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `319412d135a7c3026a561cc3702cfce51d570ee8`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Function.Injective.isOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/declarations/function-injective-isorderedmonoid--443c11e0dfb2646ce8e6fb72.md) | 33 | `result-track:443c11e0dfb2646ce8e6fb727d09afda767eb10ebc7a55aa8a643c75a89e483b` |
| 2 | `lemma` | [Function.Injective.isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/declarations/function-injective-isorderedcancelmonoid--c1c7c8ee90ae1965dc6c0f9c.md) | 47 | `result-track:c1c7c8ee90ae1965dc6c0f9c11e9a3ba64e37d3e2548a40f7fd666a4c0165795` |
| 3 | `def` | [OrderEmbedding.mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/declarations/orderembedding-mulleft--ce597331b84c8dd9bd744cb2.md) | 91 | `declaration-track:ce597331b84c8dd9bd744cb2738d949de53453a3e3854824303522dc942410f7` |
| 4 | `def` | [OrderEmbedding.mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2b7a69480a9b3bdf606b4b5bf22eed32593c6bbe2cfee01ce49172434b87d50f.lean/declarations/orderembedding-mulright--2f1881de46d0b8acb7169cf2.md) | 100 | `declaration-track:2f1881de46d0b8acb7169cf2cd1b8e595ff3650429893d9992f3d980bcbb0b38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
