# Verification target: GRWTSK.Topology.GeneralTopology.ExtremallyDisconnected.Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef74f11877004731dc8c1a4097909f24c497add`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/extremallydisconnected--66212fb88a3544b0016f5c58.md) | 47 | `declaration-track:66212fb88a3544b0016f5c5861d98a1ec2aa919b2d9d303cfd4c87e4961eb66b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/instance--73a4b357cf7eea3caee50007.md) | 55 | `declaration-track:73a4b357cf7eea3caee500074c6b6d969a60a2c5b709873aaade9562078394c4` |
| 3 | `def` | [CompactT2.Projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/compactt2-projective--cd97eb9ae9d9b6a1322bfe2c.md) | 80 | `declaration-track:cd97eb9ae9d9b6a1322bfe2c6b09037c8b829b4e25df32b1e94c928886cf6899` |
| 4 | `theorem` | [StoneCech.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/stonecech-projective--1239a96a5126a2d50deea76b.md) | 89 | `result-track:1239a96a5126a2d50deea76b7434a45c308d9ae15dc3c0c946a0ce4953f16fec` |
| 5 | `theorem` | [CompactT2.Projective.extremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/compactt2-projective-extremallydisconnected--f3dbc460a44184671a0accc6.md) | 101 | `result-track:f3dbc460a44184671a0accc6e5185dd6d66879ad60f39c8aed36e193b1e29bb3` |
| 6 | `lemma` | [exists_compact_surjective_zorn_subset](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/exists-compact-surjective-zorn-subset--3b67b80635ec9303c22796ec.md) | 149 | `result-track:3b67b80635ec9303c22796ecc403b7ddabd7b18b2a7b1f84f03f3004fb7c5962` |
| 7 | `lemma` | [image_subset_closure_compl_image_compl_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/image-subset-closure-compl-image-compl-of-isopen--df0f23b5e54b0037046fc164.md) | 185 | `result-track:df0f23b5e54b0037046fc164c1b584bd354cf51df4f75246a199f431e7409eb0` |
| 8 | `lemma` | [ExtremallyDisconnected.disjoint_closure_of_disjoint_IsOpen](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/extremallydisconnected-disjoint-closure-of-disjoint-isopen--26d820fc22a9af05dbd2a784.md) | 212 | `result-track:26d820fc22a9af05dbd2a784104aaf1d7302eaf798500405e02a5d6148ab5496` |
| 9 | `lemma` | [ExtremallyDisconnected.homeoCompactToT2_injective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/extremallydisconnected-homeocompacttot2-injective--13de0dd9110f51f15be9e0c5.md) | 217 | `result-track:13de0dd9110f51f15be9e0c5e73b00dc6ba73c777055f512ed211013fdecdbdb` |
| 10 | `def` | [ExtremallyDisconnected.homeoCompactToT2](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/extremallydisconnected-homeocompacttot2--b6226944f029ac3912bb907f.md) | 248 | `declaration-track:b6226944f029ac3912bb907f498b00f2a338fa27b5c942b7a59d1539f6fd7ae7` |
| 11 | `theorem` | [CompactT2.ExtremallyDisconnected.projective](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/compactt2-extremallydisconnected-projective--cca6e48e75b20bfacd640eab.md) | 257 | `result-track:cca6e48e75b20bfacd640eab140e1c538a301097c0c096149aa740b9983f07cc` |
| 12 | `theorem` | [CompactT2.projective_iff_extremallyDisconnnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/compactt2-projective-iff-extremallydisconnnected--94dd84ab2cdedf3d1cd7c703.md) | 285 | `result-track:94dd84ab2cdedf3d1cd7c703944db3738c00ae390066630d3851cac9188dfa80` |
| 13 | `instance` | [instExtremallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/declarations/instextremallydisconnected--8aeeef10342392f694f4fb6a.md) | 293 | `declaration-track:8aeeef10342392f694f4fb6a3a983c48dcc8ddfbf95b0560911eedca0958f5de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
