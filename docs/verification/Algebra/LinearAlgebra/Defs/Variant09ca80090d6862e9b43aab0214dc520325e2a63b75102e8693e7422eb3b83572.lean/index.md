# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e41ab077746d09abcb8e8a6c094e4470316e95c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e41ab077746d09abcb8e8a6c094e4470316e95c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearEquivFunOnFinite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/linearequivfunonfinite--9734597cc3930231a88acd3b.md) | 56 | `declaration-track:9734597cc3930231a88acd3b186e4e075a08672234327ce2fc0ff2e6b95d1b36` |
| 2 | `theorem` | [linearEquivFunOnFinite_single](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/linearequivfunonfinite-single--936215cd79ee4c8ced0de0c4.md) | 63 | `result-track:936215cd79ee4c8ced0de0c4d36ac7ebefea0b46463adc0a9dc3ac61af4298b2` |
| 3 | `theorem` | [linearEquivFunOnFinite_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/linearequivfunonfinite-symm-single--d5fc019a38b5b48e1862307d.md) | 68 | `result-track:d5fc019a38b5b48e1862307d80f1cc6f5863f80f243ec3114a75fcee470f0c6e` |
| 4 | `theorem` | [linearEquivFunOnFinite_symm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/linearequivfunonfinite-symm-coe--d0ff749bd419930087085185.md) | 73 | `result-track:d0ff749bd4199300870851850da4aed500556a9b7bcda67441ad01ffba18386b` |
| 5 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lsingle--164a149a27c4c8ac996c456e.md) | 79 | `declaration-track:164a149a27c4c8ac996c456ec7c935758f1b1398bcf8b519e34b554a17bbbf13` |
| 6 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lhom-ext--e9662ea81220875c3dfc98cd.md) | 83 | `result-track:e9662ea81220875c3dfc98cd87abd97ca9151e5776c95d49e41a652906e306a2` |
| 7 | `theorem` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lhom-ext--757b38f7f7a0fb12ceac23a7.md) | 93 | `result-track:757b38f7f7a0fb12ceac23a798d2c7ef8b14a02189cd1c91eecf1027e04408a9` |
| 8 | `def` | [lapply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lapply--35d223e401653ea9337f3b13.md) | 98 | `declaration-track:35d223e401653ea9337f3b13faa9f408cbfe9d651a486d86f4e37f40f23022f7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/instance--c3a6d98bbc34516f5447a50a.md) | 101 | `declaration-track:c3a6d98bbc34516f5447a50aac9bad9080ed54f651c9aecbf219ac5486272538` |
| 10 | `def` | [lsubtypeDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lsubtypedomain--29c6642aac517316dc73b5c8.md) | 109 | `declaration-track:29c6642aac517316dc73b5c87e951321df60126f77f632e30dd1448dcacf0072` |
| 11 | `theorem` | [lsubtypeDomain_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lsubtypedomain-apply--8a851f3376235f347cc9c448.md) | 114 | `result-track:8a851f3376235f347cc9c448e44c3d47b9ff7e64fe81a2772bdaf49a968b4b91` |
| 12 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lsingle-apply--9be0e95c8e7b5185bc5623cb.md) | 121 | `result-track:9be0e95c8e7b5185bc5623cbe383398d1feb059944ec2ec7a0bc530f7c64419c` |
| 13 | `theorem` | [lapply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lapply-apply--dc9b0790d728f4040f770e73.md) | 125 | `result-track:dc9b0790d728f4040f770e732d0faefa64f91774e38a4c9ead9f99e13cf96f9c` |
| 14 | `theorem` | [lapply_comp_lsingle_same](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lapply-comp-lsingle-same--4d10f9b3c59b16d806e691e1.md) | 129 | `result-track:4d10f9b3c59b16d806e691e1b0eef3ab4f7a359da860ea2b5968289c69509201` |
| 15 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lapply-comp-lsingle-of-ne--b1a58277001303682b5b4fdd.md) | 132 | `result-track:b1a58277001303682b5b4fdd90f444fd9a2a5b71d44f4464ad91c0fd90eed21b` |
| 16 | `def` | [lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lmapdomain--cdea9ce53f2e61918b117bcd.md) | 140 | `declaration-track:cdea9ce53f2e61918b117bcd5ff0406354f1df67d9aea4247bcc5fe251c6c2d5` |
| 17 | `theorem` | [lmapDomain_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lmapdomain-apply--8e5006e6be6e427a394c17c6.md) | 146 | `result-track:8e5006e6be6e427a394c17c6c4a8f0231afd9cc16143ae0fd8365c3457b24f64` |
| 18 | `theorem` | [lmapDomain_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lmapdomain-id--89c092a8e3ea0c2fd019b7e7.md) | 151 | `result-track:89c092a8e3ea0c2fd019b7e7ea8ea499f87df124be3732bdc33544569faf9053` |
| 19 | `theorem` | [lmapDomain_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lmapdomain-comp--7744be6a0dd3b2399de55103.md) | 154 | `result-track:7744be6a0dd3b2399de551031333db6dee2b37317b9364bf06a175038d751892` |
| 20 | `def` | [lcomapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/lcomapdomain--75b8b0a57e691560cee1be67.md) | 170 | `declaration-track:75b8b0a57e691560cee1be67cab9cdabd144130d84080fec3d2324f89b025196` |
| 21 | `theorem` | [leftInverse_lcomapDomain_mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/leftinverse-lcomapdomain-mapdomain--ea58a6f34bcc8eaf4ede02e8.md) | 175 | `result-track:ea58a6f34bcc8eaf4ede02e8acfa9939053d4b3f97cd95e285b645dba028acfd` |
| 22 | `def` | [mapRange.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearmap--bb9f5810335b35ffc07acc2d.md) | 183 | `declaration-track:bb9f5810335b35ffc07acc2d53756561c9fd54cfd817fb6a34476e7ccb019616` |
| 23 | `theorem` | [mapRange.linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearmap-id--5fcf7172369422b94d232ffd.md) | 189 | `result-track:5fcf7172369422b94d232ffd9cbb29382ea4543c3079c788ede66ee8422220a7` |
| 24 | `theorem` | [mapRange.linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearmap-comp--56e0b54496e024909f134590.md) | 193 | `result-track:56e0b54496e024909f134590bfd279ee52cf79ce3e0b1f16880a3b700202f6fc` |
| 25 | `theorem` | [mapRange.linearMap_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearmap-toaddmonoidhom--ed9c924574593ee7cd995b66.md) | 199 | `result-track:ed9c924574593ee7cd995b6651401de5407036c453fb06224839cbaf98b2d097` |
| 26 | `def` | [mapRange.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv--fa5943841d9e800d10d592d7.md) | 212 | `declaration-track:fa5943841d9e800d10d592d7df26b83f19dffc5e77b358743457cafae886f697` |
| 27 | `theorem` | [mapRange.linearEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv-refl--fc0b0eb86ac57c61e1ef1caf.md) | 219 | `result-track:fc0b0eb86ac57c61e1ef1caf21990f71f57678c8cf90de0b996ffbbec9c5f53b` |
| 28 | `theorem` | [mapRange.linearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv-trans--b63b6f1d6e74f89f577638d3.md) | 223 | `result-track:b63b6f1d6e74f89f577638d3aef803d25f9958faaf7b2c14eb8cf53861ba7ad7` |
| 29 | `theorem` | [mapRange.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv-symm--8e3ec3ccff143d02531f2fd6.md) | 229 | `result-track:8e3ec3ccff143d02531f2fd6212de6407dcfddb44794af07d341ef1415bcfc88` |
| 30 | `theorem` | [mapRange.linearEquiv_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv-toaddequiv--d9a39b53453d5920e7d24052.md) | 235 | `result-track:d9a39b53453d5920e7d240525aa4538cb0f8dfdd57191fd22424a53e4ac2e4e5` |
| 31 | `theorem` | [mapRange.linearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/maprange-linearequiv-tolinearmap--14accc394e930bee746c569e.md) | 240 | `result-track:14accc394e930bee746c569e8bc92dee1bd72f4eff80866bbdc5856fa06a579b` |
| 32 | `def` | [finsuppProdLEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/finsuppprodlequiv--dfc7ed226354905d401dfaee.md) | 256 | `declaration-track:dfc7ed226354905d401dfaee2d0ae530747b9aa40997ffae861dfe774da277b2` |
| 33 | `theorem` | [finsuppProdLEquiv_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/finsuppprodlequiv-symm-apply-apply--5d5d1e5e3c9a4ac4b263685b.md) | 261 | `result-track:5d5d1e5e3c9a4ac4b263685bf96159cb9ccd1f38d866b8a04b6a3dfe46d65081` |
| 34 | `def` | [Module.subsingletonEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant09ca80090d6862e9b43aab0214dc520325e2a63b75102e8693e7422eb3b83572.lean/declarations/module-subsingletonequiv--960db3154bf6783961dd2a82.md) | 280 | `declaration-track:960db3154bf6783961dd2a8247fddabf75ec2ae45399c90e0724770a5d6e7b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
