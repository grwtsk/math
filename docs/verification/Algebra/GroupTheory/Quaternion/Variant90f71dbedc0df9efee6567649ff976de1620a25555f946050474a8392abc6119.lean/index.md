# Verification target: GRWTSK.Algebra.GroupTheory.Quaternion.Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00b5393d971324869ed2122da4060f28241ca912",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00b5393d971324869ed2122da4060f28241ca912`.

Source path: `GRWTSK/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Dihedral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [QuaternionGroup](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/quaterniongroup--8db5ba6cd541c82528ffbd28.md) | 48 | `declaration-track:8db5ba6cd541c82528ffbd282d9d157f6f281f12623e0d2e51e7a8a9e74474a2` |
| 2 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/mul--cf68d5f18b9e84b57de7570f.md) | 59 | `declaration-track:cf68d5f18b9e84b57de7570ffa22ce5441502ca94d2c67ea437f1be6e0d94e83` |
| 3 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/one--9ae9adb23fc48ea3ff8607d3.md) | 67 | `declaration-track:9ae9adb23fc48ea3ff8607d367a071ac2564afbff3d5aeb55e4b0affc094362b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/instance--b3b8e482b2d0959e05e97877.md) | 70 | `declaration-track:b3b8e482b2d0959e05e97877264e879c3f1515851d4069e43942518a0e3433ae` |
| 5 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/inv--02c0c1206c8e0d0708a1f661.md) | 75 | `declaration-track:02c0c1206c8e0d0708a1f661a91857415a157797c58cd3d3171ede0f5418bd8b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/instance--75be3a20cbaa0c2334fce3ff.md) | 81 | `declaration-track:75be3a20cbaa0c2334fce3ffb88393187a75d6fc062cd8f034922a61483cfbfb` |
| 7 | `theorem` | [a_mul_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/a-mul-a--3d78fceabd5f25a00f0fe319.md) | 106 | `result-track:3d78fceabd5f25a00f0fe319b8dd130490a4ff0d4f3d5a6bea0c1a4b4946161b` |
| 8 | `theorem` | [a_mul_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/a-mul-xa--f5662f98a717b30b43313dd8.md) | 110 | `result-track:f5662f98a717b30b43313dd8e34b86f1f326befd0714cc459508c6ea23dcd4b8` |
| 9 | `theorem` | [xa_mul_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/xa-mul-a--6c46fc5a8946a0e1e500ea5b.md) | 114 | `result-track:6c46fc5a8946a0e1e500ea5be2c6b16d8d7c4ea0c77ad6774331d549b1cfd6fa` |
| 10 | `theorem` | [xa_mul_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/xa-mul-xa--ed7e4ae954dbb7288432d484.md) | 118 | `result-track:ed7e4ae954dbb7288432d484e2a8b4b13a07f5797b4fb7fc13ca1ccb5443185a` |
| 11 | `theorem` | [a_zero](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/a-zero--e258f8df722bc125f86fab96.md) | 122 | `result-track:e258f8df722bc125f86fab9697c8a81f4bc4c6f1dd9151a9d412b40eb3c08e8a` |
| 12 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/one-def--d9a7b86e3efbe9a7704711bb.md) | 125 | `result-track:d9a7b86e3efbe9a7704711bb21a4e1a8e5d22823f22ffde63052f53147f0d7fd` |
| 13 | `def` | [fintypeHelper](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/fintypehelper--068e888a00f01f37b8771832.md) | 128 | `declaration-track:068e888a00f01f37b8771832b851c0bf939ef25f42300a156133e5908c8981fd` |
| 14 | `def` | [quaternionGroupZeroEquivDihedralGroupZero](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/quaterniongroupzeroequivdihedralgroupzero--98c56e0ad480d262cbc718ab.md) | 142 | `declaration-track:98c56e0ad480d262cbc718ab11e3665c917e4c4ef04e6ce59642fabc8d0d5f82` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/instance--4c1ec5633cdfb8e27bc8381b.md) | 155 | `declaration-track:4c1ec5633cdfb8e27bc8381bcbc5ea51ac99c81b89cc17b460256da2acb1b9b7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/instance--fc0e414cc7f030d0816fbdcd.md) | 158 | `declaration-track:fc0e414cc7f030d0816fbdcd01d717b61be2c92ed827c3a1a881d7c8cd9830d9` |
| 17 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/card--ca38e64e416f7bb5f650640f.md) | 163 | `result-track:ca38e64e416f7bb5f650640fa823681014d8578c659b708c2b9acd5c1eba545e` |
| 18 | `theorem` | [a_one_pow](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/a-one-pow--caf90b762c133447715278c6.md) | 168 | `result-track:caf90b762c133447715278c678e17691dd2753b3e543d21f56ad37398d45e443` |
| 19 | `theorem` | [a_one_pow_n](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/a-one-pow-n--9d6228b7dcbc9d0f13f2546d.md) | 175 | `result-track:9d6228b7dcbc9d0f13f2546d45423c18b32897be4dc4b0ab7f67c516fb50dd4e` |
| 20 | `theorem` | [xa_sq](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/xa-sq--fb2ef013743004b4b94c9fe0.md) | 179 | `result-track:fb2ef013743004b4b94c9fe0632b37243a024e23324aa26ea5feeadf4489eed8` |
| 21 | `theorem` | [xa_pow_four](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/xa-pow-four--6ad0bd3bd3269e518d82f75b.md) | 182 | `result-track:6ad0bd3bd3269e518d82f75b912db9bea1feb34d90caaaf42ffffafe5598215f` |
| 22 | `theorem` | [orderOf_xa](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/orderof-xa--b982519c39bd509a9673cd18.md) | 191 | `result-track:b982519c39bd509a9673cd18c9913807fa64460ff2d013953818f51cca199307` |
| 23 | `theorem` | [quaternionGroup_one_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/quaterniongroup-one-iscyclic--4726494b7b0f1b7a2cf03a63.md) | 205 | `result-track:4726494b7b0f1b7a2cf03a6396ae146a7b24144c9bd9dfe83051725a155fa7f6` |
| 24 | `theorem` | [orderOf_a_one](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/orderof-a-one--c4b82cb89dc0ff3b59f1936f.md) | 213 | `result-track:c4b82cb89dc0ff3b59f1936fabab54183b1c00d7f35a427d4f14bf0bb6069ba8` |
| 25 | `theorem` | [orderOf_a](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/orderof-a--7f825011617fc1d41d7fc6e7.md) | 233 | `result-track:7f825011617fc1d41d7fc6e7603ae48924aa02914f58383b38e14b92040e39eb` |
| 26 | `theorem` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Quaternion/Variant90f71dbedc0df9efee6567649ff976de1620a25555f946050474a8392abc6119.lean/declarations/exponent--f2b34c9a7fe9fddca4db575a.md) | 238 | `result-track:f2b34c9a7fe9fddca4db575a6466f5ac9f72819bd15807b412da1845e826f2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
