# Verification target: GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0`.

Source path: `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FinitePositiveHodgeHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dot](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/dot--b1a7451d5d313987d124bb59.md) | 16 | `declaration-track:b1a7451d5d313987d124bb59a36ea275371fb635e9a13fd43054b493adc47fed` |
| 2 | `theorem` | [dot_self_nonneg](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/dot-self-nonneg--0b8065904711db6b0d7cdebb.md) | 20 | `result-track:0b8065904711db6b0d7cdebb32ea450883aa0507ae272da2fbfe552c9427faa3` |
| 3 | `theorem` | [dot_self_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/dot-self-eq-zero-iff--b85145db4e49b71d374c49b3.md) | 25 | `result-track:b85145db4e49b71d374c49b3879565a6a172ce93b00bb1d1a2b4132a004020d1` |
| 4 | `def` | [diagonal](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/diagonal--cc4730b15507da6959f7c26c.md) | 32 | `declaration-track:cc4730b15507da6959f7c26ca6251751e9427aad51cdf049e235fb63b49f58dd` |
| 5 | `theorem` | [diagonal_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/diagonal-apply--8118d089dd8541d5147bb8a8.md) | 44 | `result-track:8118d089dd8541d5147bb8a80402068dd7fbf4957666b93b60a45c634c008883` |
| 6 | `def` | [positiveDiagonalHodge](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/positivediagonalhodge--6f607ebbf8214684dc60ab3f.md) | 49 | `declaration-track:6f607ebbf8214684dc60ab3f07692bc2d19494113097bacb37bb224709a48a02` |
| 7 | `theorem` | [diagonal_adjoint](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/diagonal-adjoint--f505b6d3fa035af659705538.md) | 56 | `result-track:f505b6d3fa035af659705538c37237a8e212a73744ea5eac3b74295140acf7cf` |
| 8 | `theorem` | [positiveDiagonalHodge_laplacian0_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/positivediagonalhodge-laplacian0-apply--60a202dd790feb48916c03ef.md) | 66 | `result-track:60a202dd790feb48916c03ef9f078d6d6074aa88b7a5fc7c6fc6e9eb90bb550c` |
| 9 | `theorem` | [positiveDiagonalHodge_laplacian1_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/positivediagonalhodge-laplacian1-apply--a5e7ba4385ca5241fa85fdd7.md) | 74 | `result-track:a5e7ba4385ca5241fa85fdd7a546351096af99167a247e4ee82e1b635382fc72` |
| 10 | `def` | [energy](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/energy--138cb864ed1c851d714f7cc1.md) | 81 | `declaration-track:138cb864ed1c851d714f7cc17c905556a73a5e9509abcfc1ad8ed27230b12eb9` |
| 11 | `theorem` | [energy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/energy-nonneg--e1e294131c7f7b19885b6b9d.md) | 85 | `result-track:e1e294131c7f7b19885b6b9d1fab6276c06d9c636a1ca7403d68c3034bce066e` |
| 12 | `theorem` | [energy_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/energy-eq-zero-iff--4c97c925ff0171c7d47384b2.md) | 89 | `result-track:4c97c925ff0171c7d47384b29309afe6bad3f5b465ed1a4f6118283ffa6e51ff` |
| 13 | `theorem` | [harmonic0_iff_delta_eq_zero](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/harmonic0-iff-delta-eq-zero--0ab48ba5b55956e3339de7fb.md) | 103 | `result-track:0ab48ba5b55956e3339de7fb1638d4ef3065e1e0c952c47eddc334db34dc2c6b` |
| 14 | `theorem` | [harmonic0_iff_eq_zero](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/harmonic0-iff-eq-zero--25e2dbeeea03704690878347.md) | 127 | `result-track:25e2dbeeea037046908783472907d923bceb28bed6dcab8bfda4cf7df9cd3a84` |
| 15 | `def` | [functionalCalculus](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/functionalcalculus--f3d0f95cc33eef7023a11c8a.md) | 141 | `declaration-track:f3d0f95cc33eef7023a11c8a027d6195d11b535165bfd027bf3581369b07e73b` |
| 16 | `theorem` | [functionalCalculus_one](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/functionalcalculus-one--be85014432e611fdcd3689d0.md) | 146 | `result-track:be85014432e611fdcd3689d0855ab6c7cbf24f2e74cde77642f3cd737e9daebf` |
| 17 | `theorem` | [functionalCalculus_mul](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/functionalcalculus-mul--6d9ffd7ebaed48b6b9f1d81a.md) | 152 | `result-track:6d9ffd7ebaed48b6b9f1d81a52fcb8bd32696e127ffe76cf065f376b8006bf7d` |
| 18 | `def` | [heat](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat--331509e00a1d1b8a5e9d2266.md) | 162 | `declaration-track:331509e00a1d1b8a5e9d22662245d27017a0d4f7b3bb0ce5669cf1506c5d24bc` |
| 19 | `theorem` | [heat_zero](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-zero--15ec3be2d22a97f240288120.md) | 167 | `result-track:15ec3be2d22a97f240288120173e7e92f87a2ecd93bec2e834e6667fded6faf7` |
| 20 | `theorem` | [heat_add](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-add--13e64b01ebce5a48fc6685d4.md) | 173 | `result-track:13e64b01ebce5a48fc6685d4e16988f31d1cb8b08aca74afb5dd25635b8e87e4` |
| 21 | `theorem` | [heat_laplacian0_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-laplacian0-comm--c5260552d9971ab9f08fb1ab.md) | 186 | `result-track:c5260552d9971ab9f08fb1ab319268c1299e97189f74010016455eaa72fe5e54` |
| 22 | `theorem` | [heat_fixed_of_harmonic](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-fixed-of-harmonic--73c27980cfea8fbf8dda8619.md) | 196 | `result-track:73c27980cfea8fbf8dda8619112e8d0f7b537e3b7b06ff477444912cc90614fa` |
| 23 | `theorem` | [heat_contracts](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-contracts--a754df300d2a18409b3c3d3f.md) | 211 | `result-track:a754df300d2a18409b3c3d3f57fd5e60c71fa5cb6d0d2911e4020d818613eaaa` |
| 24 | `def` | [maskProjector](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/maskprojector--68d68edb95d881f9bc189e9b.md) | 232 | `declaration-track:68d68edb95d881f9bc189e9b1b275959306b853894b4fd83273470d4fcc0500a` |
| 25 | `def` | [complementMask](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/complementmask--4e3c1269a4382b76621b6238.md) | 237 | `declaration-track:4e3c1269a4382b76621b6238ed1ee7e200ec523b930714b2a7ffa2c0a3cf9dd4` |
| 26 | `theorem` | [maskProjector_apply](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/maskprojector-apply--cc29b84871db72a6c674ec74.md) | 241 | `result-track:cc29b84871db72a6c674ec74b721f2413469c7aecb2c36a320d1ffa34955bdad` |
| 27 | `theorem` | [maskProjector_idempotent](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/maskprojector-idempotent--a0c81f9677d1f9932ba86990.md) | 245 | `result-track:a0c81f9677d1f9932ba869908696bff4f9c043bb62f6e5acdaadcf9624107862` |
| 28 | `theorem` | [maskProjector_add_complement](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/maskprojector-add-complement--2b67aa4776c4fab8127d5624.md) | 251 | `result-track:2b67aa4776c4fab8127d56244cace60aedf219bc0335624ba44ff41ac4aa20a7` |
| 29 | `theorem` | [mask_complement_orthogonal](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/mask-complement-orthogonal--6cea6001ad2f2d7dfa739557.md) | 258 | `result-track:6cea6001ad2f2d7dfa73955701bc589453efa7fd458a1a49805c17166d33f999` |
| 30 | `theorem` | [maskProjector_delta_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/maskprojector-delta-comm--efec9c9e3275abe03735a6d7.md) | 268 | `result-track:efec9c9e3275abe03735a6d73c0501099a5f23ecd27d54f7b1ffd55b56c50e78` |
| 31 | `def` | [coordinateHodgeProjector](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/coordinatehodgeprojector--21f50aa84e31e68a542222cc.md) | 276 | `declaration-track:21f50aa84e31e68a542222cc21aac424cc6891ed711d9d9456547bc0ea5ad5a1` |
| 32 | `theorem` | [energy_mask_split](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/energy-mask-split--6aa84caccbce1f154bac0d2c.md) | 286 | `result-track:6aa84caccbce1f154bac0d2c38368b47626bccfeb7e586a81cf3db7328dc1add` |
| 33 | `theorem` | [heat_maskProjector_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-maskprojector-comm--0b3cf0dc0652db70245e376c.md) | 298 | `result-track:0b3cf0dc0652db70245e376c240acc96f21c0b86ebae7685c9cd744b18894b39` |
| 34 | `theorem` | [heat_mask_split](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/heat-mask-split--7e6ea3cfcd76fa37b74fcb01.md) | 307 | `result-track:7e6ea3cfcd76fa37b74fcb01dac62d257e88097b97b900efb72a5a1a20e6cfec` |
| 35 | `theorem` | [diagonal_heat_comm](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/declarations/diagonal-heat-comm--c7955f7ad4f8d191ce21fed5.md) | 317 | `result-track:c7955f7ad4f8d191ce21fed513f6c7c1f5ea11745fd22da2228f6c292106bf9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
