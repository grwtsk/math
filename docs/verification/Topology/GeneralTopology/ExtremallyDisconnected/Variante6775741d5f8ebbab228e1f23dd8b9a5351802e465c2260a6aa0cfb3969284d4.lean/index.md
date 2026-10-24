# Verification target: GRWTSK.Topology.GeneralTopology.ExtremallyDisconnected.Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46fda5d44dcf003b43bda908359c33f2b6336d79",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46fda5d44dcf003b43bda908359c33f2b6336d79`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/extremallydisconnected--e523ebb9c7dde6d8fed5a408.md) | 49 | `declaration-track:e523ebb9c7dde6d8fed5a40846c657ddc55566750513716fb4b24e959c139fde` |
| 2 | `theorem` | [extremallyDisconnected_of_homeo](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/extremallydisconnected-of-homeo--13e6fe432dd2e9cbdb930800.md) | 53 | `result-track:13e6fe432dd2e9cbdb930800ff34813d45432cc41c624291b838de1c24eadf57` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/instance--1a9e831a88000c789ea89a96.md) | 62 | `declaration-track:1a9e831a88000c789ea89a963d83a1f42b42251dd599949490a63ad740513990` |
| 4 | `def` | [CompactT2.Projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/compactt2-projective--78ed6e6913cd93d19aae5a5d.md) | 82 | `declaration-track:78ed6e6913cd93d19aae5a5d19b792a5fe6d004cd4c22292f14999b50c2731b2` |
| 5 | `theorem` | [StoneCech.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/stonecech-projective--7983a7eb2aaf34e86c849ea7.md) | 90 | `result-track:7983a7eb2aaf34e86c849ea76b22c2c872df4fe9b5f1ee09641a33695787be21` |
| 6 | `theorem` | [CompactT2.Projective.extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/compactt2-projective-extremallydisconnected--aa6f8c410e59a3e9ff258d84.md) | 101 | `result-track:aa6f8c410e59a3e9ff258d84a5e882950fff6348e41dadd973634ea288523b9a` |
| 7 | `lemma` | [exists_compact_surjective_zorn_subset](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/exists-compact-surjective-zorn-subset--a4c7a57104370cb294ec138f.md) | 147 | `result-track:a4c7a57104370cb294ec138f5e557209a519e51d355d119cd7e1cb3b10d95912` |
| 8 | `lemma` | [image_subset_closure_compl_image_compl_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/image-subset-closure-compl-image-compl-of-isopen--730545bcfee6edc253708e6b.md) | 185 | `result-track:730545bcfee6edc253708e6b7203589a15c8dd9824b04a9c1973f4fe93f1f292` |
| 9 | `lemma` | [ExtremallyDisconnected.disjoint_closure_of_disjoint_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/extremallydisconnected-disjoint-closure-of-disjoint-isopen--9f9cbb9e123f44f4619bd726.md) | 212 | `result-track:9f9cbb9e123f44f4619bd726ecc8a3e242f970c331ae023836777c31591d725a` |
| 10 | `lemma` | [ExtremallyDisconnected.homeoCompactToT2_injective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/extremallydisconnected-homeocompacttot2-injective--ddf05de98115920baa6b6f86.md) | 217 | `result-track:ddf05de98115920baa6b6f86a3a02e05d3fb31c6a5617bb8f304519765906b92` |
| 11 | `def` | [ExtremallyDisconnected.homeoCompactToT2](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/extremallydisconnected-homeocompacttot2--b5ff640a5bb9278914e92d01.md) | 248 | `declaration-track:b5ff640a5bb9278914e92d01f653adb53f873faf7c6cc34130387602a6a3f698` |
| 12 | `theorem` | [CompactT2.ExtremallyDisconnected.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/compactt2-extremallydisconnected-projective--c3009abfed93e055cebd298f.md) | 257 | `result-track:c3009abfed93e055cebd298fe5aaaf0b60afdc5a5f774849d15cc10b6e5f38ec` |
| 13 | `theorem` | [CompactT2.projective_iff_extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/compactt2-projective-iff-extremallydisconnected--828d1eeec00de2cf75e87e4c.md) | 285 | `result-track:828d1eeec00de2cf75e87e4c9c6685db5ac3025b7a4174633aec821713a109f9` |
| 14 | `instance` | [instExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/declarations/instextremallydisconnected--46b46ea3d72068d3e6336d90.md) | 293 | `declaration-track:46b46ea3d72068d3e6336d90ec418eb900e34a96ee4f7cd7c75c61e8738c8b3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
