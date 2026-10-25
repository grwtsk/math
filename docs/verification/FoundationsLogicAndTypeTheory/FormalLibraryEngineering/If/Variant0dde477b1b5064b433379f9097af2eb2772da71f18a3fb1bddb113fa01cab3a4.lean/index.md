# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.If.Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42dd2976533ac3f5a483178a603356641bf92e82",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42dd2976533ac3f5a483178a603356641bf92e82`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkIfCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/mkifcached--484afe85c02cfc20ee925f2c.md) | 46 | `declaration-track:484afe85c02cfc20ee925f2cc66f92a2b92b275409a089143ce905831d75484f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/instance--c5ef52f03a013361f0512fe0.md) | 64 | `declaration-track:c5ef52f03a013361f0512fe0f64422f09e7a23e3cecb0825d2865302f7f9642d` |
| 3 | `theorem` | [if_as_bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/if-as-bool--dc398e3b3f916df151ba8741.md) | 89 | `result-track:dc398e3b3f916df151ba87418ae45150f214e8c5e790330a68934ea979c260b1` |
| 4 | `theorem` | [denote_mkIfCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/denote-mkifcached--cbc90c43adee409b58cd71f9.md) | 94 | `result-track:cbc90c43adee409b58cd71f9962891f504223ad4745ca525ec3eff6be034dd9d` |
| 5 | `structure` | [IfInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/ifinput--974a75a0b39499d2a43481bc.md) | 117 | `declaration-track:974a75a0b39499d2a43481bc8789e9aae50f9ad36f50234b38ebbe9592744a8d` |
| 6 | `def` | [ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/ite--317544233e7c95336879d27f.md) | 122 | `declaration-track:317544233e7c95336879d27f508deeddea892309d427ae3228ebdc850af9017b` |
| 7 | `theorem` | [go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/go-le-size--296bf1a28bc3c40b6449dad7.md) | 147 | `result-track:296bf1a28bc3c40b6449dad71d7d08df000d9a7b444ffbc0b9a1afeab2b73ff8` |
| 8 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/go-decl-eq--d9896ec62aec56afb2896a52.md) | 158 | `result-track:d9896ec62aec56afb2896a526311258800e2f377b16a348ba49dffc6f79471e9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/instance--f4273ca1cd110179c16f5570.md) | 177 | `declaration-track:f4273ca1cd110179c16f5570aca666dacbd9faf06e5cf290cd13004a3d3869a1` |
| 10 | `theorem` | [go_get_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/go-get-aux--3fe8545bcc483da98128b5fe.md) | 189 | `result-track:3fe8545bcc483da98128b5fed4e8d61f56996300e3e229a1de3dccbff8628885` |
| 11 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/go-get--9da51032fcf945c5589d62c6.md) | 214 | `result-track:9da51032fcf945c5589d62c638de420b9b28ffdfe31d238d249d05868d4f2b70` |
| 12 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/go-denote-mem-prefix--eecab4c52a3bc10bfb1cd3d0.md) | 223 | `result-track:eecab4c52a3bc10bfb1cd3d02782e6a34a730bcafd71d32811d0db2d01e4daf4` |
| 13 | `theorem` | [denote_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/denote-go--42a95518144bd999eef27224.md) | 239 | `result-track:42a95518144bd999eef2722431e58c5c14d6a2554af23912efe3a5c98558f4a7` |
| 14 | `theorem` | [denote_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/declarations/denote-ite--2efb857a2e0bd4698052b276.md) | 286 | `result-track:2efb857a2e0bd4698052b276da1f9e6da4af8e2e630b7ec5c72a33a3c6bed42f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
