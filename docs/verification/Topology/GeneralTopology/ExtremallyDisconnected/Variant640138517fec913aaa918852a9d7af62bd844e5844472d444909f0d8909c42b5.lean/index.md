# Verification target: GRWTSK.Topology.GeneralTopology.ExtremallyDisconnected.Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69258a01246f5ca427b121cd6e6a1150248c2ae8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69258a01246f5ca427b121cd6e6a1150248c2ae8`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/extremallydisconnected--94ffc5971b7dc078c4ea4090.md) | 41 | `declaration-track:94ffc5971b7dc078c4ea409080946e7cc5a6c52119cd63b65bcfeaa79c8ad869` |
| 2 | `theorem` | [extremallyDisconnected_of_homeo](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/extremallydisconnected-of-homeo--f542b5cd9febedfa7c3e7b15.md) | 45 | `result-track:f542b5cd9febedfa7c3e7b15ac464bdd80b3bc87d66106c56e952a14425f0681` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/instance--485a84173309424a9d8a85c0.md) | 54 | `declaration-track:485a84173309424a9d8a85c085dd3aadf97b904024364b94c3f15a2a25ffe5ab` |
| 4 | `def` | [CompactT2.Projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/compactt2-projective--7a8d8bff84e759b577e963c1.md) | 74 | `declaration-track:7a8d8bff84e759b577e963c13cf290daad4f4b3e8cf0280408040d10d82b37f5` |
| 5 | `theorem` | [StoneCech.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/stonecech-projective--941029256abcb7ba0753410d.md) | 82 | `result-track:941029256abcb7ba0753410db361d15c4556142c233aae18bf1acc23a84f459f` |
| 6 | `theorem` | [CompactT2.Projective.extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/compactt2-projective-extremallydisconnected--c0be3dbf85ceef421ca0cf72.md) | 93 | `result-track:c0be3dbf85ceef421ca0cf723df838a28b3aa7f831b17b9b4a71f576a2c06798` |
| 7 | `lemma` | [exists_compact_surjective_zorn_subset](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/exists-compact-surjective-zorn-subset--033da97a7ca98c160f15649b.md) | 139 | `result-track:033da97a7ca98c160f15649b32503b1c0996ca7487a5237f248b7a7adf4fe75a` |
| 8 | `lemma` | [image_subset_closure_compl_image_compl_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/image-subset-closure-compl-image-compl-of-isopen--4f7f632b386468c57bbec3f1.md) | 177 | `result-track:4f7f632b386468c57bbec3f10cebff75faea9c9fbee27b2683480d6df0dd7d08` |
| 9 | `lemma` | [ExtremallyDisconnected.disjoint_closure_of_disjoint_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/extremallydisconnected-disjoint-closure-of-disjoint-isopen--24cae261f214b860ba5c521b.md) | 204 | `result-track:24cae261f214b860ba5c521b929a27cdf509272fec947f01ef7de167266e7d26` |
| 10 | `lemma` | [ExtremallyDisconnected.homeoCompactToT2_injective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/extremallydisconnected-homeocompacttot2-injective--8944488e6cf4be82316c6b5a.md) | 209 | `result-track:8944488e6cf4be82316c6b5ac7469de085561dc429bbed2be06769c788833890` |
| 11 | `def` | [ExtremallyDisconnected.homeoCompactToT2](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/extremallydisconnected-homeocompacttot2--f1af696af0950d61e53a1c3e.md) | 240 | `declaration-track:f1af696af0950d61e53a1c3e49aaadd38e11c445b9ae931d65911f0ccb46bb64` |
| 12 | `theorem` | [CompactT2.ExtremallyDisconnected.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/compactt2-extremallydisconnected-projective--05465097870f87e1d3db700f.md) | 249 | `result-track:05465097870f87e1d3db700f7f8e36a47f9ff59fde25c8cbe1f0add45ae10fdd` |
| 13 | `theorem` | [CompactT2.projective_iff_extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/compactt2-projective-iff-extremallydisconnected--bb998def2cc5a78ca425746c.md) | 277 | `result-track:bb998def2cc5a78ca425746cb881b7bc1491e296b0bb01a80655e87b3ebb4929` |
| 14 | `instance` | [instExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/declarations/instextremallydisconnected--41fdc62635fa54e4a597ddb3.md) | 285 | `declaration-track:41fdc62635fa54e4a597ddb3614193aca6aa1f3a6a9d06f78570261cb4b9087f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
