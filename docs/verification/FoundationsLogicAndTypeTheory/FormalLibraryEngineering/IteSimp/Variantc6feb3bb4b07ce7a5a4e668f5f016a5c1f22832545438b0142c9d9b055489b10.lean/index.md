# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteSimp.Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c911a7113c6c0cca62a3a24132487c0b316e6d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c911a7113c6c0cca62a3a24132487c0b316e6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Bool.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Bool.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [if_true_right_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/declarations/if-true-right-eq-or--a10ef295f6b262296287266c.md) | 21 | `result-track:a10ef295f6b262296287266c43785e00a19e1be59d3188257f398e8d9d8c7990` |
| 2 | `theorem` | [if_true_left_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/declarations/if-true-left-eq-or--876e2ca15cc3b591bd25554b.md) | 26 | `result-track:876e2ca15cc3b591bd25554b5df879a38e27eb43f808665bf6f544a2c7466361` |
| 3 | `theorem` | [if_false_right_eq_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/declarations/if-false-right-eq-and--b5a5af712fc9c2782de48a55.md) | 31 | `result-track:b5a5af712fc9c2782de48a55a75e2a3c7866d7c401e043a5d43d6ee331d81b45` |
| 4 | `theorem` | [if_false_left_eq_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteSimp/Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10.lean/declarations/if-false-left-eq-and--eca5158862208da3930bd4f4.md) | 36 | `result-track:eca5158862208da3930bd4f4d16e527ded8d138357ed203860569d11c2214c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
