# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Take.Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dde233eb2824b26c80b25d29b6a53f6ea574ac46",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dde233eb2824b26c80b25d29b6a53f6ea574ac46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.Take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/iterators-types-take--33723596210a88d79ebad147.md) | 28 | `declaration-track:33723596210a88d79ebad1479d4f2e3457733bd98b16e38d1d33655868f9f47d` |
| 2 | `def` | [IterM.take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/iterm-take--396257c63aa07d226361b57e.md) | 69 | `declaration-track:396257c63aa07d226361b57ec2b95c26cecce4d8a36e2fe9d8700ca134bdfb31` |
| 3 | `def` | [IterM.toTake](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/iterm-totake--0e853f1e2daef39dce4c3cb2.md) | 95 | `declaration-track:0e853f1e2daef39dce4c3cb219f3e14375e6d902a474c98d673e72e0a433549a` |
| 4 | `theorem` | [IterM.take.surjective_of_zero_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/iterm-take-surjective-of-zero-lt--d7b5d52260303f740f38d35e.md) | 98 | `result-track:d7b5d52260303f740f38d35e80048c452c8bfc227a5078a7c71120ca749e1c40` |
| 5 | `inductive` | [Take.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-plausiblestep--fe85bdaa893a41d1a0168866.md) | 106 | `declaration-track:fe85bdaa893a41d1a01688669e576617b15126a9b90a8af69a877c9cb4b2a2db` |
| 6 | `instance` | [Take.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-institerator--ca5a279abe5d6bf89c63bf41.md) | 117 | `declaration-track:ca5a279abe5d6bf89c63bf41d3366bfec6ce37560d8e68987bce4863caa4b7d5` |
| 7 | `def` | [Take.Rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-rel--e11503a64d4ac99b0daaa6d4.md) | 129 | `declaration-track:e11503a64d4ac99b0daaa6d41012a4c9697ab705d79d6e5f3205d63fba775dd2` |
| 8 | `theorem` | [Take.rel_of_countdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-rel-of-countdown--7eb2baf05668dc95d54361ff.md) | 139 | `result-track:7eb2baf05668dc95d54361ff00ef82dd2507108a01891a9e71471399f76199a8` |
| 9 | `theorem` | [Take.rel_of_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-rel-of-inner--b488271f8e97d5b3eeafd854.md) | 145 | `result-track:b488271f8e97d5b3eeafd8544254fc3c7b4d913a017f328edafcb56ebc38379e` |
| 10 | `theorem` | [Take.rel_of_zero_of_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-rel-of-zero-of-inner--326b6dda8d374cb6074170a9.md) | 154 | `result-track:326b6dda8d374cb6074170a97c7390493b24ce3ed8556058995a8b61d1e71785` |
| 11 | `def` | [Take.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-instfinitenessrelation--cc6b25732d5167680bf340e6.md) | 164 | `declaration-track:cc6b25732d5167680bf340e673d472ba07efccea6be767cd20a261ce2317c69e` |
| 12 | `instance` | [Take.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-instfinite--cf708966efd09668bc4112d1.md) | 206 | `declaration-track:cf708966efd09668bc4112d1a9c3ad0443ec774e61927e3aca077a05de1d8a6e` |
| 13 | `instance` | [Take.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/declarations/take-institeratorloop--dc0528ff9968a3c957a0d50c.md) | 210 | `declaration-track:dc0528ff9968a3c957a0d50ceb43ef00cc376c1518e4bcd09e7d6689a826f266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
