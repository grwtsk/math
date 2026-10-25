# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1814e13c94b72150fc334622cf80a3f240a3b455",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1814e13c94b72150fc334622cf80a3f240a3b455`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instance--fdfcc2e43b87618a62365876.md) | 32 | `declaration-track:fdfcc2e43b87618a62365876770be23a523227cf270811647167e8031473f784` |
| 2 | `theorem` | [succ?_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/succ-eq-none--f09ea111bdf93dfb667a79d5.md) | 36 | `result-track:f09ea111bdf93dfb667a79d51863d4288adfe31364729a6d09ea451a9c9eb7b7` |
| 3 | `theorem` | [succ?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/succ-eq-some--1ae7a72d8fbb6521706c8726.md) | 45 | `result-track:1ae7a72d8fbb6521706c8726f1cf3a0d1c3e4273dd67f9296cc81887b1cc3602` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instance--48d035a90baa028be032ea4f.md) | 67 | `declaration-track:48d035a90baa028be032ea4f364bc660b930f80175f45a6e1a24895460300cb6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instance--00400509f1a47c6fdf1981ff.md) | 83 | `declaration-track:00400509f1a47c6fdf1981ff6cc38e4e7cbcc169f45ae87bc56c36f0ab310358` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instance--b72627d75de389be2555c444.md) | 93 | `declaration-track:b72627d75de389be2555c444adbeb540e986b5841c1a1b0c26fc4afda5c52734` |
| 7 | `instance` | [instRxcHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxchassize--04a8d99899dd6678a6583058.md) | 95 | `declaration-track:04a8d99899dd6678a65830584e27b06dc61706a041cfe41abc54fcfb93063a87` |
| 8 | `instance` | [instRxcLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxclawfulhassize--eb767586c2e70e8b60aa4661.md) | 98 | `declaration-track:eb767586c2e70e8b60aa4661e8bfddaa5519ff98aeccb90394f00fc3384546f1` |
| 9 | `instance` | [instRxcIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxcisalwaysfinite--113cc9dbb099a179bfbf9742.md) | 110 | `declaration-track:113cc9dbb099a179bfbf97423929bbac76cd5567a851b51534c92a3e76d5d5bc` |
| 10 | `instance` | [instRxoHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxohassize--ebba82d770f208f5b65a2750.md) | 112 | `declaration-track:ebba82d770f208f5b65a2750644dd8fef72b9e04b1cda72cd08eb59895c0a404` |
| 11 | `instance` | [instRxoLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxolawfulhassize--56480f29794bad7d983c348a.md) | 113 | `declaration-track:56480f29794bad7d983c348a2ed8297bd7b6408fe4ae448d99e3ea1ae8978f10` |
| 12 | `instance` | [instRxoIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxoisalwaysfinite--689a97cae02719437ba85f12.md) | 114 | `declaration-track:689a97cae02719437ba85f1201c7621aca3b2a6630fe45d616113ac770d5c3ab` |
| 13 | `instance` | [instRxiHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxihassize--6a59d3f4e67e6a5f30e9d553.md) | 116 | `declaration-track:6a59d3f4e67e6a5f30e9d553416bd857021d1ab07e861700c3f941f6ef4e2778` |
| 14 | `instance` | [instRxiLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxilawfulhassize--9862ab6cb2df65656d36a585.md) | 119 | `declaration-track:9862ab6cb2df65656d36a585f03b874f43defcf318fb50df6e849b388b46b63e` |
| 15 | `instance` | [instRxiIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant393f51093191b5bf6e93f7bbfecb0eb9a811d3beee7ac040dd01864d21ad55bf.lean/declarations/instrxiisalwaysfinite--df8d36418579cb584ead1330.md) | 127 | `declaration-track:df8d36418579cb584ead1330519a60d45dd0c78990cec5b4a3e5f8d385f69627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
