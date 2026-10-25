# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e32d4f98494f2b71f22956eca7f5c4b10e89626",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e32d4f98494f2b71f22956eca7f5c4b10e89626`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_lt_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/not-lt-top--add4482be5777383bbbac79c.md) | 29 | `result-track:add4482be5777383bbbac79c502e08da56014e97c814b6e5e9891d33a8706044` |
| 2 | `lemma` | [coe_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-add--074d0263b403d70129402241.md) | 32 | `result-track:074d0263b403d701294022419c2495f7d8af2ad63cb42ec07fe3aecf860624a0` |
| 3 | `lemma` | [coe_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-sub--e1e130625cf839279964911e.md) | 35 | `result-track:e1e130625cf839279964911edcfec77e8e4078bd568f4ca23c470906de30f018` |
| 4 | `lemma` | [coe_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-mul--90a464e01b57b901ba585d64.md) | 38 | `result-track:90a464e01b57b901ba585d64013b117edc2209bdfdb9fade9689d06dbc179179` |
| 5 | `lemma` | [coe_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-ofnat--281b053c36879859cb9cdf93.md) | 41 | `result-track:281b053c36879859cb9cdf9395bb43f393c02b60c82c9e940ca313765617d974` |
| 6 | `lemma` | [coe_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-zero--5c28892fcac7811759d8f3e5.md) | 44 | `result-track:5c28892fcac7811759d8f3e584bdacbb22e1e5a76df71d9a10ecedeac1a3fff3` |
| 7 | `lemma` | [coe_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/coe-one--877241d2646a7fd79bd05ebc.md) | 46 | `result-track:877241d2646a7fd79bd05ebc1987da60ce199d8aff22b4436132516addb3e263` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/elab--4bff885f9d27d58e4930d3c7.md) | 53 | `declaration-track:4bff885f9d27d58e4930d3c7de485f3a9bf7eaf7cb74bba1089fb0f934948a99` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENatToNat/Variant90278b26556dfa22f69f35162c55fb80c91a341ae9ccd684e5766bfd7db30563.lean/declarations/macro--eb1f867d0d7eee92eead02f7.md) | 77 | `declaration-track:eb1f867d0d7eee92eead02f791975a8df51db74fcefcf185914b69372adaf4f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
