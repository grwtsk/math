# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Udiv.Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "998244df6bb4a850e68272281fc7dee1d8731171",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `998244df6bb4a850e68272281fc7dee1d8731171`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_blastShiftConcat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastshiftconcat--0be5180a92398e1f89358d95.md) | 46 | `result-track:0be5180a92398e1f89358d9570c8cf2b859bb7d7aba271300824a7c5fe4d80c2` |
| 2 | `theorem` | [denote_blastShiftConcat_eq_shiftConcat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastshiftconcat-eq-shiftconcat--0566e3bb62c734c91f164624.md) | 61 | `result-track:0566e3bb62c734c91f1646241637d3fb6f43bb82c096497a91d32b9606c7deb2` |
| 3 | `theorem` | [blastDivSubtractShift_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/blastdivsubtractshift-denote-mem-prefix--f61432e7a6e3cca2fb281129.md) | 74 | `result-track:f61432e7a6e3cca2fb2811290eb3cebc210cfca6e74adb8b091332de2250f2d7` |
| 4 | `theorem` | [denote_blastDivSubtractShift_q](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastdivsubtractshift-q--2cde82ff53b3e5d45eb37396.md) | 90 | `result-track:2cde82ff53b3e5d45eb373964c2c0b37ee9567786620489894d982724d202e2e` |
| 5 | `theorem` | [denote_blastDivSubtractShift_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastdivsubtractshift-r--c58bc57dc6e4bd0d259553bc.md) | 184 | `result-track:c58bc57dc6e4bd0d259553bc37510c497a2d7d409710c910c8082e111fe6a38f` |
| 6 | `theorem` | [denote_blastDivSubtractShift_wn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastdivsubtractshift-wn--7496a0b27d40a36b3f5b53f9.md) | 310 | `result-track:7496a0b27d40a36b3f5b53f96396ae1c1a95c72eeba1f7224a58470f487c5bb9` |
| 7 | `theorem` | [denote_blastDivSubtractShift_wr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastdivsubtractshift-wr--39b8c7ad4d4feb3b5689c92d.md) | 322 | `result-track:39b8c7ad4d4feb3b5689c92d258365065125755074afe667b9f50236cdb614fb` |
| 8 | `theorem` | [denote_go_eq_divRec_q](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-go-eq-divrec-q--ee1cef862a2b4a4512dbc183.md) | 333 | `result-track:ee1cef862a2b4a4512dbc1839ca8419a5b74b3f23f7b357e352323e4d27da303` |
| 9 | `theorem` | [denote_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-go--01532d2ed5a11f0e59ecee3c.md) | 409 | `result-track:01532d2ed5a11f0e59ecee3c7e90bc6a739b67e547f4ca9e929f728a5e68b9c1` |
| 10 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/go-denote-mem-prefix--a183f977e90d21f93dc17a39.md) | 434 | `result-track:a183f977e90d21f93dc17a39b96f096aa63e53d0b28012fb834d5dac0c401f11` |
| 11 | `theorem` | [denote_blastUdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/declarations/denote-blastudiv--bb6f28e92c98b133e1f831d8.md) | 452 | `result-track:bb6f28e92c98b133e1f831d859c8ce5ecf3ea10f8fe6099bb0d5f454071e6e2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
