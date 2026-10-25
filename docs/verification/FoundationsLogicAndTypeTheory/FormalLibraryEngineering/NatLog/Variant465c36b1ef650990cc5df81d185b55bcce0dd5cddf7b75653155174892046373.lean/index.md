# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatLog.Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77c1631753a71246c9fda7358d3c658b4b00bacf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77c1631753a71246c9fda7358d3c658b4b00bacf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Log` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_log_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/nat-log-zero--5040076fed10e5da7178cd8c.md) | 18 | `result-track:5040076fed10e5da7178cd8c70503505105bd9508100b45bcfe6ffce6364604f` |
| 2 | `lemma` | [nat_log_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/nat-log-one--2bf8963f029791eedad2ff42.md) | 19 | `result-track:2bf8963f029791eedad2ff42c8b6e8f7a67b1ec2985ed1b3cce343e5f6227408` |
| 3 | `lemma` | [nat_log_helper0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/nat-log-helper0--24cbe9511a5d8e8b4d01c88f.md) | 21 | `result-track:24cbe9511a5d8e8b4d01c88f14a521a44937afd31b1a1045c8e00f8775225de0` |
| 4 | `lemma` | [nat_log_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/nat-log-helper--fbb4eaacc8e3ed1ee8fdc09f.md) | 26 | `result-track:fbb4eaacc8e3ed1ee8fdc09f4ae0cc316f230372bff4a6d20a2c62c592dd890e` |
| 5 | `theorem` | [isNat_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/isnat-log--0420732c86dabf7f10a3eb20.md) | 31 | `result-track:0420732c86dabf7f10a3eb205ecb316785271c5227628e8daf244ca4db295267` |
| 6 | `def` | [proveNatLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/provenatlog--24e2829020682cf57cb30214.md) | 40 | `declaration-track:24e2829020682cf57cb30214c034f0cd79b19ebc0dc033cfaedf2c1a0d978cc9` |
| 7 | `def` | [evalNatLog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant465c36b1ef650990cc5df81d185b55bcce0dd5cddf7b75653155174892046373.lean/declarations/evalnatlog--2ff7d01f65a59db00c2985b0.md) | 59 | `declaration-track:2ff7d01f65a59db00c2985b088ce1910ac84371a88741935d5a176810192d8c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
