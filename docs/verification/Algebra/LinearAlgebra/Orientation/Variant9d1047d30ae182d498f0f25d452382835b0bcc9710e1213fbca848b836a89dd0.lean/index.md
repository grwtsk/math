# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64cef56dccaa3094d43526dde7be597ce430b48f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64cef56dccaa3094d43526dde7be597ce430b48f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean.json)

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
| 1 | `abbrev` | [Orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation--7260efa87732307d0f96a606.md) | 59 | `declaration-track:7260efa87732307d0f96a606c7ae334b182365e6ebacca6bf5de7220a5bed00c` |
| 2 | `class` | [Module.Oriented](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/module-oriented--b479d44e9f2a6f993bbdec01.md) | 62 | `declaration-track:b479d44e9f2a6f993bbdec01a1f9374f789e1764fd00f2fde20e324891a2562d` |
| 3 | `def` | [Orientation.map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map--dadc5e0ed4941070fe4cf32b.md) | 71 | `declaration-track:dadc5e0ed4941070fe4cf32bec7a4f9cc5bed5e0db2f6097b7a93660c5d1c110` |
| 4 | `theorem` | [Orientation.map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-apply--f8af3ab96d4a252bd158cb40.md) | 75 | `result-track:f8af3ab96d4a252bd158cb4025195be6e9897fc69d04c67f129b36deb03090be` |
| 5 | `theorem` | [Orientation.map_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-refl--38625073e60ea8411e253be6.md) | 81 | `result-track:38625073e60ea8411e253be641cccec6ed7421cc429641002726eae4d607a8c6` |
| 6 | `theorem` | [Orientation.map_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-symm--8a7cc3dcebdb01c8f6fe40cd.md) | 85 | `result-track:8a7cc3dcebdb01c8f6fe40cda197df7f8c4899217534e496aacb7070731dda19` |
| 7 | `def` | [Orientation.reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex--443c25901e20a76e7b1f042b.md) | 93 | `declaration-track:443c25901e20a76e7b1f042b44575a7707323aaa97c21379beba17b5421a17c4` |
| 8 | `theorem` | [Orientation.reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex-apply--56136f85aef15783e8e7bb56.md) | 97 | `result-track:56136f85aef15783e8e7bb5666ac16a58bd44183bd6e42892d2680491fbfd0f6` |
| 9 | `theorem` | [Orientation.reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex-refl--09a916f6553195c22efddca3.md) | 103 | `result-track:09a916f6553195c22efddca3f82804f693ead2b65a5ec7fd561fd3d311c30aba` |
| 10 | `theorem` | [Orientation.reindex_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex-symm--f2c34e39c82f76fb11c7a25f.md) | 107 | `result-track:f2c34e39c82f76fb11c7a25fd2bfb8b227554c68153c0534520dc1a64f3820e2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/instance--0f950a35f45afdb7b3151bd7.md) | 114 | `declaration-track:0f950a35f45afdb7b3151bd7d59be6fb4bc39dc93bc7fe43fec72bee70c85185` |
| 12 | `theorem` | [Orientation.map_positiveOrientation_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-positiveorientation-of-isempty--de4f87af5480eaaf27eaac3c.md) | 120 | `result-track:de4f87af5480eaaf27eaac3ccfe8bd9a1ac7cff6eb63f640d540156d35e07388` |
| 13 | `theorem` | [Orientation.map_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-of-isempty--6dc6e59e0fc239b07a496b58.md) | 124 | `result-track:6dc6e59e0fc239b07a496b589900527103e29601f9b363ef4867a03980554b94` |
| 14 | `theorem` | [Orientation.map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map-neg--c6f60177f3c5a7fb062c8a39.md) | 142 | `result-track:c6f60177f3c5a7fb062c8a390f0c2ae683b7c42b9587a4dab3a12fe13fb5d9cb` |
| 15 | `theorem` | [Orientation.reindex_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex-neg--2797ed7ee6cf4c6cc60e7a87.md) | 147 | `result-track:2797ed7ee6cf4c6cc60e7a871885be5436194c02dc23c3880a40aa77a5cae122` |
| 16 | `theorem` | [map_orientation_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/map-orientation-eq-det-inv-smul--96ffce0c3d32abb22e7b1b5f.md) | 157 | `result-track:96ffce0c3d32abb22e7b1b5f68b392fae8b5da40bafc0eae7c1b18dba6599f4f` |
| 17 | `def` | [orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation--336bf2ab6c7ae756bfe64544.md) | 172 | `declaration-track:336bf2ab6c7ae756bfe6454463aea0c25b389c62accdd88ded18b630c94d769c` |
| 18 | `theorem` | [orientation_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-map--2c84523fa7f22a2b4787e0cf.md) | 175 | `result-track:2c84523fa7f22a2b4787e0cf814652f18399639a74e13726a6ff4548db0c803e` |
| 19 | `theorem` | [orientation_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-reindex--aa9f250e2ec86c8d72e1079b.md) | 179 | `result-track:aa9f250e2ec86c8d72e1079b8fd985ad27b3a96b61b5f152bc909d162bc36f45` |
| 20 | `theorem` | [orientation_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-unitssmul--763e7dc0cc66fa29d85a445b.md) | 185 | `result-track:763e7dc0cc66fa29d85a445bca4f3f9522893e63e533e278f3572d1e4f237399` |
| 21 | `theorem` | [orientation_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-isempty--22ea51cdebf268d3993438be.md) | 194 | `result-track:22ea51cdebf268d3993438be74a908fe79cf3a0cc5acb0d458c197e3c7dcbb58` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/instance--2fdde8701e810b9fd11fec60.md) | 205 | `declaration-track:2fdde8701e810b9fd11fec603b959ee87763e2b17f8d6624a42080dbf0cc8d93` |
| 23 | `theorem` | [eq_or_eq_neg_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/eq-or-eq-neg-of-isempty--2a3621a49ebd1af29688a293.md) | 225 | `result-track:2a3621a49ebd1af29688a2937576dfa29733e3ef63c2906c98dbacd4f75da0a0` |
| 24 | `theorem` | [orientation_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-eq-iff-det-pos--a5f96e001f73634969faad5b.md) | 248 | `result-track:a5f96e001f73634969faad5b5be124cde0eb15175b4d9b8ce1c0eb7f8e4d3344` |
| 25 | `theorem` | [orientation_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-eq-or-eq-neg--7b2c91ccfdbce1c5a117d93e.md) | 256 | `result-track:7b2c91ccfdbce1c5a117d93e5a7533139b6e957aa786d4a93a1f3a6d3f468aac` |
| 26 | `theorem` | [orientation_ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-ne-iff-eq-neg--7b37d668eb7cff406b2eaace.md) | 266 | `result-track:7b37d668eb7cff406b2eaace07c4ad85ad15ec96a5d40d5f33b0c5af2600da3a` |
| 27 | `theorem` | [orientation_comp_linearEquiv_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-comp-linearequiv-eq-iff-det-pos--e20100c0aaf488bb6658ae71.md) | 273 | `result-track:e20100c0aaf488bb6658ae71dc69861cd06b5c6c8b5fa8ca30e330a02c216b20` |
| 28 | `theorem` | [orientation_comp_linearEquiv_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-comp-linearequiv-eq-neg-iff-det-neg--a0ba34d22c63b032fb98483c.md) | 280 | `result-track:a0ba34d22c63b032fb98483c3272d04f2786c9a0970c9048f09106eb1d4fbe7a` |
| 29 | `theorem` | [orientation_neg_single](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-neg-single--b6a6d8a760cf5dc01420408a.md) | 288 | `result-track:b6a6d8a760cf5dc01420408ae5e1e9c107b8ae4d1b71b0acfe83a795fd7db1b3` |
| 30 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/adjusttoorientation--a07af61c0722f54e5962f128.md) | 295 | `declaration-track:a07af61c0722f54e5962f1283774869b7861babc1484acbb33f513ee633e7eae` |
| 31 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/orientation-adjusttoorientation--b188e0e9b74361cdccd22267.md) | 302 | `result-track:b188e0e9b74361cdccd222670f7aa351fe13c556e8ec977fc23c16c02cf0b76a` |
| 32 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--08812da62be190dbfef55986.md) | 312 | `result-track:08812da62be190dbfef559865280710a90b92fa1f27ca2d5509ebf5b771d724c` |
| 33 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/det-adjusttoorientation--93a3b5f633cab46815dff4a6.md) | 320 | `result-track:93a3b5f633cab46815dff4a6587d421188ec0b97c2ef81e5ccf171f7cf100133` |
| 34 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/abs-det-adjusttoorientation--48775b90896784867d970360.md) | 334 | `result-track:48775b90896784867d97036039eea796dac033dc60317f7ae85be9c7d37bd5cd` |
| 35 | `theorem` | [eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/eq-or-eq-neg--7bec14d732c55b21cdb3a797.md) | 356 | `result-track:7bec14d732c55b21cdb3a79711cc02e7c8d002bde4d718274bd8847eefd842ce` |
| 36 | `theorem` | [ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/ne-iff-eq-neg--53c01c137b4ac36a4e97b45d.md) | 365 | `result-track:53c01c137b4ac36a4e97b45db111bb46c9cf8796173d8e5c8bedd0bb0b33d2e8` |
| 37 | `theorem` | [map_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/map-eq-det-inv-smul--086db937273d3eb8e0ceb502.md) | 372 | `result-track:086db937273d3eb8e0ceb502973953b6c7b651fa7dcdc2ebb887825fd9847876` |
| 38 | `theorem` | [map_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/map-eq-iff-det-pos--8249dfa8ebe0ce47836eed8f.md) | 380 | `result-track:8249dfa8ebe0ce47836eed8f051b20b5b8a335882ae9890d5e116c052731ec5c` |
| 39 | `theorem` | [map_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/map-eq-neg-iff-det-neg--6ecd8324a35c66889a320245.md) | 391 | `result-track:6ecd8324a35c66889a320245a2b89746c835a941a36a03d52b61f730c24b95c9` |
| 40 | `def` | [someBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/somebasis--723d7089b0527f37c5d0c8f9.md) | 405 | `declaration-track:723d7089b0527f37c5d0c8f9a30bcb86a177f6f40a8cd5974161428aca8c8835` |
| 41 | `theorem` | [someBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/declarations/somebasis-orientation--fffcfb348c4205e543f94af3.md) | 411 | `result-track:fffcfb348c4205e543f94af39a2f48af2b0c4a2cefb672fd1bb21967acc443c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
