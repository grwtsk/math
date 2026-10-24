# Verification target: GRWTSK.Topology.GeneralTopology.Open.Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fd34291d24e5c1eb487ca0078644519ace62700",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fd34291d24e5c1eb487ca0078644519ace62700`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/continuousopenmap--2610d40d608007288d010145.md) | 31 | `declaration-track:2610d40d608007288d010145e346b9c19d42c56ac0eff1fa69fa03a67a1c93d5` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/continuousopenmapclass--a592555a0c9654ef8a96435c.md) | 42 | `declaration-track:a592555a0c9654ef8a96435c14981d48318eeae42bc49e65013e93c1bc4f66e6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/instance--458e408e51dbad5db8ce572f.md) | 50 | `declaration-track:458e408e51dbad5db8ce572f4e268afe5f2dc91f1d7510a5d21970065bcc9cd2` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/instfunlike--3a8a6ba9aae032534c6ddee6.md) | 62 | `declaration-track:3a8a6ba9aae032534c6ddee67aee03eea0067358849f60ae98e1a5759ff78a02` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/instance--901a3b04e933b0a8c8ac6132.md) | 69 | `declaration-track:901a3b04e933b0a8c8ac6132fbfc805ecf3a15c1b1b0ef9722a4f727c10124ff` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/tofun-eq-coe--6976649b47499e610c824ae0.md) | 73 | `result-track:6976649b47499e610c824ae01141db189e60381f4528f8dde90e91f3a2507f7f` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/coe-tocontinuousmap--26e45f47873a546392839990.md) | 78 | `result-track:26e45f47873a54639283999077ff9a0df55efe54f94b7d68698d6a9126332d6e` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/ext--87318e0b25e72161c1f5b26f.md) | 81 | `result-track:87318e0b25e72161c1f5b26fc6a21ac32b7444d59676d7f59d7fe65207ec667c` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/copy--5f9997effa39104e8f6645a7.md) | 86 | `declaration-track:5f9997effa39104e8f6645a7cb342c4fede2cdc6aca1c124460f875684d3ebef` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/coe-copy--90beb3a33f1a46efebed5902.md) | 90 | `result-track:90beb3a33f1a46efebed590255d6b2a2ad3f024cd23f2fa323ec5cc99662f64f` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/copy-eq--8e4d3944945e982b31678b28.md) | 93 | `result-track:8e4d3944945e982b31678b28279e5e387c1d75a4e272112051c0b496ad7e88b9` |
| 12 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/id--76a27c950d79639d5e55c1ff.md) | 99 | `declaration-track:76a27c950d79639d5e55c1ff0b60a271e25440012de144c311c644790de8c2ee` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/instance--84286ecf07c35d8d12b50913.md) | 102 | `declaration-track:84286ecf07c35d8d12b50913de92c5ac43848df54bc0eca18f0a05f2ffe224fd` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/coe-id--aad0c5c2a51d808f3371e3dc.md) | 106 | `result-track:aad0c5c2a51d808f3371e3dca73cd75f39fce81cbeb4221495ac263367520ada` |
| 15 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/id-apply--6374e2d05bb6f7aa3fd7a560.md) | 112 | `result-track:6374e2d05bb6f7aa3fd7a560685175eb8b5f9edbe10d353333a1cf9f41a0ec5a` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/comp--2354a8900f5f58709edd7121.md) | 116 | `declaration-track:2354a8900f5f58709edd7121f7c8713d23adf9b8fe6bd8109b459df903a03cdb` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/coe-comp--286d0dbce357f1166a71ede2.md) | 120 | `result-track:286d0dbce357f1166a71ede2bca3b69950a5a852a846e4d2cf730d91bf22705b` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/comp-apply--00347af719a27672ac66e5c3.md) | 124 | `result-track:00347af719a27672ac66e5c3c814093b8eb0fc6aa5ac7d3f6b4b21b7d674a8a0` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/comp-assoc--c39b2802f99565f29f934a1a.md) | 128 | `result-track:c39b2802f99565f29f934a1a415d134fca05692f24917307813834af4de399cc` |
| 20 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/comp-id--6d61b59f94365bc89934589b.md) | 133 | `result-track:6d61b59f94365bc89934589b209f4ad2763012a566afc9f6806cb2ed79f7b08d` |
| 21 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/id-comp--7ef9a80e5b0f4d2f76c1005f.md) | 137 | `result-track:7ef9a80e5b0f4d2f76c1005f5fa6f9b208ca7d072b91a542d56cd6f71b6a430c` |
| 22 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/cancel-right--b8e26c96dbbff06027865f98.md) | 141 | `result-track:b8e26c96dbbff06027865f98df17613b6e30bc217b45a800de45681304b5e68a` |
| 23 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Variant77d39af8c5b4a48c2d28e68a6465f30fbda02bb3dbd432eb9891860bae191464.lean/declarations/cancel-left--be1ff45e6602112403e6c034.md) | 146 | `result-track:be1ff45e6602112403e6c03432b8e87fb409eba5a6ca8f9f0ea4b4bed4343f8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
