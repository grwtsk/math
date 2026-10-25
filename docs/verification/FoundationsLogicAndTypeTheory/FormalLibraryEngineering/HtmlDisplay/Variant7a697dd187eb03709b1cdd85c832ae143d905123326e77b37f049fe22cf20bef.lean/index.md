# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplay.Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd65c7a0f846d9a2efb9d4dd3418efcdc0ec3490",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd65c7a0f846d9a2efb9d4dd3418efcdc0ec3490`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.Rpc.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Data.Html` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HtmlDisplayProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/htmldisplayprops--56bc9ac7fe27f1c0c612a35f.md) | 16 | `declaration-track:56bc9ac7fe27f1c0c612a35f391ba52b2cc554311c4ad426680b8c97438c413f` |
| 2 | `def` | [HtmlDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/htmldisplay--1c0e1084292853a8f00e4ffb.md) | 22 | `declaration-track:1c0e1084292853a8f00e4ffbaac76265e9809a1d6d64f6627873121f2bbb20af` |
| 3 | `def` | [HtmlDisplayPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/htmldisplaypanel--40cf1db90ae97c4d1896013b.md) | 26 | `declaration-track:40cf1db90ae97c4d1896013b6ce3cc7ed46f5dbfb152150e58bc5a6df4ce4782` |
| 4 | `def` | [evalHtmlUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/evalhtmlunsafe--673f5c507f853a45676bcb8a.md) | 30 | `declaration-track:673f5c507f853a45676bcb8af996c91d6ee67a2e0331dfb387613e81cb65448c` |
| 5 | `opaque` | [evalHtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/evalhtml--d6783cfac005f365a709616c.md) | 36 | `declaration-track:d6783cfac005f365a709616c19e1c6cb18e3bd6eae1b48c0e3be09d73635a6dc` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/syntax--208efe38647e83b9521b474b.md) | 38 | `declaration-track:208efe38647e83b9521b474b0444ec238046865d7cee4913baee1485460cce40` |
| 7 | `def` | [elabHtmlCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/elabhtmlcmd--67968d77394441fccfe6a7a9.md) | 42 | `declaration-track:67968d77394441fccfe6a7a942edc3687d305c89db018f06eba7253e62d920d3` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/syntax--f925c0d52d39bc9ea0ca0b3f.md) | 50 | `declaration-track:f925c0d52d39bc9ea0ca0b3fbd301814338dfe1f3c0acacb27125140597a4a83` |
| 9 | `def` | [elabHtmlTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant7a697dd187eb03709b1cdd85c832ae143d905123326e77b37f049fe22cf20bef.lean/declarations/elabhtmltac--a08c18f19cbc12b29a8208b0.md) | 54 | `declaration-track:a08c18f19cbc12b29a8208b0330b2b68af63f91f9ba4d471f203cd09d8bbbfea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
