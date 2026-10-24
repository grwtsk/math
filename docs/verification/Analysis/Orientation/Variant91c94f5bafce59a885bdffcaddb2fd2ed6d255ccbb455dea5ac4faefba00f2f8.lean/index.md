# Verification target: GRWTSK.Analysis.Orientation.Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924691273ea55786bc6142fd5823d6882d1a88f0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924691273ea55786bc6142fd5823d6882d1a88f0`.

Source path: `GRWTSK/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_to_matrix_orthonormalBasis_of_same_orientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/det-to-matrix-orthonormalbasis-of-same-orientation--c968cb1bc390973f7df36dba.md) | 56 | `result-track:c968cb1bc390973f7df36dba65eb54fa5344c1dad6b524ed4e85ac5c15a757d4` |
| 2 | `theorem` | [det_to_matrix_orthonormalBasis_of_opposite_orientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/det-to-matrix-orthonormalbasis-of-opposite-orientation--5db7bde67478a71f9415d8bd.md) | 66 | `result-track:5db7bde67478a71f9415d8bd74b907cdebac9b7e4c3d528cf1de938d367c0d2f` |
| 3 | `theorem` | [same_orientation_iff_det_eq_det](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/same-orientation-iff-det-eq-det--f6c44f82f495b2352dd9d0d3.md) | 76 | `result-track:f6c44f82f495b2352dd9d0d3aeaf353a8535214bea1520b10ea30c73f1b864d6` |
| 4 | `theorem` | [det_eq_neg_det_of_opposite_orientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/det-eq-neg-det-of-opposite-orientation--f13aeb5bd03e5e7a537fbcbc.md) | 90 | `result-track:f13aeb5bd03e5e7a537fbcbcadd15b1d21790e8137760b43cdbecf0ab17978d4` |
| 5 | `theorem` | [orthonormal_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/orthonormal-adjusttoorientation--78dfea705b02f495a69d6a66.md) | 101 | `result-track:78dfea705b02f495a69d6a666ce00311733d01fbc3c2a1b59cfe819e06985fb5` |
| 6 | `def` | [adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/adjusttoorientation--fdd82f824dd12d92a9bcd28e.md) | 108 | `declaration-track:fdd82f824dd12d92a9bcd28e582eac1b863c4cc64791dd103867036b358b8547` |
| 7 | `theorem` | [toBasis_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/tobasis-adjusttoorientation--522afd1a4bd0ad8496528abb.md) | 111 | `result-track:522afd1a4bd0ad8496528abb6e2fe34963fe39e8c8fe52ef2eb8ed731d631fb5` |
| 8 | `theorem` | [orientation_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/orientation-adjusttoorientation--9492b9c743cd1b92c9e23bc9.md) | 117 | `result-track:9492b9c743cd1b92c9e23bc913d8f951974e4793a5fe95d1d8ec210952520fb5` |
| 9 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--f5b3765df9c849229675f79c.md) | 123 | `result-track:f5b3765df9c849229675f79ce3ca6a68f8d3c2fd5f99bd821e3547030ab684b9` |
| 10 | `theorem` | [det_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/det-adjusttoorientation--a736b51a1e5fea0817cc33ce.md) | 128 | `result-track:a736b51a1e5fea0817cc33ce1430de66fa043beb6920cfbaa66c6e00dbcabc78` |
| 11 | `theorem` | [abs_det_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/abs-det-adjusttoorientation--808d2c996d201769a36113e9.md) | 133 | `result-track:808d2c996d201769a36113e92e67f87c593cbe667200ee869c0de9220c437e2f` |
| 12 | `def` | [finOrthonormalBasis](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/finorthonormalbasis--944e9d32ded9d23fba6ca642.md) | 148 | `declaration-track:944e9d32ded9d23fba6ca64264607812e4535fbfc65cfc17c51379088393909a` |
| 13 | `theorem` | [finOrthonormalBasis_orientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/finorthonormalbasis-orientation--ff86a6ee3c6b8176bec60d88.md) | 156 | `result-track:ff86a6ee3c6b8176bec60d8838df97afa2d6a925add6d1cb9df7b67e3c16efec` |
| 14 | `theorem` | [volumeForm_zero_pos](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-zero-pos--91a5e6ec4ea157c49b4b6258.md) | 179 | `result-track:91a5e6ec4ea157c49b4b62588fb57af5ef7078e4d4a156480e9cd0c86526de9b` |
| 15 | `theorem` | [volumeForm_zero_neg](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-zero-neg--5ec6e48ea39aa8c48d45bfbc.md) | 185 | `result-track:5ec6e48ea39aa8c48d45bfbc929201edd926d09afb089549f367bbf7bfc3f295` |
| 16 | `theorem` | [volumeForm_robust](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-robust--e8b3a92df58cf9f96016c48a.md) | 198 | `result-track:e8b3a92df58cf9f96016c48a3c827652adcb56b1ce15c9e48136e88408d33b65` |
| 17 | `theorem` | [volumeForm_robust_neg](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-robust-neg--38819996f098eb66a7a36ffc.md) | 210 | `result-track:38819996f098eb66a7a36ffc0788326d9008bef11cb43fe780aa55cc3c86d668` |
| 18 | `theorem` | [volumeForm_neg_orientation](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-neg-orientation--e1c24a711c7714859b8ec56a.md) | 223 | `result-track:e1c24a711c7714859b8ec56abcee363f02b9f782eac5346e326953ef07b0a30f` |
| 19 | `theorem` | [volumeForm_robust'](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-robust--a5c523d28c82768ffe339a6c.md) | 235 | `result-track:a5c523d28c82768ffe339a6c13773ccc406846030363d28466cbdb88acfa5e75` |
| 20 | `theorem` | [abs_volumeForm_apply_le](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/abs-volumeform-apply-le--1131f5c14536f5cd446ff71f.md) | 245 | `result-track:1131f5c14536f5cd446ff71ff5c5d917498fda0c2632168f0e36bfa5fc75bc36` |
| 21 | `theorem` | [volumeForm_apply_le](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-apply-le--ca73fbca1bf3c655eeb381f5.md) | 257 | `result-track:ca73fbca1bf3c655eeb381f5ab9da4367c8a39ff17a3d4ea3fcaac8d0f665885` |
| 22 | `theorem` | [abs_volumeForm_apply_of_pairwise_orthogonal](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/abs-volumeform-apply-of-pairwise-orthogonal--0364718971d09552fe5161b3.md) | 263 | `result-track:0364718971d09552fe5161b3ad249402ccffcb3d4d5b02af8a61e694ac49c32b` |
| 23 | `theorem` | [abs_volumeForm_apply_of_orthonormal](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/abs-volumeform-apply-of-orthonormal--441ef13e72344a7ffe10143a.md) | 286 | `result-track:441ef13e72344a7ffe10143a56d45125708144e2e9ac6ada0ddf0609529f73a1` |
| 24 | `theorem` | [volumeForm_map](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-map--7185181facfdc2ab17ba6e80.md) | 290 | `result-track:7185181facfdc2ab17ba6e801bd61c340495afcc394886b5396db3ba850f8f94` |
| 25 | `theorem` | [volumeForm_comp_linearIsometryEquiv](../../../../mathematics/Analysis/Orientation/Variant91c94f5bafce59a885bdffcaddb2fd2ed6d255ccbb455dea5ac4faefba00f2f8.lean/declarations/volumeform-comp-linearisometryequiv--c19606a211f061935faa0eab.md) | 306 | `result-track:c19606a211f061935faa0eabe114c2a5b2d2408b7dd25ac4952e98a5623a2ff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
