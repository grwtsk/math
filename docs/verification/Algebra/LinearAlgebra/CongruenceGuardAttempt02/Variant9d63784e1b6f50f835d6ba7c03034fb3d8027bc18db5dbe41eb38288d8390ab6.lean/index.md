# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt02.Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06471027f12d85790c20ee7bce9f5dbd338ea737",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06471027f12d85790c20ee7bce9f5dbd338ea737`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/quadratic--c403a05d8995c0dfe7f90542.md) | 16 | `declaration-track:c403a05d8995c0dfe7f90542cd926295b2bfb58707babd3b715495a0790c6865` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/hasnegativedirection--e85e62bdcbe755f523a14db1.md) | 19 | `declaration-track:e85e62bdcbe755f523a14db1ebfdf635157bf72ca1beb32b6d9c92bdac0767d4` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/pullback--85fc486c8ec215fa736ef1db.md) | 22 | `declaration-track:85fc486c8ec215fa736ef1db3bb2bbb841f256592f2c9c31de56b194d6a0a396` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/quadratic-pullback--67b5d09c0059687092857ec4.md) | 24 | `result-track:67b5d09c0059687092857ec4456bb735bdf7a5059e57bd1314f8c826480d07d9` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/pullback-ishermitian--066c6a7303857a7929eb029d.md) | 30 | `result-track:066c6a7303857a7929eb029d95ceb6614672c8dbf1eb8f5621993b413eac311d` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/invertible-psd-iff--bb1b27c6ce600f0cd0e734da.md) | 34 | `result-track:bb1b27c6ce600f0cd0e734da0fb73abf43771848979c121866a4e70ff976eb67` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/unitary-psd-iff--0dc8194f2d531ee89751289e.md) | 38 | `result-track:0dc8194f2d531ee89751289ea5e6b6c31a3a5f006486ad8e908740820b0f3ce3` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/inverse-negative-witness--ccc0ac636e1d5ca5b9ac8038.md) | 43 | `result-track:ccc0ac636e1d5ca5b9ac803826f4c37b26049e9a35ac4156aeac6a75b61540e0` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/invertible-negative-iff--5dd07c29598d245320f2c837.md) | 49 | `result-track:5dd07c29598d245320f2c8370e5b59649643638b92fc68703e2ac4b2ec081b35` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/negative-not-psd--0566e37b6fa5bcea8a2d8a5c.md) | 58 | `result-track:0566e37b6fa5bcea8a2d8a5c64d23e6e8f67d0d73c4a94b56b65341ed188e212` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/hermitian-negative-iff-not-psd--6553cb7cb32e1588fedbe96d.md) | 64 | `result-track:6553cb7cb32e1588fedbe96d1d5b44a413b18d9a5551bf7aa98d06975e92b9ee` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/pullback-one--d461c6c57f21da200282e130.md) | 76 | `result-track:d461c6c57f21da200282e130fff4676059368c88a13638631cea6bb36953a241` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/pullback-mul--766f4d162f3ff24ae8985948.md) | 80 | `result-track:766f4d162f3ff24ae89859480977b359a2fed7e59402eb597a5a570dcc06ec23` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/grouptransport--5fb5cd933673142456a549a9.md) | 85 | `declaration-track:5fb5cd933673142456a549a95908c43b285d0a935462a8d19a623c8753966cfa` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/grouptransport-one--9929a7c4cd1aae09c86567d8.md) | 88 | `result-track:9929a7c4cd1aae09c86567d872176c4349d6390d7b056726c8d680a88962a914` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/grouptransport-mul--6dfc1838b02951b2c66e382e.md) | 92 | `result-track:6dfc1838b02951b2c66e382e0d10211308c8b4c40dd61133a5c14a7ed4a2b36b` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/congruenceaction--7dc6f816c1bd6cd3d43b8c73.md) | 99 | `declaration-track:7dc6f816c1bd6cd3d43b8c738c57b7150f14fd6355d4dcef83294ca13cc53103` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/group-negative-iff--39915e41177d2eaaa9d9d73d.md) | 105 | `result-track:39915e41177d2eaaa9d9d73d513b2d05c8d6e605afeb5106f3f88d6d4e2294cf` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/group-orbit-not-psd--41d8ba22faa3611d64f953e2.md) | 110 | `result-track:41d8ba22faa3611d64f953e2093e64274e0a7c9f58e0f72e802b984ecfed89a0` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/sourcepreserving--d0a332d15b4920e1d8d3d15c.md) | 116 | `declaration-track:d0a332d15b4920e1d8d3d15cd3889840a3efff9bef8191ee964a72f64a051191` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/correctedsource--1019f97fe180761ce9496382.md) | 121 | `declaration-track:1019f97fe180761ce949638204f2be7f0f8f8308a55b42c07d2fec6f0e284981` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/lossysource--eb8b6c601cb36a5312d0a901.md) | 127 | `declaration-track:eb8b6c601cb36a5312d0a901b2c65cdafc3e90664fa21ed38bc972f26df29ea2` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/sourcepreserving-psd-iff--152ecb4cd6051afb6e232ab2.md) | 132 | `result-track:152ecb4cd6051afb6e232ab27ecf1657ae79322ea62dfdb477bde4b2a153872a` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/sourcepreserving-negative-iff--977bb5f51595c0a89dcc1447.md) | 137 | `result-track:977bb5f51595c0a89dcc14470282035566f949a0aa2b4736abb2f24216c5bfc1` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/correctedsource-quadratic-defect--a59bade408836d42ce3acbed.md) | 142 | `result-track:a59bade408836d42ce3acbede8cd1209d704d52d7531421ed8a8f460eba58ce4` |
| 26 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/indefinite--e8b4b2eae4e16f13b669f46c.md) | 152 | `declaration-track:e8b4b2eae4e16f13b669f46c6e0ed47310700606a0d07db161eb9b0c6d67bcc8` |
| 27 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/swap--182d64be6a99c81906a209c8.md) | 153 | `declaration-track:182d64be6a99c81906a209c8cf7d871d5243dff6a9307a0207715ea8cced8807` |
| 28 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/imaginaryshear--60818f1acf11d64d780aa995.md) | 158 | `declaration-track:60818f1acf11d64d780aa995e0c6a0cce6fc22b19de171e6ac38f9e679031d9b` |
| 29 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/projection--295fcf5b6a467aaf46c893e2.md) | 164 | `declaration-track:295fcf5b6a467aaf46c893e22ba4877abf043e993e6dee5dd2793b9aff165e9e` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/indefinite-hermitian--98f408b4d3f70304f728b49e.md) | 166 | `result-track:98f408b4d3f70304f728b49e0ca6f538ccd90247f15861fdadbc32a12f1b7e75` |
| 31 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/indefinite-negative--99ddcd8588f1be827c961712.md) | 169 | `result-track:99ddcd8588f1be827c9617124447b42d2722f739e97728c2b8197ff00c2b9517` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/swap-still-indefinite--7dec56703427ce31380f81fd.md) | 173 | `result-track:7dec56703427ce31380f81fd6affaf3a5f50dbc5f5601531c54d4292463b5cea` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/shear-actual-negative-value--06b2d09b8fb4d88fd250bd8a.md) | 178 | `result-track:06b2d09b8fb4d88fd250bd8a64483f069109698e3f472425430386aae4f53ea7` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/shear-still-indefinite--5e2845187b2ccb4a81a5dec5.md) | 183 | `result-track:5e2845187b2ccb4a81a5dec5fe4b229d454153fe82118d7a0fcaafbe4f3a1b0a` |
| 35 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/projected-indefinite--26ff797f8d4c31440fc85e81.md) | 189 | `result-track:26ff797f8d4c31440fc85e81ff40f1c718cd8bc2af2a198e43413ce293990105` |
| 36 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/projection-psd--ac05c24a6e3f75023861dbfc.md) | 193 | `result-track:ac05c24a6e3f75023861dbfcf4287ef738b947e0a86560bd2bee902b237b782a` |
| 37 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/lossy-projection--c5496579a20d1621a6988c86.md) | 200 | `declaration-track:c5496579a20d1621a6988c86c9fa0b6ba139cd89af44aca266f8594f84dff48f` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/singular-psd-does-not-reflect--5641b9a3b9bccfa08d006f61.md) | 205 | `result-track:5641b9a3b9bccfa08d006f61d3b67f54f335ae316f1b2017e7bea63e073aea4d` |
| 39 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean/declarations/correction-changes-sign--1a81e4cd65ba76c694d3cd2a.md) | 209 | `result-track:1a81e4cd65ba76c694d3cd2abb830cd53a399167277c2ab4f01574a3e6afc615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
