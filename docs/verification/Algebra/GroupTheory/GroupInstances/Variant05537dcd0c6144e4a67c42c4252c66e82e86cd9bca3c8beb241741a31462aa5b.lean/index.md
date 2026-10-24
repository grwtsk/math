# Verification target: GRWTSK.Algebra.GroupTheory.GroupInstances.Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d2ce610938f028ee3888da55c4e944a1fd480ba",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d2ce610938f028ee3888da55c4e944a1fd480ba`.

Source path: `GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MonoidHom.commMonoid](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/monoidhom-commmonoid--4c07130988cac0afc7a323b9.md) | 40 | `declaration-track:4c07130988cac0afc7a323b93ee5959c01a73481c6159de6ac860b928e227617` |
| 2 | `instance` | [MonoidHom.commGroup](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/monoidhom-commgroup--43fa07009b4b1cce37f4a2d2.md) | 60 | `declaration-track:43fa07009b4b1cce37f4a2d276b0c62010452a8ff841bce0440c2be130d2ef7b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/instance--3fde6e297bfca7a2e2cf8308.md) | 83 | `declaration-track:3fde6e297bfca7a2e2cf8308fbda984de6ebc4330ed77f1148833c561d739ddc` |
| 4 | `instance` | [AddMonoid.End.semiring](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoid-end-semiring--c22f95176c844143939472e5.md) | 86 | `declaration-track:c22f95176c844143939472e5e26ae38bb78e5c4c16bc16296f84ae9800e9ef53` |
| 5 | `theorem` | [AddMonoid.End.natCast_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoid-end-natcast-apply--ac6dd1ac32a7b6b6cac5514b.md) | 98 | `result-track:ac6dd1ac32a7b6b6cac5514b37094036b608a1547ac24de003b8ca521b5f0239` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/instance--57289da4d08ecaf6b9737f18.md) | 103 | `declaration-track:57289da4d08ecaf6b9737f18fc41e13c00a2f23d799c5b29efbbc934edac292c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/instance--8a8516d6a250e2249b0dbd1b.md) | 106 | `declaration-track:8a8516d6a250e2249b0dbd1b39f64eb91b2f555f38d6948e6bd265014bbbc6e6` |
| 8 | `theorem` | [AddMonoid.End.int_cast_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoid-end-int-cast-apply--b8c8f77ba65d490c6c3b3c09.md) | 114 | `result-track:b8c8f77ba65d490c6c3b3c090f768e7f41aacbb6f523a6ae2143362a99eb97e0` |
| 9 | `theorem` | [ext_iff₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/ext-iff--625ca5bafa306387d16dbf78.md) | 130 | `result-track:625ca5bafa306387d16dbf788cebbf7bc97397227795d74737053a787715f16e` |
| 10 | `def` | [flip](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/flip--117be6ad082e005bb8f0b403.md) | 138 | `declaration-track:117be6ad082e005bb8f0b4030fe73f81a9ea11bb1c1ceacd9dd5e8a2938b46db` |
| 11 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/flip-apply--5f7946625c510af0c16d139c.md) | 150 | `result-track:5f7946625c510af0c16d139c9366c77345f320db6871b97cfa7fb115d32aac09` |
| 12 | `theorem` | [map_one₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/map-one--b60358ef9568a035ce7ff3c8.md) | 157 | `result-track:b60358ef9568a035ce7ff3c862b5c0069bfc675a62aaa09130d9ced215cbcb03` |
| 13 | `theorem` | [map_mul₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/map-mul--ba8b4c09d67a79a0fa9da4a5.md) | 164 | `result-track:ba8b4c09d67a79a0fa9da4a5cab9017955b5f0860ed5e8d4a354f58bcce226f2` |
| 14 | `theorem` | [map_inv₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/map-inv--737d12c58015cbeabd0bd732.md) | 171 | `result-track:737d12c58015cbeabd0bd73299310bd08b1f2689b6805c2bd23d82e98da15da4` |
| 15 | `theorem` | [map_div₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/map-div--5c9e51078168ddc850009a68.md) | 178 | `result-track:5c9e51078168ddc850009a6808a50ef2371872f7a545b884a17111ffa3b301ad` |
| 16 | `def` | [eval](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/eval--77bb7376aa46e613bb092117.md) | 189 | `declaration-track:77bb7376aa46e613bb092117c575c2de07e6cb4c69828b54aa4e995f38a0fdfd` |
| 17 | `def` | [compHom'](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/comphom--f40be3a7bce4a88cd0ad1376.md) | 203 | `declaration-track:f40be3a7bce4a88cd0ad1376e51a6cf0379dafeff01f4ad58c2f151dc7be222b` |
| 18 | `def` | [compHom](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/comphom--68416a103127177ab496d537.md) | 220 | `declaration-track:68416a103127177ab496d5372f9566e382e46bcb39306e0e3dabd8f779de6f40` |
| 19 | `def` | [flipHom](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/fliphom--83528348bbedde8994b695b4.md) | 238 | `declaration-track:83528348bbedde8994b695b4c9b8858275e7bbb1e1eef91bd66ae348b8478f3e` |
| 20 | `def` | [compl₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/compl--cfb2e43ac9e9b23fc7a4f90e.md) | 257 | `declaration-track:cfb2e43ac9e9b23fc7a4f90e01c413b623b4f0a92a0e091010ff02b6d073f408` |
| 21 | `theorem` | [compl₂_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/compl-apply--f6dea11a2fafd7028f324c41.md) | 264 | `result-track:f6dea11a2fafd7028f324c4198a4a3d121e005ef39cdffe8b57701b21b8f5a05` |
| 22 | `def` | [compr₂](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/compr--8105ec14d7c1256154e6b616.md) | 275 | `declaration-track:8105ec14d7c1256154e6b616bfaf4870452e152c3dbe95b6e73ab7c38ab83ac5` |
| 23 | `theorem` | [compr₂_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/compr-apply--b1ff0385d31a2b5c84a3c142.md) | 282 | `result-track:b1ff0385d31a2b5c84a3c142f0ee7ee7f56b7cc45c12ec9e6ec8845c7c644bc0` |
| 24 | `def` | [AddMonoidHom.mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoidhom-mul--c041df59f57a27ca58082cdd.md) | 310 | `declaration-track:c041df59f57a27ca58082cddcd979ed1abb52f3745c6c7d8bcb3e7aacfe9905a` |
| 25 | `theorem` | [AddMonoidHom.mul_apply](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoidhom-mul-apply--98dc0fccb18a6a9b913fcf67.md) | 316 | `result-track:98dc0fccb18a6a9b913fcf679a7be9d246a330707cc921a3ec4bb66f96107153` |
| 26 | `theorem` | [AddMonoidHom.coe_mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoidhom-coe-mul--2cb00fe7d4840a0ae710b402.md) | 321 | `result-track:2cb00fe7d4840a0ae710b40215f44fb78351e9b2b8230eeb0a0a2a348feee9ec` |
| 27 | `theorem` | [AddMonoidHom.coe_flip_mul](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoidhom-coe-flip-mul--e5b543cc175104b67535d785.md) | 326 | `result-track:e5b543cc175104b67535d785ad68d26cc272b98ae8cc7c025916778c908c2aae` |
| 28 | `theorem` | [AddMonoidHom.map_mul_iff](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoidhom-map-mul-iff--ae430794b87dc29b26032f2b.md) | 335 | `result-track:ae430794b87dc29b26032f2b1fefef1c6d29180d4002c3c9e79879f61c095193` |
| 29 | `def` | [AddMonoid.End.mulLeft](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoid-end-mulleft--1823338a278b0befb0e86f37.md) | 343 | `declaration-track:1823338a278b0befb0e86f37cc2273839c995e6a6da05985c0b5de8c764eea1e` |
| 30 | `def` | [AddMonoid.End.mulRight](../../../../../mathematics/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/declarations/addmonoid-end-mulright--3cf866a94f117a361613505b.md) | 350 | `declaration-track:3cf866a94f117a361613505bde12e5ba99350f17e7ff0f37cdbcebdade7776f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
