# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f81a870daed622215ed447f5aa9908d67150337",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f81a870daed622215ed447f5aa9908d67150337`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean.json)

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
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/isometryequiv--15c2b1c84d79c40cd3204d67.md) | 48 | `declaration-track:15c2b1c84d79c40cd3204d673edb41379c07c155ea88b7ec1eab18ae83141831` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/equivalent--da33ce31c9a92a2efda400e0.md) | 55 | `declaration-track:da33ce31c9a92a2efda400e081b3b367e773aba6299d281e91e885b57a13aa82` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/instance--e04cb5c5a2e48ee0b567710b.md) | 63 | `declaration-track:e04cb5c5a2e48ee0b567710b54f2d0dbec05d37a3839345cf0610f6718726a40` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/instance--ff38fa5864d278f713dcfe20.md) | 70 | `declaration-track:ff38fa5864d278f713dcfe2063b22cc7904f1d0f8b8bdb5ef130878d3da261be` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/instance--355b814d317085dd34ee0296.md) | 74 | `declaration-track:355b814d317085dd34ee0296cae81aca670cd0f856f87712e3a6b1e2ccfc2597` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/coe-tolinearequiv--ddf139673324b38603819ee4.md) | 78 | `result-track:ddf139673324b38603819ee45afdfb9a26b339a30e786739dcb8204b7c077cf0` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/map-app--1a1c73dbad4ad7d63f649f1f.md) | 82 | `result-track:1a1c73dbad4ad7d63f649f1fba9ea426f171646b4b36b7691e22a638492af588` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/refl--51c9c41ef8f3149f22c8380b.md) | 87 | `declaration-track:51c9c41ef8f3149f22c8380b34336c124e2fdbaceec075266c799ba5025c3bd1` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/symm--5bfc2cb8db16ebba29bfa430.md) | 92 | `declaration-track:5bfc2cb8db16ebba29bfa43014ca724f4d0381f8a6f14c333139e19b70fc89fe` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/trans--fbb871c859ad3f46123c65f1.md) | 98 | `declaration-track:fbb871c859ad3f46123c65f1a2193a52642db11e559bd9c16390cb311e4e6cb9` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/toisometry--ed949cbca661ce643884f9b3.md) | 104 | `declaration-track:ed949cbca661ce643884f9b32e4771c8c0564603ad8842c61a5df7ba835893f4` |
| 12 | `lemma` | [apply_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/apply-symm-apply--3f46bac3ad54f5353c7e2fff.md) | 108 | `result-track:3f46bac3ad54f5353c7e2fff34c410208a1a0cbc988f76c3c5131779395380d2` |
| 13 | `lemma` | [symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/symm-apply-apply--6ffb0b0372e1bdb6a9065b65.md) | 111 | `result-track:6ffb0b0372e1bdb6a9065b65ce15e43c4b4a2784f2506285506d404bbc1f8f5c` |
| 14 | `theorem` | [symm_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/symm-apply-eq--9268212c7607e656ffd8d14f.md) | 114 | `result-track:9268212c7607e656ffd8d14f0ac434d2e0d1a15eea8224a77e96537ceeeea888` |
| 15 | `theorem` | [eq_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/eq-symm-apply--6145f7129194bab9753789d6.md) | 118 | `result-track:6145f7129194bab9753789d63b3bf9aa1f9ad64623294b13b7a01ec00aca3d09` |
| 16 | `lemma` | [coe_symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/coe-symm-tolinearequiv--a7d22d440e4c295a9c4137fd.md) | 122 | `result-track:a7d22d440e4c295a9c4137fd835dd1a8a2a0648da7271dd597b095e5e3aa0aa6` |
| 17 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/refl--164b962c143194d813e10139.md) | 132 | `result-track:164b962c143194d813e101398c335c9a3cab8166086f4d6bcb286c2f5777cc97` |
| 18 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/symm--76e5877eebd11ef3399123bb.md) | 136 | `result-track:76e5877eebd11ef3399123bb3de4ec712d117baa63e5aae97400fcfea6bd55c2` |
| 19 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/trans--0fbe482085fdef0011514b4d.md) | 140 | `result-track:0fbe482085fdef0011514b4d9dd99cf1efae54c6bec4c9d17e76ad522c8b56b2` |
| 20 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/isometryequivofcomplinearequiv--b5e4183a72f1055946483397.md) | 146 | `declaration-track:b5e4183a72f10559464833971cea0a94f6253fe6eee0845202c699979a0a4bf9` |
| 21 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/isometryequivbasisrepr--5e328f2cd6f0eda8a5acdb1e.md) | 157 | `declaration-track:5e328f2cd6f0eda8a5acdb1e6b48741d70515b2efd37e747fc0b34da0fba143f` |
| 22 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/isometryequivweightedsumsquares--12c933e31e0b0164e0d0eac0.md) | 168 | `declaration-track:12c933e31e0b0164e0d0eac03801081cd9bd755dc6542431ba3ec2eda2ca152d` |
| 23 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/equivalent-weightedsumsquares--17095766be49aad808f469c4.md) | 181 | `result-track:17095766be49aad808f469c4eafb7e1d2c6964ef39eed838b210fa1073b1c15f` |
| 24 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--991104f9465d6100802310cb.md) | 186 | `result-track:991104f9465d6100802310cb6f94ff8338029cd645af68ed30315d506cd92f70` |
| 25 | `def` | [weightedSumSquaresCongr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/weightedsumsquarescongr--a263097f37d9c5bd87e80035.md) | 200 | `declaration-track:a263097f37d9c5bd87e80035a08b3078b08ea7f93d46a9305446c690cc9e4c30` |
| 26 | `def` | [isometryEquivWeightedSumSquaresWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant7f42e6c1c873f5780112a87d4829991087082f6069a99ecf94731c6c350d8444.lean/declarations/isometryequivweightedsumsquaresweightedsumsquares--4bc5bc9961549da780163ca1.md) | 207 | `declaration-track:4bc5bc9961549da780163ca1fd8a93ea38f3c8769c5ef0e3eff9f8bb66160a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
