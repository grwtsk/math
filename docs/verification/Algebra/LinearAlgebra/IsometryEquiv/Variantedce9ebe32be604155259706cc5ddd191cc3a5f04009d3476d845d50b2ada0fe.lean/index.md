# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85931c69a57f7ef770293500538a1b62e038ae92",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85931c69a57f7ef770293500538a1b62e038ae92`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/isometryequiv--801f3c0343875b6ea9eda3e5.md) | 38 | `declaration-track:801f3c0343875b6ea9eda3e52b191494d81f59d060f62731fb9427383465fd95` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/equivalent--73c0025591d0b7c0e97d1cbc.md) | 46 | `declaration-track:73c0025591d0b7c0e97d1cbc7bec01c86fa07bfe6514d38b359b35c03b93a8c9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/instance--61db548b9edbf09d338c69b3.md) | 54 | `declaration-track:61db548b9edbf09d338c69b3875fc9909128a6c4a168d82185f89d08ce699b8e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/instance--483821c0d92e3a33465ecfdc.md) | 64 | `declaration-track:483821c0d92e3a33465ecfdcd7c94f73bf594aafba164cf96d96c97285afba47` |
| 5 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/coe-tolinearequiv--9162b8276f77fd1ad93f9c14.md) | 71 | `result-track:9162b8276f77fd1ad93f9c14d3992a1820d1de575a4e94739acd159908501f68` |
| 6 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/map-app--2119e7d6099db73752a39d6e.md) | 76 | `result-track:2119e7d6099db73752a39d6e065be5311ac57f9d3fc161daea5c3f3040a41317` |
| 7 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/refl--01a6b67d255c6fe06a4224a6.md) | 82 | `declaration-track:01a6b67d255c6fe06a4224a609af2ac6ceed2157d7ac8dad6595d2dc2d441190` |
| 8 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/symm--62d52e6ce92a550d97c2c074.md) | 88 | `declaration-track:62d52e6ce92a550d97c2c07455eef69ea6e881cb40091e43dac9524531173007` |
| 9 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/trans--13d56aca981b1bf885f61472.md) | 95 | `declaration-track:13d56aca981b1bf885f61472b1d5a4cac66f9bed62fcd2edb44cf79ed9ebf003` |
| 10 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/refl--dd1d7a5d5311527b5ee72f32.md) | 107 | `result-track:dd1d7a5d5311527b5ee72f321b6a17989fcaeaa919867ed9c642aafdd5cdec6d` |
| 11 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/symm--5d35627152e61cb0e11f0463.md) | 112 | `result-track:5d35627152e61cb0e11f04631b5dd47c7a7032133ea7506d8dc506297d083839` |
| 12 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/trans--011eb7d3d414acfc670a0f4c.md) | 117 | `result-track:011eb7d3d414acfc670a0f4c8a1b9797fb9245735603add3243da44f8bd3f8ce` |
| 13 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/isometryequivofcomplinearequiv--21e56d3d5a38ac7d975da468.md) | 126 | `declaration-track:21e56d3d5a38ac7d975da468dbf7e2ba75e662e8044157c0a1d09f81c4b323ca` |
| 14 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/isometryequivbasisrepr--3e986fe63266f7309c9b1bb9.md) | 136 | `declaration-track:3e986fe63266f7309c9b1bb90113377611da6192ebd4d2553efa9aa00a99c451` |
| 15 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/isometryequivweightedsumsquares--839d14b9495cc45e61355598.md) | 145 | `declaration-track:839d14b9495cc45e61355598777b8b2da6e52d995a76f7fb22a40c44d957a797` |
| 16 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/equivalent-weightedsumsquares--d82e7d7de524917d421a5f0a.md) | 159 | `result-track:d82e7d7de524917d421a5f0a17d1fe2c7502d105acaf03aef1fb4bd25595c326` |
| 17 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantedce9ebe32be604155259706cc5ddd191cc3a5f04009d3476d845d50b2ada0fe.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--0773f2533f29cef222575a4a.md) | 165 | `result-track:0773f2533f29cef222575a4a88c38228ceced6c0da0c645d1d026273c6c34b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
