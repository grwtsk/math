# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shell.Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db33c6bf94f9ced1cec3d82bf1dde9b1667eaa6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db33c6bf94f9ced1cec3d82bf1dde9b1667eaa6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Grid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedShape](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/expandedshape--27d7a69d0cc244d4119d84cf.md) | 29 | `declaration-track:27d7a69d0cc244d4119d84cffe51125799bb0bfc2c9937cc9acf2c407f2c77b8` |
| 2 | `def` | [centerCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centercell--c5fcaded0cfcd02d33c90cba.md) | 32 | `declaration-track:c5fcaded0cfcd02d33c90cba1e6475277a34c44f4fb41eecf4eecf45d0a519b5` |
| 3 | `def` | [IsCenterCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/iscentercell--13665c6d4db2e1ff884b9ffa.md) | 42 | `declaration-track:13665c6d4db2e1ff884b9ffa1c02fe79fcbf1751d92dde28fbdf83ceaf4756e7` |
| 4 | `def` | [IsShellCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/isshellcell--264ea147b2e51dc89ab13efb.md) | 46 | `declaration-track:264ea147b2e51dc89ab13efb2cc26b10e8c00725cf906ba2d7afc2cb95fda3e7` |
| 5 | `instance` | [instFintypeCenterCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/instfintypecentercell--af7ba2ca1732eaea2c8d2ae5.md) | 49 | `declaration-track:af7ba2ca1732eaea2c8d2ae571875d094226774a0d376767d13e2dc2562fecbc` |
| 6 | `instance` | [instFintypeShellCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/instfintypeshellcell--2110c68bafb544f7648297ba.md) | 54 | `declaration-track:2110c68bafb544f7648297bacbcb0be4976d3cc88b162deb9a56fffe83f63774` |
| 7 | `theorem` | [centerCell_isCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centercell-iscenter--f50b3bb959d822bd0832853b.md) | 59 | `result-track:f50b3bb959d822bd0832853bfc424decdc7a5dd1a63f1bda40d928c8b09cf2a6` |
| 8 | `theorem` | [shell_or_center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/shell-or-center--290af8431a78e6e92d9e80f7.md) | 71 | `result-track:290af8431a78e6e92d9e80f79302e12cf459cd39420ad9afedbc8ce7b734b879` |
| 9 | `theorem` | [not_shell_and_center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/not-shell-and-center--ae170672ac2c45c4fbdafa7f.md) | 77 | `result-track:ae170672ac2c45c4fbdafa7f572446dba4d484ced972b810ae4f5e8d0c702c59` |
| 10 | `def` | [centerRow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centerrow--6b49d089907be964c2794d5c.md) | 82 | `declaration-track:6b49d089907be964c2794d5cfff1ea787c2041c3853b7ed738bb2cec6dbe7b01` |
| 11 | `def` | [centerCol](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centercol--f9d548dcf3412e188bbde353.md) | 90 | `declaration-track:f9d548dcf3412e188bbde353214aa8fc78f812eaa461987ede78c0a2de2f4d79` |
| 12 | `def` | [centerOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centerof--d4c9b4d851a8b89819768588.md) | 98 | `declaration-track:d4c9b4d851a8b89819768588dc22ae9e51a7f079c8eadd1ef540ec83c72550c8` |
| 13 | `theorem` | [centerCell_centerOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centercell-centerof--564e42f9d54bccbb1772dcfb.md) | 104 | `result-track:564e42f9d54bccbb1772dcfb3d75c2395b4f7741a054e822da7bf604c4ab1c53` |
| 14 | `theorem` | [centerOf_centerCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centerof-centercell--4a6d1d47a37c050ab193825a.md) | 114 | `result-track:4a6d1d47a37c050ab193825aaae05b045e22f634b048f3ccf7089976ea5b74c2` |
| 15 | `def` | [centerSubtypeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/centersubtypeequiv--d6319f91665293505e1ce967.md) | 118 | `declaration-track:d6319f91665293505e1ce96790e6d547121abefa73691cb8b4e9f9c18c7ba4f3` |
| 16 | `def` | [shellCardinality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/shellcardinality--6aee9ae3d1e6647a9bb14466.md) | 126 | `declaration-track:6aee9ae3d1e6647a9bb14466f65e34b7bcadf9c3d50794792cfcab24214976ea` |
| 17 | `theorem` | [center_cardinality_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/center-cardinality-eq--1764ab655a85d07ae9ba4950.md) | 129 | `result-track:1764ab655a85d07ae9ba4950e95fb04e0b238ba8a8930ff08ddeecd8c1dca9da` |
| 18 | `theorem` | [shell_cardinality_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant7ee199c5d46da1dfb472357fd0d702e874fa10a4210fa597e9b2eba8a6bd72c1.lean/declarations/shell-cardinality-eq--eabd623f7e3739afda8d334c.md) | 139 | `result-track:eabd623f7e3739afda8d334c05c2c0844b78bfb5b3490c0c4009605077a03827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
