# Verification target: GRWTSK.Topology.GeneralTopology.LocalAtTarget.Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ad3e2371bc619127432213694d3da7c0465c1d1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ad3e2371bc619127432213694d3da7c0465c1d1`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyClosed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.restrictPreimage_isInducing](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/set-restrictpreimage-isinducing--a6b1a1ca4d5e7b69b4686bc4.md) | 41 | `result-track:a6b1a1ca4d5e7b69b4686bc413aa3ae1d973739fd6fcc27b56e464995bd49d9b` |
| 2 | `theorem` | [Set.restrictPreimage_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/set-restrictpreimage-isembedding--ed736b4677e1b3180044a796.md) | 55 | `result-track:ed736b4677e1b3180044a7960433b604ef66fd36dc850dd7ab30225a2c77ae6a` |
| 3 | `theorem` | [Set.restrictPreimage_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/set-restrictpreimage-isopenembedding--3bb341e8cffe1617d0403b26.md) | 67 | `result-track:3bb341e8cffe1617d0403b2649105a1f5485fcbb5f52ea5511e0cb0470fdabe5` |
| 4 | `theorem` | [Set.restrictPreimage_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/set-restrictpreimage-isclosedembedding--00b700364052e6ab4911ba62.md) | 74 | `result-track:00b700364052e6ab4911ba625706a8f097b90b92e42a0f189d45a83ecb4cce9e` |
| 5 | `theorem` | [IsClosedMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosedmap-restrictpreimage--29d5c301edfb7fca3e8f6699.md) | 81 | `result-track:29d5c301edfb7fca3e8f669935dfffdfcfeadd3d726d0651e51e4b768ff9f945` |
| 6 | `theorem` | [IsOpenMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenmap-restrictpreimage--a2f179e792902b3e16ec3e05.md) | 89 | `result-track:a2f179e792902b3e16ec3e05e31caf9024aff75fcc99c0e902b6f6142915c7ee` |
| 7 | `lemma` | [GeneralizingMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/generalizingmap-restrictpreimage--5679ffef19db24e18b112369.md) | 97 | `result-track:5679ffef19db24e18b112369d0a8e5dcbc2a87ede2b275840647a4bc4df344e6` |
| 8 | `theorem` | [isOpen_iff_inter](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopen-iff-inter--fb677e2ccef583a0ea03170d.md) | 111 | `result-track:fb677e2ccef583a0ea03170d8db4fd534cac668f6d40a0a1b1862391bf92f00f` |
| 9 | `theorem` | [isOpen_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopen-iff-coe-preimage--6f1bad09452c690d4703ac03.md) | 118 | `result-track:6f1bad09452c690d4703ac038b61e2d0cb7f9e5a065463495cce932ca5597859` |
| 10 | `theorem` | [isClosed_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosed-iff-coe-preimage--3209a2baec02c8d4762844f5.md) | 123 | `result-track:3209a2baec02c8d4762844f53ffe335f609543e88ff583efebe45a3a826add1c` |
| 11 | `theorem` | [isLocallyClosed_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/islocallyclosed-iff-coe-preimage--91f83ff2293a56b155bcd779.md) | 127 | `result-track:91f83ff2293a56b155bcd779b626ffe7f135dbab01d9c4c25cc6b51c133ed2f9` |
| 12 | `theorem` | [isOpenMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenmap-iff-restrictpreimage--96549fb5c2f3728e5f8da963.md) | 133 | `result-track:96549fb5c2f3728e5f8da9635ce113613be032572cef883ad5bade3c31b2d00c` |
| 13 | `theorem` | [isClosedMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosedmap-iff-restrictpreimage--e6f6b528f99fff4bd3bf7243.md) | 143 | `result-track:e6f6b528f99fff4bd3bf72435e0453a9b2e97625a807c32014149faf3dfd968d` |
| 14 | `theorem` | [isInducing_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isinducing-iff-restrictpreimage--5469f39a3b0586f18676a54b.md) | 153 | `result-track:5469f39a3b0586f18676a54b1f261c2d3e12812fe22a0f844a31746c3092acd3` |
| 15 | `theorem` | [isEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isembedding-iff-restrictpreimage--f66bd3717e9305adb165016d.md) | 165 | `result-track:f66bd3717e9305adb165016d7ddc4430f73dc6f64d688425f59052b7c2580a11` |
| 16 | `theorem` | [isOpenEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenembedding-iff-restrictpreimage--3a41b8bae10b83ad41284fe4.md) | 170 | `result-track:3a41b8bae10b83ad41284fe4fb47833bb073749cdef65a33f40deebf41de3588` |
| 17 | `theorem` | [isClosedEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosedembedding-iff-restrictpreimage--1c68c88be71041d4c46ef3c5.md) | 178 | `result-track:1c68c88be71041d4c46ef3c53cfb9a78978fd5284535044dbc39e7c079f810e2` |
| 18 | `theorem` | [denseRange_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/denserange-iff-restrictpreimage--799e5445206b61ef1c9235c1.md) | 187 | `result-track:799e5445206b61ef1c9235c1a6c88beacf2e7a43e1355aaa8c39693c5109e88c` |
| 19 | `lemma` | [generalizingMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/generalizingmap-iff-restrictpreimage--c5825d6b833746b2abf8d208.md) | 198 | `result-track:c5825d6b833746b2abf8d2086a2fa894b5ac0147563c39796e2d54dfd0ec6320` |
| 20 | `lemma` | [isOpenMap_iff_comp](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenmap-iff-comp--03468c56a91bf821070937a3.md) | 215 | `result-track:03468c56a91bf821070937a362ee4103e873db07008d41a7a327f7ad7cc2dcd0` |
| 21 | `lemma` | [generalizingMap_iff_comp](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/generalizingmap-iff-comp--4533496134205714ca26556c.md) | 222 | `result-track:4533496134205714ca26556ce280bbb56092ddeb23b20c5ec4b6a03b6fb83f8d` |
| 22 | `theorem` | [isOpen_iff_inter_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopen-iff-inter-of-isup-eq-top--70f73fe02fa7c62358e68c5b.md) | 242 | `result-track:70f73fe02fa7c62358e68c5ba06e8241ab93d6ebbf8e5916e3affda703381ffb` |
| 23 | `theorem` | [isOpen_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopen-iff-coe-preimage-of-isup-eq-top--96ccb1f55a3093a54cf7dd31.md) | 246 | `result-track:96ccb1f55a3093a54cf7dd315646e3cd7966d92f66563cd3eedba6c0e02879b6` |
| 24 | `theorem` | [isClosed_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosed-iff-coe-preimage-of-isup-eq-top--a0212b61ccc5be7ad78884cb.md) | 251 | `result-track:a0212b61ccc5be7ad78884cb7bb5b9b807d13bf3caca707b158cd38f974d1f6d` |
| 25 | `theorem` | [isLocallyClosed_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/islocallyclosed-iff-coe-preimage-of-isup-eq-top--de1fa6d674862697333ff10f.md) | 256 | `result-track:de1fa6d674862697333ff10f3d977724a3eba6839d74648fdef5766ebd711132` |
| 26 | `theorem` | [isOpenMap_iff_isOpenMap_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenmap-iff-isopenmap-of-isup-eq-top--937c851d84170449cc880caa.md) | 261 | `result-track:937c851d84170449cc880caab08f682d56106d6400a76a646770bf8a2b239a2a` |
| 27 | `theorem` | [isClosedMap_iff_isClosedMap_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosedmap-iff-isclosedmap-of-isup-eq-top--cf5efdecc6f293fb8e399f3f.md) | 266 | `result-track:cf5efdecc6f293fb8e399f3f78d09b1cab0ce4a48945d757b8846c3871296433` |
| 28 | `theorem` | [inducing_iff_inducing_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/inducing-iff-inducing-of-isup-eq-top--4fb147ba166a5eae9ca69733.md) | 271 | `result-track:4fb147ba166a5eae9ca69733c208c67bce7b6f65204c59041d062adc980d47c7` |
| 29 | `theorem` | [isEmbedding_iff_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isembedding-iff-of-isup-eq-top--ada52566daf315f6914e2ebb.md) | 276 | `result-track:ada52566daf315f6914e2ebb8742dc8af6a5a59efec4818286c00345296c6f74` |
| 30 | `theorem` | [isOpenEmbedding_iff_isOpenEmbedding_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isopenembedding-iff-isopenembedding-of-isup-eq-top--da5557ae3fb85fd9966a16d5.md) | 284 | `result-track:da5557ae3fb85fd9966a16d5f56d1e8b466983e26ed84a5169c70a2b53c7967a` |
| 31 | `theorem` | [isClosedEmbedding_iff_isClosedEmbedding_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isclosedembedding-iff-isclosedembedding-of-isup-eq-top--8f290af3a8f29db96f071de1.md) | 289 | `result-track:8f290af3a8f29db96f071de1a1c01df3eade88fb1a111c263ca10f937f2d0b83` |
| 32 | `theorem` | [denseRange_iff_denseRange_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/denserange-iff-denserange-of-isup-eq-top--13df3b0152ea2e0d5436a975.md) | 295 | `result-track:13df3b0152ea2e0d5436a975fee2ea5d3b0184720ec70ff3da3f4992fb3a0351` |
| 33 | `theorem` | [isEmbedding_of_iSup_eq_top_of_preimage_subset_range](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variant46368b4894802313a2023627424949feb014d51cc61746b8c6b62307e89551e7.lean/declarations/isembedding-of-isup-eq-top-of-preimage-subset-range--c95edbd53c7c4069162341d8.md) | 307 | `result-track:c95edbd53c7c4069162341d8a8a640007ac06cd397eb27a8324914a52979bf56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
