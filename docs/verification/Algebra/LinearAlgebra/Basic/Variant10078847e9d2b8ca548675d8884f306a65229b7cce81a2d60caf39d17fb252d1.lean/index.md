# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a223e2127b7995bbceb0ee97ed49545d64401713",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a223e2127b7995bbceb0ee97ed49545d64401713`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.RingQuot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/rel--35f6f4c8ecd02aa223ad7851.md) | 71 | `declaration-track:35f6f4c8ecd02aa223ad78516a80a65a3a3517992a31753f8e10cc50c587ed7c` |
| 2 | `def` | [CliffordAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/cliffordalgebra--d7bcbd496c35baf03236fa38.md) | 79 | `declaration-track:d7bcbd496c35baf03236fa387513a1301fe68e593a525d7372b7fc0caf2d9e61` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instinhabited--450376e7e4ae57eadf7c549a.md) | 86 | `declaration-track:450376e7e4ae57eadf7c549a001516e6fb7f1ce967218974e0a79eee204ea82f` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instring--1c96bd497481c1ad928c5588.md) | 88 | `declaration-track:1c96bd497481c1ad928c55885c15d53e5b28ef9be2e1e15bee1ec23e7af6db80` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instance--6c9e4e1429acf785a917246f.md) | 91 | `declaration-track:6c9e4e1429acf785a917246fcbcae708e0d6c26befbf9f4d46eefab85bb78dd6` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/example--75f87dc3fe0ef86e24819b33.md) | 98 | `declaration-track:75f87dc3fe0ef86e24819b3330ebbd2204c2e832676b3c0314a4196a4d8a35ca` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/example--84c4a0ec81bc1f6ff148ba2d.md) | 99 | `declaration-track:84c4a0ec81bc1f6ff148ba2dfcb0fd3325a9b16a93284aea9745ea74fae2d723` |
| 8 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instalgebra--409640fd9c5ed6185c044b03.md) | 102 | `declaration-track:409640fd9c5ed6185c044b03e29349c2147be6a2a86f1fa10f58e9d81e59f3ff` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instance--2a81840f426373f19f0cb2db.md) | 105 | `declaration-track:2a81840f426373f19f0cb2db4f1c0856806d4e989bffe17d19ecdfcac7ae193d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/instance--6d5a008c2d4a876c590c24d8.md) | 111 | `declaration-track:6d5a008c2d4a876c590c24d83ace2c4120cd6b0dcc2c63b4b49ce08cb3419e3e` |
| 11 | `def` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/anonymous--00f75f3b45bb587361924f70.md) | 119 | `declaration-track:00f75f3b45bb587361924f70b19d9d6c74af8755762dc11af3e4f5301385278e` |
| 12 | `theorem` | [ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/sq-scalar--56b10627a55957732b7188da.md) | 125 | `result-track:56b10627a55957732b7188da8702bfd202c306396c52305853d343e4a25ac21e` |
| 13 | `theorem` | [comp_ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/comp-sq-scalar--f8ee6334680ed7e3aa25361c.md) | 133 | `result-track:f8ee6334680ed7e3aa25361c48e846613e48e139ff1e37880d5ca58aac538fa3` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/lift--43e0823453928421e4f43361.md) | 145 | `declaration-track:43e0823453928421e4f43361366047ce25ca993ab6ed9727e8dd81270084e690` |
| 15 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/comp-lift--c3bf57f8a44a00c834b88de3.md) | 171 | `result-track:c3bf57f8a44a00c834b88de31959d6f7dde2a1567defa61583ca94128eb41d30` |
| 16 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/lift-apply--ecd6db290d8d8c2cf18b0ed7.md) | 177 | `result-track:ecd6db290d8d8c2cf18b0ed7ca1cc66a0f1580b4f5ab004e677ba6e5082d20aa` |
| 17 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/lift-unique--10e322c8e0808129232ed17e.md) | 183 | `result-track:10e322c8e0808129232ed17edcf77fa02902bed12654ee2e035b909fa3c9233b` |
| 18 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/lift-comp--f0db8f9ab9e995c6168fe6d3.md) | 191 | `result-track:f0db8f9ab9e995c6168fe6d335d85ce50f75d96f62d05da9d16e45053b9e9826` |
| 19 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/hom-ext--1c69e6365ae476101983835c.md) | 199 | `result-track:1c69e6365ae476101983835c6c56d41077b985da8a55fb2a822d4dadbf8a2811` |
| 20 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/induction--0060183f3ca71e6ebf13d5dd.md) | 214 | `result-track:0060183f3ca71e6ebf13d5ddc7ef91e2621f22229a8f7a5a8791040345f9dfbf` |
| 21 | `theorem` | [ι_mul_ι_add_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/mul-add-swap--dcf926e6b3c63b3f3e2123b6.md) | 241 | `result-track:dcf926e6b3c63b3f3e2123b676c6edaed8cc03bc816193f66b64a4d2c836c7b4` |
| 22 | `theorem` | [ι_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/mul-comm--acbebe20aa0edbc1642531c7.md) | 252 | `result-track:acbebe20aa0edbc1642531c712bfb287801ec9f62efd28fb610ef216ca837b47` |
| 23 | `theorem` | [ι_mul_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/mul-mul--d16146a5f42e1d456c08b91d.md) | 258 | `result-track:d16146a5f42e1d456c08b91dd9a54df3b03482e689b8e97ce22085d9838e2f92` |
| 24 | `theorem` | [ι_range_map_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/range-map-lift--47e3e4d7b8529a81e8ff9b47.md) | 265 | `result-track:47e3e4d7b8529a81e8ff9b473f4e00cc121cc032854c1337f8b6c935b98c6d57` |
| 25 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/map--dd636307bbe9071d7e5a9a89.md) | 283 | `declaration-track:dd636307bbe9071d7e5a9a899cbfc4b85451c49329718fdc07d6fb14ac2f8c67` |
| 26 | `theorem` | [map_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/map-comp--25bc7dabdfaf43ec5c0cfc3d.md) | 290 | `result-track:25bc7dabdfaf43ec5c0cfc3d786dd993f075a3ed902837777966867c691b053b` |
| 27 | `theorem` | [map_apply_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/map-apply--8a0413de75d01b3ceeca132b.md) | 296 | `result-track:8a0413de75d01b3ceeca132b41d6e810980c8fb4cecf214dbdee891f7e3d3a33` |
| 28 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/map-id--2495b4da7dbe41c901ef7ae7.md) | 301 | `result-track:2495b4da7dbe41c901ef7ae7b0e841393ec3c53191b0c4ccddb59a204c0e38bc` |
| 29 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/map-comp-map--cd19a4be3545330eaccbd3c5.md) | 307 | `result-track:cd19a4be3545330eaccbd3c57b49c736101b9909016e5210c440aae9f9853ff7` |
| 30 | `theorem` | [ι_range_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/range-map-map--9148d870aa6cd9dab1b75b58.md) | 316 | `result-track:9148d870aa6cd9dab1b75b5819189a5b89c74c5a766118a174486f8f53aa8dbd` |
| 31 | `def` | [equivOfIsometry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/equivofisometry--0a8a1242e20a218b233d1eb4.md) | 326 | `declaration-track:0a8a1242e20a218b233d1eb452f3eb11aaa51d372d6a286e6b05c8aeedd3e333` |
| 32 | `theorem` | [equivOfIsometry_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/equivofisometry-symm--da725a21d71319d50ab7266c.md) | 339 | `result-track:da725a21d71319d50ab7266c4b6fc1c4ca0646746f145f4d8b1673100625a690` |
| 33 | `theorem` | [equivOfIsometry_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/equivofisometry-trans--4e33e9f211861d21dd850cb2.md) | 345 | `result-track:4e33e9f211861d21dd850cb259f597404729417e9454818a583fb5d259b99dd3` |
| 34 | `theorem` | [equivOfIsometry_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/equivofisometry-refl--a53f648b745d408177ed2332.md) | 352 | `result-track:a53f648b745d408177ed2332fefc6b45b679bb373f9442b2f814b3a4f875b862` |
| 35 | `def` | [invertibleιOfInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/invertible-ofinvertible--c44a146f9c07b4b2f3dae808.md) | 363 | `declaration-track:c44a146f9c07b4b2f3dae808e192e2950a5f48c1f9992f1a214616a0bba8ed92` |
| 36 | `theorem` | [invOf_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/invof--79be803c312a01d5f5aa2d69.md) | 372 | `result-track:79be803c312a01d5f5aa2d698fa60a88507d448f108e8a73300c9ca05fcd1d58` |
| 37 | `theorem` | [isUnit_ι_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/isunit-of-isunit--f9a4b63ce6955ac7257a3693.md) | 378 | `result-track:f9a4b63ce6955ac7257a36938302f4a8ca5eb384adb3d364cc211e8efd0cb669` |
| 38 | `theorem` | [ι_mul_ι_mul_invOf_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/mul-mul-invof--28957a516dbe4f9450dadefb.md) | 385 | `result-track:28957a516dbe4f9450dadefb996696822c8377fbb983c8e19142afb291ff6d3b` |
| 39 | `theorem` | [invOf_ι_mul_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/invof-mul-mul--10f8a411f70f9bc5e1f1790c.md) | 392 | `result-track:10f8a411f70f9bc5e1f1790cc594d5992857af64de66c5d1172cc1bbf1b65605` |
| 40 | `def` | [toClifford](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/toclifford--4500c53807c893dc07bc4e7b.md) | 406 | `declaration-track:4500c53807c893dc07bc4e7b9f9033431a0118729d2ef3cd7743177349c18ba5` |
| 41 | `theorem` | [toClifford_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/declarations/toclifford--7b356adc06bc5de3e3cf6b95.md) | 411 | `result-track:7b356adc06bc5de3e3cf6b957e1ef0e7ce3a026aecde7ca585d9b8b4214cd21b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
