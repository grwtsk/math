# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Choose.Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ea50564fbc8a33d5084a0c1fd0dfaa3258d6a0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ea50564fbc8a33d5084a0c1fd0dfaa3258d6a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk_sometimes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/mk-sometimes--229b7f6e65750ae73132eab8.md) | 28 | `declaration-track:229b7f6e65750ae73132eab8de983b0e2067f6e0fa4074498fb8f169b9d38522` |
| 2 | `inductive` | [ElimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/elimstatus--5826db543a7ea09b1057db7c.md) | 52 | `declaration-track:5826db543a7ea09b1057db7cfaa715bc95f58e6f9fe3c56bb35393c5281c008b` |
| 3 | `def` | [ElimStatus.merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/elimstatus-merge--dfb9a545d85021664d40e5c0.md) | 58 | `declaration-track:dfb9a545d85021664d40e5c0cec5d9ddbb2b4ae9b65f6c4fb810541a1d3ee0cd` |
| 4 | `def` | [mkFreshNameFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/mkfreshnamefrom--2f310e76e3fcc75878fc4100.md) | 65 | `declaration-track:2f310e76e3fcc75878fc41000919474752e6c0c02ca460753e70105add095622` |
| 5 | `def` | [choose1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/choose1--dd4b80e2197ab7bf892768d9.md) | 79 | `declaration-track:dd4b80e2197ab7bf892768d94aeff4a427cfc4a6eb1a7806e22b362409f0ab3b` |
| 6 | `def` | [choose1WithInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/choose1withinfo--2023ebe7cc1b750124a0653e.md) | 146 | `declaration-track:2023ebe7cc1b750124a0653efa3b697a9ebc76a3aa41080a8cc3622a64d73fa7` |
| 7 | `def` | [elabChoose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/elabchoose--d58a7c65ea5f495ceea6c8d1.md) | 154 | `declaration-track:d58a7c65ea5f495ceea6c8d163a3f10426a093a21e048952dba7ec26f2933e14` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/syntax--b31adc35b7a586ad8d46ae2b.md) | 212 | `declaration-track:b31adc35b7a586ad8d46ae2b2e01e23056bf50f893a6f8f1b184e628bd611a26` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/elab-rules--08bfe0fe79fe51cf6106eb7d.md) | 213 | `declaration-track:08bfe0fe79fe51cf6106eb7d41cd113fbb12d87355654e9118c869b9c9c8f8bc` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/syntax--6fddc68e1471336b7bd5aa1b.md) | 220 | `declaration-track:6fddc68e1471336b7bd5aa1b3abc6a416d620703e52ad8f99bf954763f0a5d04` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variantc9ce2835ff8127c91ec78a9acfffaf39fd9efdc84951f97524c34b424b1b5387.lean/declarations/macro-rules--66cadc1c17dc1ab756ef615d.md) | 221 | `declaration-track:66cadc1c17dc1ab756ef615d29a0cc02695fd52e54feae659fe6daf054f6413d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
