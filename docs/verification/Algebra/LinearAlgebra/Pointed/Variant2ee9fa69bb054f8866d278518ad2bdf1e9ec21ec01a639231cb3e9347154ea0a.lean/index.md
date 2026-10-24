# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointed.Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "693a38b74f6e7c17fdb370a701c346a77d19933d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `693a38b74f6e7c17fdb370a701c346a77d19933d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.InnerDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/pointedcone--61135c65832f644564ad3494.md) | 33 | `declaration-track:61135c65832f644564ad34946d1c3747b68ecdd41fb283b7bf5f366bab9b5e0b` |
| 2 | `def` | [toConvexCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone--07dda5d7e82c549c7ab08022.md) | 48 | `declaration-track:07dda5d7e82c549c7ab08022a95aaf30fa41ed25202621f18c64dc33b32117ef` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/instance--0c9ba190f488f79b2b860cd4.md) | 53 | `declaration-track:0c9ba190f488f79b2b860cd4bb51b3b400deca29b0a2d438bc87deef8b413d61` |
| 4 | `theorem` | [toConvexCone_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone-injective--ece02bb6414b55cfe5e8dd13.md) | 56 | `result-track:ece02bb6414b55cfe5e8dd1394c32f76ac1eb161c5825499ac98b4ff24f890bb` |
| 5 | `theorem` | [toConvexCone_pointed](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone-pointed--7863ae77963af0ffa1d0a086.md) | 60 | `result-track:7863ae77963af0ffa1d0a086ff3c5cf9ac37b739dd30485a206b0577971476ba` |
| 6 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/ext--720c7dc86f8f4aef00ad520e.md) | 64 | `result-track:720c7dc86f8f4aef00ad520e945834b48811e486d59fc477e83d4f5ef3bf0edd` |
| 7 | `instance` | [instZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/instzero--4f49c9067367cab97e6344b0.md) | 67 | `declaration-track:4f49c9067367cab97e6344b0e1334e4db5200d249648feae06d6b3f72c0219bf` |
| 8 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.PointedCone.Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.ConvexCone.toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/root-grwtsk-algebra-linearalgebra-pointedcone-variante047123e974d71fc515--cd7b056489d6cb6ed9b1f664.md) | 71 | `declaration-track:cd7b056489d6cb6ed9b1f6642555eb007a7af6e23e08659407b8249ba23f3c9f` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.PointedCone.Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.ConvexCone.mem_toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/root-grwtsk-algebra-linearalgebra-pointedcone-variante047123e974d71fc515--a9cd8dc49491523ab1296265.md) | 86 | `result-track:a9cd8dc49491523ab12962651ea6e0706dc272bc3a5a329790c0e3dfdad80dda` |
| 10 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.PointedCone.Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.ConvexCone.coe_toPointedCone](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/root-grwtsk-algebra-linearalgebra-pointedcone-variante047123e974d71fc515--c3256ad679e68600540100d1.md) | 91 | `result-track:c3256ad679e68600540100d1b23d5e79cf75dab1bd7e54b97eecc415d68ec8bc` |
| 11 | `instance` | [canLift](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/canlift--4773e9ea56811fbc19a8bb1c.md) | 95 | `declaration-track:4773e9ea56811fbc19a8bb1c511f0ac2e726839dba4bf8a61be30db64ac3dc10` |
| 12 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/map--2c05a2519928b87e2aed82dc.md) | 120 | `declaration-track:2c05a2519928b87e2aed82dcccc7ee212ec2d95822d711ecaa657a7acaa45ead` |
| 13 | `theorem` | [toConvexCone_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone-map--2818d9c5f17f37a95be2d1e6.md) | 124 | `result-track:2818d9c5f17f37a95be2d1e6f8c7cf0d87d9dd1410a0ef6c731abc7d465ce6ed` |
| 14 | `theorem` | [coe_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/coe-map--372e1a89d6dd414ecd0039d7.md) | 129 | `result-track:372e1a89d6dd414ecd0039d7439d77dddc6778558c80cc7f1ae508edb54631ce` |
| 15 | `theorem` | [mem_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/mem-map--913d33f06a4d15c91dd26439.md) | 133 | `result-track:913d33f06a4d15c91dd26439e2598054a4b4842fb7592367d20c0deafb4bfd24` |
| 16 | `theorem` | [map_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/map-map--ef2b44b01cc45c900113374a.md) | 136 | `result-track:ef2b44b01cc45c900113374a7299fc1782aafc5fbafe6f59befe18ff75e91bcf` |
| 17 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/map-id--d501a13c72988884e70f4e9f.md) | 141 | `result-track:d501a13c72988884e70f4e9ffb33e5fc8c9639d821902920357ac1e082fea6ea` |
| 18 | `def` | [comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/comap--df668445f48905eb53ac6c79.md) | 145 | `declaration-track:df668445f48905eb53ac6c79754f286726804cef7b6712cbcf43c91b51ea27ef` |
| 19 | `theorem` | [coe_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/coe-comap--b643a6531c1bf87d25d88165.md) | 149 | `result-track:b643a6531c1bf87d25d88165164d330da339c1528dac184510eaf9a0261d0c30` |
| 20 | `theorem` | [comap_id](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/comap-id--1b8fa3eaa58d3b36166af259.md) | 153 | `result-track:1b8fa3eaa58d3b36166af259836b484ce4817bf469816ddd55936bd8ddb1eebc` |
| 21 | `theorem` | [comap_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/comap-comap--f2ec576eb8fd39c9641959a0.md) | 156 | `result-track:f2ec576eb8fd39c9641959a0f47a3deaf084d19e813b8482214743b90e0cb84a` |
| 22 | `theorem` | [mem_comap](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/mem-comap--94c007029d4d5dc910e0000d.md) | 161 | `result-track:94c007029d4d5dc910e0000d8fc108a6bc30bba6fd758aae316b331340c30775` |
| 23 | `def` | [positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/positive--6f0c1b09d5e06f59d2deb4f6.md) | 174 | `declaration-track:6f0c1b09d5e06f59d2deb4f62121eccde5e57375a24be9c1e0f39b644494503b` |
| 24 | `theorem` | [mem_positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/mem-positive--4659c04fd34211afff1c1576.md) | 178 | `result-track:4659c04fd34211afff1c15766577668ceabba65a0f422ed77159510118fce741` |
| 25 | `theorem` | [toConvexCone_positive](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone-positive--98743b81d2da79f62f8b3203.md) | 182 | `result-track:98743b81d2da79f62f8b32031a28815b2e26d75089b41052e4db418e341d0b73` |
| 26 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/dual--0a49037ff90c171381674692.md) | 191 | `declaration-track:0a49037ff90c171381674692ac011e0c6df74d8cd6cc2ad5fb28a8696e9d2177` |
| 27 | `theorem` | [toConvexCone_dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/toconvexcone-dual--29685b4624353d20360d46fd.md) | 195 | `result-track:29685b4624353d20360d46fd50cb4f7027f1feda79aad942cfa6c93b7980b601` |
| 28 | `theorem` | [mem_dual](../../../../../mathematics/Algebra/LinearAlgebra/Pointed/Variant2ee9fa69bb054f8866d278518ad2bdf1e9ec21ec01a639231cb3e9347154ea0a.lean/declarations/mem-dual--f4e85daae44ff1110ff07553.md) | 200 | `result-track:f4e85daae44ff1110ff0755347852e658b9b371ecc9f70ac77344815bb0cd750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
