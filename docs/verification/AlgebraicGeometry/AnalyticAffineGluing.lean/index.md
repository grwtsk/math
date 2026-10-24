# Verification target: GRWTSK.AlgebraicGeometry.AnalyticAffineGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md) · [Full source](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e`.

Source path: `GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AnalyticAffineGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.AnalyticAffineTopology`](../../../mathematics/AlgebraicGeometry/AnalyticAffineTopology.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicOpenCoverGluing`](../../../mathematics/Analysis/Complex/HolomorphicOpenCoverGluing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_coordinateRing](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/ext-coordinatering--7ef69464c6135a88a4930268.md) | 26 | `result-track:7ef69464c6135a88a4930268c6d52f8505b0833ef9766f188ed3a5e57411394c` |
| 2 | `def` | [Compatible](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/compatible--1cb47fc92d390235c91c2186.md) | 38 | `declaration-track:1cb47fc92d390235c91c21861c2970de56cdd5cf0df754d509e4a78ede46f47c` |
| 3 | `theorem` | [compatible_apply](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/compatible-apply--c17643d09ee37aebd68d0223.md) | 46 | `result-track:c17643d09ee37aebd68d02238edd29089f570ced44cdf5f83553b1ad2025db4c` |
| 4 | `def` | [glueRingHom](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glueringhom--527687ac6db701e3bdce2b40.md) | 54 | `declaration-track:527687ac6db701e3bdce2b40e50e6ee7d0e874ecc3d73a07d614fe227a955790` |
| 5 | `def` | [glue](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue--93db8d71ac6c64013f7f1b4b.md) | 79 | `declaration-track:93db8d71ac6c64013f7f1b4ba7fcbe1e380a2b058e8390a6485fe6c33b800a69` |
| 6 | `theorem` | [glue_left](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-left--b9a6233d40fc946207f8ace9.md) | 85 | `result-track:b9a6233d40fc946207f8ace9a8b897574d38cf1a56a0d90e89e9e22375a83092` |
| 7 | `theorem` | [glue_right](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-right--90bf6fc8430614f3f0ed532c.md) | 95 | `result-track:90bf6fc8430614f3f0ed532cd7147f9343f8d30884243f81f6e0f1aef92b1b34` |
| 8 | `theorem` | [glue_unique](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-unique--900cdb92582b6cb4e9a0e763.md) | 105 | `result-track:900cdb92582b6cb4e9a0e763835853101f7c7b3735262fa9a89de24add62f822` |
| 9 | `theorem` | [existsUnique_glue](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/existsunique-glue--a09472eba2a296550438e2e4.md) | 121 | `result-track:a09472eba2a296550438e2e42ac223a6d1cd29391289140183425dd38436b6cf` |
| 10 | `theorem` | [glue_pointMap_continuous](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-pointmap-continuous--2a40496e0623d40343e7acf4.md) | 131 | `result-track:2a40496e0623d40343e7acf47f45cd4aaa5f396f5783ec75f490d0fb53695695` |
| 11 | `theorem` | [glue_pointMap_left](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-pointmap-left--842a57366694ca29e478fecb.md) | 138 | `result-track:842a57366694ca29e478fecbcbc7841cdeffa237c8ab53f3b879f546c802ef73` |
| 12 | `theorem` | [glue_pointMap_right](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-pointmap-right--2733ea7be4811e50661ac58c.md) | 151 | `result-track:2733ea7be4811e50661ac58cb3e149b4cbee0a85b7f45ae548b722aceeb0935e` |
| 13 | `theorem` | [polynomial_compatible](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/polynomial-compatible--a6525743932fdaaa2741d7a4.md) | 164 | `result-track:a6525743932fdaaa2741d7a4d4d7ad17f4752a34b5f12e46c5f53f30c5b59e3f` |
| 14 | `theorem` | [glue_polynomial_model](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/glue-polynomial-model--31fbfff11df0073a15db6769.md) | 170 | `result-track:31fbfff11df0073a15db67698e325187f9e0fd44897f8fd2eea4fc65203ac972` |
| 15 | `theorem` | [puncturedPlane_polynomial_descent](../../../mathematics/AlgebraicGeometry/AnalyticAffineGluing.lean/declarations/puncturedplane-polynomial-descent--76a390a02f12a8199eeef685.md) | 181 | `result-track:76a390a02f12a8199eeef685e423cf089916ede88e2de0f296770c9aff3a50a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
