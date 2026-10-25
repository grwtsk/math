# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tally.Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc94f9268d059d3c2792604a19be039ad5d07be2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc94f9268d059d3c2792604a19be039ad5d07be2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tally](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally--ba410561a30a6082691d2aef.md) | 20 | `declaration-track:ba410561a30a6082691d2aef4349d414bc273553138442fdf4f9f499c6dba69c` |
| 2 | `def` | [Tally.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-empty--ea0bbe5a6be037e608cc56dd.md) | 24 | `declaration-track:ea0bbe5a6be037e608cc56dd4a76eafb44215467e00f4185a7c1382e32c068fe` |
| 3 | `def` | [Tally.ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-ofnat--9b2e7eb931a8d3d86b13e418.md) | 27 | `declaration-track:9b2e7eb931a8d3d86b13e418cbc31b460fd585104fcd3dccf42b30a93d12c0e9` |
| 4 | `def` | [Tally.append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-append--5e6008e0f1791f0b23ff4daa.md) | 30 | `declaration-track:5e6008e0f1791f0b23ff4daae847db8501b5ca7f4be7ae9d3614d5b3ab939f2a` |
| 5 | `theorem` | [Tally.count_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-count-ofnat--53a2d86328731fb14bfee674.md) | 33 | `result-track:53a2d86328731fb14bfee674dc539702ec767f2f0bd993ce809b2c02f117bfb4` |
| 6 | `theorem` | [Tally.ofNat_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-ofnat-count--1ad58416306775341a7c179a.md) | 37 | `result-track:1ad58416306775341a7c179a3b473efc72c0c53cf6685c9b5acf23122ceceeb4` |
| 7 | `theorem` | [Tally.count_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tally-count-append--383ffc8e88eed9aa027a0a50.md) | 42 | `result-track:383ffc8e88eed9aa027a0a50822bb5c088ed6a52aa9431736da2a169e63df804` |
| 8 | `def` | [tallyEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/tallyequivnat--df3dee433cc6bda117fc9e73.md) | 46 | `declaration-track:df3dee433cc6bda117fc9e7393da172e3c6b6944f2ab8a34ede37f2236147d5a` |
| 9 | `structure` | [CertifiedMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/certifiedmark--ef335f494452bb7939b3bf5b.md) | 52 | `declaration-track:ef335f494452bb7939b3bf5b0a6f9bc98c8c80879a5333ae2a1056d6677fb250` |
| 10 | `abbrev` | [CertifiedTally](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/certifiedtally--655f66928db21374730bbf5e.md) | 62 | `declaration-track:655f66928db21374730bbf5e7f17267f3ccc74f5dbe31552c50e390c613b89cc` |
| 11 | `def` | [CertifiedTally.appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/certifiedtally-appendmark--0911825257ffbf85e4fb5d44.md) | 64 | `declaration-track:0911825257ffbf85e4fb5d444d7c7aea79420b213b6303a219f00b8acb03ac19` |
| 12 | `theorem` | [CertifiedTally.length_appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/certifiedtally-length-appendmark--6aec87fcb916fd388a3ff718.md) | 69 | `result-track:6aec87fcb916fd388a3ff718aec300711ac51cfd13ff0f6f182e66308187d005` |
| 13 | `theorem` | [CertifiedTally.prefix_appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/certifiedtally-prefix-appendmark--5a021f4b0ec1cf558846b823.md) | 75 | `result-track:5a021f4b0ec1cf558846b8233186a6765a7a8e738795ce87c2ae10fe00eac8dc` |
| 14 | `def` | [fieldOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/fieldordinal--0f0f0b9c6381b22b7931aea0.md) | 82 | `declaration-track:0f0f0b9c6381b22b7931aea0a62ec9f791decab1763eb3007bf6cd8e78562717` |
| 15 | `theorem` | [fieldOrdinal_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variant64c2c6ff71037f2a30e6fbe04ff3d057feae05cb2802d28a44de22797fa50f5d.lean/declarations/fieldordinal-count--bf0f596473019895a401bf11.md) | 85 | `result-track:bf0f596473019895a401bf117ebb215c551283ce5c494b3306c7e3918464a075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
