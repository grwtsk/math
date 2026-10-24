# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00feb226f9916c802f08153d0da60478b57d041a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00feb226f9916c802f08153d0da60478b57d041a`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/contmdiffmap--0679a0e182dbc551ddb756ac.md) | 31 | `declaration-track:0679a0e182dbc551ddb756ac138f3c22f498f4b1ab083b1c1024cee161d985f5` |
| 2 | `def` | [SmoothMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/smoothmap--e7b69ddc6f6990a91a5d7a4f.md) | 37 | `declaration-track:e7b69ddc6f6990a91a5d7a4f572a3f8987e96d9d41192ef3d62c60051a6c25cd` |
| 3 | `instance` | [funLike](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/funlike--c6f2f138f88e1ec9afc283ea.md) | 52 | `declaration-track:c6f2f138f88e1ec9afc283ea2f893ec212ac84f2d71013d221abe0048febf6e5` |
| 4 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/contmdiff--d672ea9b8d02c0ae02c6ae0f.md) | 57 | `result-track:d672ea9b8d02c0ae02c6ae0f8f85417fb40f1b4651872c42a48ff03fc9aa8ce7` |
| 5 | `theorem` | [smooth](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/smooth--9033cf4223554b357c2ee647.md) | 61 | `result-track:9033cf4223554b357c2ee6472a27313a29faf91710d34a8bea313cd029314d41` |
| 6 | `theorem` | [coeFn_mk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/coefn-mk--2a5491d3a7321bcd2d57d47c.md) | 74 | `result-track:2a5491d3a7321bcd2d57d47c6f9d2f93ecf0b842d9127eb451ca6bfe3e5e2427` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/coe-injective--a541a54561b1b9230b18381a.md) | 79 | `result-track:a541a54561b1b9230b18381a42ea9b691625eb59d061b52adf9bde8f48d96e57` |
| 8 | `theorem` | [ext](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/ext--ae9887b96d5b650705990b20.md) | 84 | `result-track:ae9887b96d5b650705990b201824daf96b8bb39140846c19b8b66500938cc0d8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/instance--4d81a7109efc5fc361cf2b9c.md) | 87 | `declaration-track:4d81a7109efc5fc361cf2b9c1d8fe03df692294b543e0e56aa199c62884c1eb1` |
| 10 | `def` | [id](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/id--b4f8494120e759bbc3fa7491.md) | 91 | `declaration-track:b4f8494120e759bbc3fa74917f846f5ab2ab4893b09a5e0125a1453e512d8e1e` |
| 11 | `def` | [comp](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/comp--dbc424130fcf39ff37d428d1.md) | 96 | `declaration-track:dbc424130fcf39ff37d428d197386f8aa83478711e768543001766e8cf033b05` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/comp-apply--ab79d11cde432f5e469ca751.md) | 102 | `result-track:ab79d11cde432f5e469ca751e4e2ac474b876084e7659fbd3318176dc8583679` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/instance--d62849c4522ab70b025de40a.md) | 107 | `declaration-track:d62849c4522ab70b025de40a8ebb5098d88b5e3edafd5130fc83810ede3fa318` |
| 14 | `def` | [const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/const--1443bf1c6ad7d5d6e56630ec.md) | 111 | `declaration-track:1443bf1c6ad7d5d6e56630ec9db38bc1bc81f370f860130c4e6708b1318c93a3` |
| 15 | `def` | [fst](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/fst--39c9464f617231b348a73ae8.md) | 116 | `declaration-track:39c9464f617231b348a73ae8aa35ee55989a35ec45aa98a48b5157338640e0ef` |
| 16 | `def` | [snd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/snd--51ad2ebb91df2e3791879b2b.md) | 121 | `declaration-track:51ad2ebb91df2e3791879b2bebac1c7e0ae90fd4830ae5f95b37fc638bf3233c` |
| 17 | `def` | [prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/prodmk--8efe3308b12ae76e9d6dbc9c.md) | 126 | `declaration-track:8efe3308b12ae76e9d6dbc9c30570da5c8e9b703d3c50d4dd254904e9630e0aa` |
| 18 | `instance` | [ContinuousLinearMap.hasCoeToContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/declarations/continuouslinearmap-hascoetocontmdiffmap--621dcd4a09b59d8622e32748.md) | 132 | `declaration-track:621dcd4a09b59d8622e32748aead7cd0cdaabc6ba18595dcc53f5d05a2a3341a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
