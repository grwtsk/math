# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Array.Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a98fbab4ed229bc4e6813bd087287e9c69d4830",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a98fbab4ed229bc4e6813bd087287e9c69d4830`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Equiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arrayEquivList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean/declarations/arrayequivlist--3d91b33aefc33afffca01957.md) | 58 | `declaration-track:3d91b33aefc33afffca0195795ba9c824ec8a6277e03d90627b8d5b41b75c88c` |
| 2 | `instance` | [Array.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean/declarations/array-encodable--427d298753f0d35f71244da9.md) | 87 | `declaration-track:427d298753f0d35f71244da9ea71e32729e52959ae3e2c155bc276c30631850f` |
| 3 | `instance` | [Array.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variant8f759659badb839970c52691d234e7a2c294cb08aa5f0e08a024684842bfcfbe.lean/declarations/array-countable--8d8135a07ac9d49c52c2c17b.md) | 92 | `declaration-track:8d8135a07ac9d49c52c2c17b3c0a1035eca2257959a2bfba6b72b223cf401d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
