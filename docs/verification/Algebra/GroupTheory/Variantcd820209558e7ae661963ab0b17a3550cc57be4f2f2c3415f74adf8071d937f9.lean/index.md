# Verification target: GRWTSK.Algebra.Group.Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5d5958c25b78d142dfef8f2a337331638af9c38",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Group/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/index.md) · [Full source](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5d5958c25b78d142dfef8f2a337331638af9c38`.

Source path: `GRWTSK/Algebra/Group/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Group/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--6cde9be9d69e7f9533c1ec44.md) | 27 | `declaration-track:6cde9be9d69e7f9533c1ec4434ba6041e7fa38a683fecf075d066ba27deb082e` |
| 2 | `lemma` | [equivShrink_symm_one](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-symm-one--26b62defc6cc775904008ed7.md) | 30 | `result-track:26b62defc6cc775904008ed71a04adf006c2b82c04ff55ae5b184c3e0fc419a2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--ddb79f6085a828e77656452c.md) | 35 | `declaration-track:ddb79f6085a828e77656452c7d4cbca4a169a69f4a08ed69268e66bcc48c58b7` |
| 4 | `lemma` | [equivShrink_symm_mul](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-symm-mul--cba87b5dfa4e3ba52dbfe23a.md) | 38 | `result-track:cba87b5dfa4e3ba52dbfe23ad0c38219dc7d4c3f2ed54e498a6afc9e01fda601` |
| 5 | `lemma` | [equivShrink_mul](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-mul--049c2698fdf0b3b4b99fa1d8.md) | 44 | `result-track:049c2698fdf0b3b4b99fa1d8a024a540b8f3bcdd79f1c1c39da10bfcae3c2923` |
| 6 | `lemma` | [equivShrink_symm_smul](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-symm-smul--dc003204f9e6321a9516bc7b.md) | 50 | `result-track:dc003204f9e6321a9516bc7bc9854a233ddde5140f1be6da409da851dbd1894d` |
| 7 | `lemma` | [equivShrink_smul](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-smul--501d2a42e0949a02efcaf9ac.md) | 56 | `result-track:501d2a42e0949a02efcaf9acf385dbe1809f562f10ba5349c37c0826d0184378` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--e9454557b65e6f2b0c17a534.md) | 63 | `declaration-track:e9454557b65e6f2b0c17a5344b6b4b34d4e4a3b19a696861ef0ae21a6b336f4f` |
| 9 | `lemma` | [equivShrink_symm_div](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-symm-div--ffc745ab8b76970ecaa2cf9d.md) | 66 | `result-track:ffc745ab8b76970ecaa2cf9d5b888d276a8b5ce940e0dd39873ac4d9fda08e2d` |
| 10 | `lemma` | [equivShrink_div](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-div--f4e04e2d00c9999522dcc4cf.md) | 72 | `result-track:f4e04e2d00c9999522dcc4cf3334c6556e4e6cc093649c70d9949b5698124c12` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--0c80b2c73c68040f410001dc.md) | 79 | `declaration-track:0c80b2c73c68040f410001dc31a538e8ff68471dd408ba240003f397382eae92` |
| 12 | `lemma` | [equivShrink_symm_inv](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-symm-inv--dcede8627c96586657046248.md) | 82 | `result-track:dcede8627c96586657046248290ece4e1f95df38b464a4a8cd82e7c96fde0656` |
| 13 | `lemma` | [equivShrink_inv](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/equivshrink-inv--f2f643d1452722e02dce5dd3.md) | 88 | `result-track:f2f643d1452722e02dce5dd33d091a73bad622acdff121368c749ed8bc20979f` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--ac77b822307a92448494c306.md) | 95 | `declaration-track:ac77b822307a92448494c3062b61bdaa10842089a45640d847f104e3be95e78e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--7024ae0e314ce884b9b65916.md) | 98 | `declaration-track:7024ae0e314ce884b9b65916ccefbd1b7f80e9c98b9e3b91236514e27cb00887` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--2d62b8636923140791010c00.md) | 103 | `declaration-track:2d62b8636923140791010c007f0336a7fdc1f3120c5183530f9ec7c8b607ce6e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--4950450eabef799fca6e32ed.md) | 106 | `declaration-track:4950450eabef799fca6e32edd43a6bda74b636035dbe532845ed19144ceccd28` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--89863381d4de223652cc74b5.md) | 111 | `declaration-track:89863381d4de223652cc74b505dea3a3177039e70b1f6ff084d257eca6d80edd` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--fb3ec5ff5614d2459e15005f.md) | 114 | `declaration-track:fb3ec5ff5614d2459e15005f1919fa8861be3e5a72882157ae4118dda79919fb` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--26f82f32927ff4235e9ea18a.md) | 119 | `declaration-track:26f82f32927ff4235e9ea18a59afa2e36246178360e9f828bb3b25c6a900c60a` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--7d8abbfa5dfccd5b66d04586.md) | 124 | `declaration-track:7d8abbfa5dfccd5b66d04586d58ec93a900978e537b27f5c12a25cd83d26ec0c` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--468aea8ca906ee3e981854e0.md) | 129 | `declaration-track:468aea8ca906ee3e981854e04b49f741fc00f8142f2ae2ccbf142642de3f8f79` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GroupTheory/Variantcd820209558e7ae661963ab0b17a3550cc57be4f2f2c3415f74adf8071d937f9.lean/declarations/instance--dbf377cf18182f494d866415.md) | 134 | `declaration-track:dbf377cf18182f494d8664150ca3d4e74374d3351584edbefec3c8809e9832f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
