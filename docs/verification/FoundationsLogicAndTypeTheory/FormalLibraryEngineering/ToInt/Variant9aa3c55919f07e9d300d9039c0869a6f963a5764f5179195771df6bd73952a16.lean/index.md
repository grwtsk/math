# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606492d1ae65186fc637645db8b677103f8e62e2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606492d1ae65186fc637645db8b677103f8e62e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_translation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/exists-translation--63abd234b77bd548f6c0492c.md) | 50 | `result-track:63abd234b77bd548f6c0492cf7351027add33e486198505c2efbbbbceafbfb9a` |
| 2 | `def` | [toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint--e7d1b6830ce940a8b3856800.md) | 75 | `declaration-track:e7d1b6830ce940a8b385680052d95dae0d64edac222c9968f14c5c934d0076ef` |
| 3 | `theorem` | [toInt_le_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-le-toint--9cdff5f383f827986b659a3f.md) | 80 | `result-track:9cdff5f383f827986b659a3fff104b2fab6316b59dc7c4e36bf2e3e07b1de6fa` |
| 4 | `theorem` | [toInt_lt_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-lt-toint--496a52862a4b88cebc6107d3.md) | 83 | `result-track:496a52862a4b88cebc6107d3b67a5ca3343becd5f9dc6e40c0540ebf12ce50bf` |
| 5 | `theorem` | [toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-eq-toint--8a0b3a5bc63f70300e2abfa1.md) | 86 | `result-track:8a0b3a5bc63f70300e2abfa12cd0dbd7c10c5bc584e8dd66444448c0a488f2a6` |
| 6 | `theorem` | [toInt_ne_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-ne-toint--750964019224a911c3e543ff.md) | 89 | `result-track:750964019224a911c3e543ff2cfdcd5e12c96a45832a028384666f694d3742a9` |
| 7 | `theorem` | [toInt_nle_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-nle-toint--236577b88cb0a19ef61790cc.md) | 92 | `result-track:236577b88cb0a19ef61790ccc034d5999cb5201936e0d384e522da21c4db7091` |
| 8 | `theorem` | [toInt_nlt_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-nlt-toint--4fcf4a36e75920ff7fc40d8b.md) | 95 | `result-track:4fcf4a36e75920ff7fc40d8b6e459b34578973d424896b23a0b46fa6089be741` |
| 9 | `theorem` | [toInt_sup_toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-sup-toint-eq-toint--9d6b2093282d2943aad78662.md) | 98 | `result-track:9d6b2093282d2943aad786622d46fbdc0709cce618bdd2669f940e6ac4386d2a` |
| 10 | `theorem` | [toInt_inf_toInt_eq_toInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/toint-inf-toint-eq-toint--ed6c073a985b4edffd44e759.md) | 102 | `result-track:ed6c073a985b4edffd44e7598cf69f6d223f8879fd8409e0251bd7b1b4136b29` |
| 11 | `def` | [mkFinFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/mkfinfun--f4fac5dfc09a2e8adf576de0.md) | 110 | `declaration-track:f4fac5dfc09a2e8adf576de056d809a5e0c9d102d91823f197f11fa90f0e779a` |
| 12 | `def` | [translateToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant9aa3c55919f07e9d300d9039c0869a6f963a5764f5179195771df6bd73952a16.lean/declarations/translatetoint--01a478d0623e28553172d7a9.md) | 122 | `declaration-track:01a478d0623e28553172d7a9080e4fddf49748b3e485091aac2f23d6eea8465f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
