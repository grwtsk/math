# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea0dfcb056a12b8d921461d7d5d298a8a96f45eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea0dfcb056a12b8d921461d7d5d298a8a96f45eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean.json)

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
| 1 | `abbrev` | [LabelExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/labelextension--310dc6e24f15c3d0f0a8599c.md) | 36 | `declaration-track:310dc6e24f15c3d0f0a8599cf0c5aac19d28e218cbc25a602dce00c9a35b3a3a` |
| 2 | `abbrev` | [LabelExtensionMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/labelextensionmap--46dd905eef4969f7c817e6cf.md) | 39 | `declaration-track:46dd905eef4969f7c817e6cf98ee9da1f82b8834eabfbbbd0a3a4e4214b2e1c8` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/builtin-initialize--e67ceaa0411a81cd1093e5e5.md) | 42 | `declaration-track:e67ceaa0411a81cd1093e5e5414ed3f52244951135f029f081a235c9e18f11bb` |
| 4 | `def` | [mkLabelExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/mklabelext--162a950ebfdc1339ee0bf3b5.md) | 45 | `declaration-track:162a950ebfdc1339ee0bf3b5110a878a5895514908570cc084379f6c3ca4fa91` |
| 5 | `def` | [mkLabelAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/mklabelattr--de3944218eab1a0a7e4c1217.md) | 53 | `declaration-track:de3944218eab1a0a7e4c1217d10831230a944b944ed5684c7eaf74ced7503e60` |
| 6 | `def` | [registerLabelAttr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/registerlabelattr--d24832715736c544902b0942.md) | 73 | `declaration-track:d24832715736c544902b094224bab8f5cb4ac89f4f1d31167d74b53e07db1846` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/macro--345fddcfd29020a5a7a27d52.md) | 84 | `declaration-track:345fddcfd29020a5a7a27d5268e5e0afa66836fe068a28e86900d6bcbfd74304` |
| 8 | `def` | [labelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant827df7fa2c1cca518ca96dd5536cbb0eca29383127d18db0f37dfccf07f6dc22.lean/declarations/labelled--3a7c8d7143fdb478b1a881fd.md) | 95 | `declaration-track:3a7c8d7143fdb478b1a881fda36aa206d0e79dea32140008ad63a34ac40d8236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
