# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt02.Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31bdb418efeded1fb6263f3611cf302da61cf796",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31bdb418efeded1fb6263f3611cf302da61cf796`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/quadratic--c3847bcdb0064ee597f33cef.md) | 24 | `declaration-track:c3847bcdb0064ee597f33cef9b358d556abfce2cb4da8906fec98bfd4207e349` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/hasnegativedirection--a611b8eeb8eb6828f156a77c.md) | 27 | `declaration-track:a611b8eeb8eb6828f156a77c31a2fb861427f95c11bee09529b6d33314d2a6bd` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/pullback--e204d4d1e655401116a28ff3.md) | 30 | `declaration-track:e204d4d1e655401116a28ff384efc191289f5f0e55931dd20980b485435e6896` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/quadratic-pullback--1b03473be3398fe693fadb99.md) | 32 | `result-track:1b03473be3398fe693fadb99f7a12c2dd598e70e2dfa2dad07976e60e429828a` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/pullback-ishermitian--0fc714157716aa221b3e082a.md) | 38 | `result-track:0fc714157716aa221b3e082ac8aea7120fb241e82f3b6f1ebddd7322bc95d084` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/invertible-psd-iff--0525dd660fa36f8495c19550.md) | 42 | `result-track:0525dd660fa36f8495c1955000596d4834cd0ab69452e3725855f3ab5f799074` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/unitary-psd-iff--c9aa218f316f916193e59cd7.md) | 46 | `result-track:c9aa218f316f916193e59cd7b627fe5f951882cb19c20b195d14801cb5671012` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/inverse-negative-witness--b173d88e37c426b5dc4b15db.md) | 51 | `result-track:b173d88e37c426b5dc4b15db1ec85e43f95ed57e88702eca1ed546d5c5ff4dde` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/invertible-negative-iff--5b1c356c9755c4961bf42d76.md) | 57 | `result-track:5b1c356c9755c4961bf42d76f09dd89668e36ea057c5c148b6ee7a55eb2da9f5` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/negative-not-psd--0074dd5d56badad1b50201d3.md) | 66 | `result-track:0074dd5d56badad1b50201d3bdc53159c0b004959fb8f38e465c5f844f897a3c` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/hermitian-negative-iff-not-psd--6f8e6dafaf140a6478806027.md) | 72 | `result-track:6f8e6dafaf140a64788060271a0c69648009d5adb9e7c75b05c9c0c784f13acf` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/pullback-one--977fc8940a203a2fe9fa11b3.md) | 84 | `result-track:977fc8940a203a2fe9fa11b3db3428f71331d3fc2c0ea3973083c48750b18893` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/pullback-mul--8ebf9337284b8a4c35ff90f3.md) | 88 | `result-track:8ebf9337284b8a4c35ff90f3c74370a0786d486026490429a4d3034572507546` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/grouptransport--3f5c0818d5ca7cb5fd63256d.md) | 93 | `declaration-track:3f5c0818d5ca7cb5fd63256d45cf231870412c010d48927d4e5ad2e2984d85d9` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/grouptransport-one--fd437748c2818554ebd94ffc.md) | 96 | `result-track:fd437748c2818554ebd94ffcf6b52d80d5b13d4ee05e029d64eb8bfe2318ce58` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/grouptransport-mul--dc5e6b7ec95c0700651796cd.md) | 100 | `result-track:dc5e6b7ec95c0700651796cd41bb60184efbf12977c235cdf9e8a0676650e88c` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/congruenceaction--e908e29e04ed9c60e8c02b87.md) | 107 | `declaration-track:e908e29e04ed9c60e8c02b87d2eb0a19d67ad909cfae12c4005784454f9397aa` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/group-negative-iff--a305a1f9ce6560a14dad108d.md) | 113 | `result-track:a305a1f9ce6560a14dad108dab109ed462e2515553deb1eca87e4c57d4b59887` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/group-orbit-not-psd--84ebce4dcb19f471f724ef46.md) | 118 | `result-track:84ebce4dcb19f471f724ef4684b6ab5e3da7520282d64d8cb0c10f07c14040c7` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/sourcepreserving--19fc13378cb88e1ac9d888c2.md) | 124 | `declaration-track:19fc13378cb88e1ac9d888c2133afef2493245257ce63c36d688433b5d18a023` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/correctedsource--5c5b8bc4ae7c571e69b7bfc0.md) | 129 | `declaration-track:5c5b8bc4ae7c571e69b7bfc034fc17164cf83cf63c1a7ca4bf93721d2d16e251` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/lossysource--6c35f31f8d1acb47faee377f.md) | 135 | `declaration-track:6c35f31f8d1acb47faee377f14aafad9dfc37907ee703886ecfeeed89cd68128` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/sourcepreserving-psd-iff--ed0f344cf1c1307740f84456.md) | 140 | `result-track:ed0f344cf1c1307740f84456099b43cccd3f86249ba2104c77038961f0314780` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/sourcepreserving-negative-iff--9693d1205200e15c6149b651.md) | 145 | `result-track:9693d1205200e15c6149b6516b5c42e9c888516dd4a68547e1e376f33f2ef577` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/correctedsource-quadratic-defect--7401e6a537174d196c926d82.md) | 150 | `result-track:7401e6a537174d196c926d82697d37001cb7a45cde1ab2414dd75d6e78d233ca` |
| 26 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/indefinite--74e054a6f6b042a9764fbbe2.md) | 160 | `declaration-track:74e054a6f6b042a9764fbbe2645ff5191520cc74c9ad98a447a601edde6d2578` |
| 27 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/swap--2547f51b1d831a0847176d60.md) | 161 | `declaration-track:2547f51b1d831a0847176d607f840b69d037440c5b0be30cbc6cb8ad8bbdcdc1` |
| 28 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/imaginaryshear--369e6d0b675e1522719ff381.md) | 166 | `declaration-track:369e6d0b675e1522719ff38159f99ff2bd49d1dd5d8ddf4f38bbc775c4828f2d` |
| 29 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/projection--9f6982dfa6dd784dcc15333c.md) | 172 | `declaration-track:9f6982dfa6dd784dcc15333c4965d9fc38386e1b14c286798b75ccffb242a54d` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/indefinite-hermitian--dd1fae8486b04f3db52fa67a.md) | 174 | `result-track:dd1fae8486b04f3db52fa67a4ecf373d90ce05b9b4d8b88ed9386e5a8af60692` |
| 31 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/indefinite-negative--6a3b61928ea355caac0981fb.md) | 177 | `result-track:6a3b61928ea355caac0981fb08f30b334207d8324374daa3de7b06323493e13d` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/swap-still-indefinite--82005ba1fe64279b59bda31f.md) | 181 | `result-track:82005ba1fe64279b59bda31f40a4bdf76ea9db136fc563dbbd3abc22ab296fae` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/shear-actual-negative-value--06ebeeafabb62a766f522e31.md) | 186 | `result-track:06ebeeafabb62a766f522e31df9cc0f53c00cb1444c68348bc39483876cc1d2f` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/shear-still-indefinite--1c169421fdacd97629ef1a64.md) | 191 | `result-track:1c169421fdacd97629ef1a642dcb5e38b5d141d9540a51fedc4c4b6697031e4c` |
| 35 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/projected-indefinite--f27eedd6ff6c8021a86cd050.md) | 197 | `result-track:f27eedd6ff6c8021a86cd050d78aae921942fb8970c1b689ec7385a441a5f0f8` |
| 36 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/projection-psd--468b50c9db85df30aa6376a3.md) | 201 | `result-track:468b50c9db85df30aa6376a3ad8880c67d6fc5f570ed55d058c020afdb01124b` |
| 37 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/lossy-projection--d0e3b397eff4918042e0021e.md) | 208 | `declaration-track:d0e3b397eff4918042e0021e7a7162ae2135b3e0d92642e5d72af4dd80ff9a20` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/singular-psd-does-not-reflect--e1f4a808fc46d6f3c7186f03.md) | 213 | `result-track:e1f4a808fc46d6f3c7186f033f37b8d2301858767f8b3d0f8ed9d9ba5ab32f7c` |
| 39 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant5956cd394f0c06662437491a425cac3526bc9d0cad04bd8d8220cb45a1250035.lean/declarations/correction-changes-sign--48b4a75df83df2c59f7f7953.md) | 217 | `result-track:48b4a75df83df2c59f7f79530763799173ee544dfb5bffa0e6eaed4ffde03dfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
