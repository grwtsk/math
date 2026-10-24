# Verification target: GRWTSK.Topology.GeneralTopology.CompactSystem.Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3360187f0d8df4463bd97205079e3dc8b344d44f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3360187f0d8df4463bd97205079e3dc8b344d44f`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean.json)

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
| 1 | `def` | [IsCompactSystem](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem--98040a8244a668090d12c986.md) | 39 | `declaration-track:98040a8244a668090d12c986b35a3ad064ddf53eb141a8802d682454f28997af` |
| 2 | `lemma` | [of_nonempty_iInter](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/of-nonempty-iinter--386fe44662693a6192870dd8.md) | 46 | `result-track:386fe44662693a6192870dd8ed309e6d1bdcfc771a20a1691c4b8a9958284e03` |
| 3 | `lemma` | [nonempty_iInter](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/nonempty-iinter--f6717d7f8fdbea07e3702caf.md) | 53 | `result-track:f6717d7f8fdbea07e3702caf5e39bf17f9508604be73b055e70d749a31c04c26` |
| 4 | `theorem` | [iff_nonempty_iInter](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iff-nonempty-iinter--6dcf59a971272b262fad6bcc.md) | 60 | `result-track:6dcf59a971272b262fad6bcca25325b7ba840f079ea2c27f748c366c8b7fee46` |
| 5 | `lemma` | [of_IsEmpty](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/of-isempty--26630fdeb44236cff97ec35d.md) | 66 | `result-track:26630fdeb44236cff97ec35d5b9dac4b1300b37a8f1bbfc8c37a0a45296a75ed` |
| 6 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/mono--5e2a8f1f8ea3695860b735ba.md) | 70 | `result-track:5e2a8f1f8ea3695860b735ba0a5dbff685c79296405aca14568308d786a05bfe` |
| 7 | `lemma` | [insert_empty](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/insert-empty--b6c14eb0b52a36df7b1b5f23.md) | 74 | `result-track:b6c14eb0b52a36df7b1b5f2304a745ca1796e55a2938c7363ab07f54f2a6ad64` |
| 8 | `lemma` | [insert_univ](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/insert-univ--9d06ee76c4df3332ff02b3fd.md) | 83 | `result-track:9d06ee76c4df3332ff02b3fd243abe34c2c5ba950b18daa169f515f67111b307` |
| 9 | `lemma` | [isCompactSystem_iff_nonempty_iInter_of_lt](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-iff-nonempty-iinter-of-lt--ca03ae8108ff0c0e61195c39.md) | 109 | `result-track:ca03ae8108ff0c0e61195c39f39b53f62816b087f89b75c6acc5795072064657` |
| 10 | `lemma` | [isCompactSystem_insert_empty_iff](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-insert-empty-iff--e2d7a46f82c47a68262c7aaf.md) | 121 | `result-track:e2d7a46f82c47a68262c7aafa70aeb21ec724a013b3c05fef4632080bd5836cc` |
| 11 | `lemma` | [isCompactSystem_insert_univ_iff](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-insert-univ-iff--58a140ce25be0b0e1a476d51.md) | 126 | `result-track:58a140ce25be0b0e1a476d512b0220953e4a616fb756b41dc842f873dba5b869` |
| 12 | `theorem` | [isCompactSystem_iff_of_directed](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-iff-of-directed--24510da00f38d6bd001bf9ef.md) | 131 | `result-track:24510da00f38d6bd001bf9ef788df9ea2ef1e9358d602998aabe92643cd38f3a` |
| 13 | `theorem` | [isCompactSystem_iff_nonempty_iInter_of_directed](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-iff-nonempty-iinter-of-directed--4c707fef48e375390c5f3872.md) | 151 | `result-track:4c707fef48e375390c5f387268ca29bcc67a1ad6492835a78fe62d269e97c64e` |
| 14 | `theorem` | [isCompactSystem_isCompact_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-iscompact-isclosed--5f0ed1d234d2c00deedc2afb.md) | 163 | `result-track:5f0ed1d234d2c00deedc2afb6a400764f1bc4112c42227d4fe5f7aebe009ffd2` |
| 15 | `theorem` | [isCompactSystem_isCompact](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-iscompact--28bfa6a3afe72f1261822d7f.md) | 173 | `result-track:28bfa6a3afe72f1261822d7f046df77272ec26227502c941958eedba6118b0b6` |
| 16 | `theorem` | [isCompactSystem_insert_univ_isCompact_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/declarations/iscompactsystem-insert-univ-iscompact-isclosed--af11d5ef495dd86c3b7d9337.md) | 179 | `result-track:af11d5ef495dd86c3b7d933745ef259efebe37dca47a2ea8c626e6df8799edda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
