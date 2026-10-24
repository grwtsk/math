# Verification target: GRWTSK.Algebra.UniversalAlgebra.Canonical.Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ec21da38579427cdcf8816c2dd8bf28744566d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ec21da38579427cdcf8816c2dd8bf28744566d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicallyLinearOrderedSemifield](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean/declarations/canonicallylinearorderedsemifield--8bf26eb3adf6a70c5088f9be.md) | 19 | `declaration-track:8bf26eb3adf6a70c5088f9be8d85507bdb2104eb7d2012d19940b501fa0b0d43` |
| 2 | `abbrev` | [CanonicallyOrderedAdd.toLinearOrderedCommGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean/declarations/canonicallyorderedadd-tolinearorderedcommgroupwithzero--74dab0d6fc587412565708c4.md) | 28 | `declaration-track:74dab0d6fc587412565708c4f3bacd0a56f579001ebaa7e8c33e46a906928929` |
| 3 | `theorem` | [tsub_div](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean/declarations/tsub-div--6be393dcffa744fea6aae54f.md) | 39 | `result-track:6be393dcffa744fea6aae54f814d34a97f6e5de93861cdda98e3543b45f534e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
