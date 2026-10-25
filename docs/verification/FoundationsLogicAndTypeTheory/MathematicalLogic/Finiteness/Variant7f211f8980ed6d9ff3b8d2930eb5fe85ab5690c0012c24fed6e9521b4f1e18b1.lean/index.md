# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Finiteness.Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea30d317efcb7ed260f288f5ff613ffc98bfe78",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea30d317efcb7ed260f288f5ff613ffc98bfe78`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fgSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/declarations/fgsystem--458343471f4af72f943816bb.md) | 27 | `declaration-track:458343471f4af72f943816bb52bea9e3471f552e0c3194a18440472a25817eaf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/declarations/instance--90457f35fd5cbbe4d32e2a4c.md) | 34 | `declaration-track:90457f35fd5cbbe4d32e2a4c760c80585cb52f5daaf1d16fcf0849ef915e4f8f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/declarations/instance--cc8a9440de61396dfe7e6681.md) | 38 | `declaration-track:cc8a9440de61396dfe7e6681a58659e170cb462938cd0a3b76ba8d27641f4769` |
| 4 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/declarations/equiv--eca9f6709c177aa46be7e6bd.md) | 46 | `declaration-track:eca9f6709c177aa46be7e6bd6aa9df60a6c8ed7baf9cfe17123d3c2de941200a` |
| 5 | `lemma` | [equiv_comp_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Finiteness/Variant7f211f8980ed6d9ff3b8d2930eb5fe85ab5690c0012c24fed6e9521b4f1e18b1.lean/declarations/equiv-comp-of--8db428af658ac373cf4dbed3.md) | 53 | `result-track:8db428af658ac373cf4dbed3c729afa1a32f9cf333bfae40661c5921b19d5e71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
