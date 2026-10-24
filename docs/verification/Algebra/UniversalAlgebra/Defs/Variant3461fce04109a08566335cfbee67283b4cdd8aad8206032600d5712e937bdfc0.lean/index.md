# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f41e1f3da5bcbc8ba9418fb650151fd447cff3a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f41e1f3da5bcbc8ba9418fb650151fd447cff3a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.WithZero` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyLinearOrderedSemifield](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean/declarations/canonicallylinearorderedsemifield--01eed94332791f2c78c712bc.md) | 29 | `declaration-track:01eed94332791f2c78c712bcd915c0a5ee4cc649013ad904e4a157636f7f47be` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean/declarations/instance--7e584d2b2337670e2b4fa0d7.md) | 34 | `declaration-track:7e584d2b2337670e2b4fa0d71cbce4680f9df9443e3456a9d719d582f8cbc5f3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3461fce04109a08566335cfbee67283b4cdd8aad8206032600d5712e937bdfc0.lean/declarations/instance--3d12986e983fc335ca7c501a.md) | 41 | `declaration-track:3d12986e983fc335ca7c501a7406005d8fb147fce704dcd5f5998c4871b0b719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
