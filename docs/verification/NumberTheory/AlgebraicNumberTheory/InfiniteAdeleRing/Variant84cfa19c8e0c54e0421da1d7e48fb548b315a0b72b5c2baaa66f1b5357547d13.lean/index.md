# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.InfiniteAdeleRing.Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ade586cb8b9a3c96200939bb6563f47414367f0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ade586cb8b9a3c96200939bb6563f47414367f0`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean.json)

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
| 1 | `def` | [InfiniteAdeleRing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/infiniteadelering--cb15fff413c0199f96fb9915.md) | 60 | `declaration-track:cb15fff413c0199f96fb9915361ea2ffc962043be0c6f812870a2c7bc8cc1b94` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/instance--b9ab5da4d3e5f946332410a7.md) | 72 | `declaration-track:b9ab5da4d3e5f946332410a7a2d92195781f1ab05f3382c0ba557b4d75734444` |
| 3 | `theorem` | [algebraMap_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/algebramap-apply--7048edc1dfa27c08acb7cb6d.md) | 75 | `result-track:7048edc1dfa27c08acb7cb6dd594a3a88f884d05cc6d17d03dc0e1ce6a1153b8` |
| 4 | `instance` | [locallyCompactSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/locallycompactspace--0fa756227739e7b123847932.md) | 78 | `declaration-track:0fa756227739e7b1238479324e5e72e716b5ce8625dfabee8eaea8d11a18c5fc` |
| 5 | `abbrev` | [ringEquiv_mixedSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/ringequiv-mixedspace--bb20a730451350199bef6b88.md) | 84 | `declaration-track:bb20a730451350199bef6b8894f25077e08d293e40e0f273d2c1efe31e6bc3f0` |
| 6 | `theorem` | [ringEquiv_mixedSpace_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/ringequiv-mixedspace-apply--9b7d571a7a4fb2c1a1186f1e.md) | 97 | `result-track:9b7d571a7a4fb2c1a1186f1e59d21ecb962d2360f12f5f79191f62a5e668a84c` |
| 7 | `theorem` | [mixedEmbedding_eq_algebraMap_comp](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/mixedembedding-eq-algebramap-comp--41dca1b0e8994a2890803d46.md) | 105 | `result-track:41dca1b0e8994a2890803d4675d0918ff316699815e17fdef9577419ab4c4e1c` |
| 8 | `theorem` | [denseRange_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/denserange-algebramap--4833bf92e21cdb873f8a69f6.md) | 114 | `result-track:4833bf92e21cdb873f8a69f65543dc3ab8ed1f3f0727585774cff803a63d2523` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/instance--f8587d36520da2bc1cd21b46.md) | 121 | `declaration-track:f8587d36520da2bc1cd21b46be9c823e3a47f4ee1bda7554f19a8f92f71be49d` |
| 10 | `theorem` | [norm_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/norm-def--50cea1ea80d18638dd3515ac.md) | 125 | `result-track:50cea1ea80d18638dd3515acee7f7c4bd670f472bf4ae505c307d52dc088a5f2` |
| 11 | `theorem` | [norm_eq_zero_of_not_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/norm-eq-zero-of-not-isunit--4dc80576a1f872a17fa50622.md) | 128 | `result-track:4dc80576a1f872a17fa50622c9250e055e1b1ef0f83a6041035d1209481f1e3a` |
| 12 | `theorem` | [coe_norm_eq_abs_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/coe-norm-eq-abs-norm--5f8c188f7aa1fbc7dfad11ee.md) | 136 | `result-track:5f8c188f7aa1fbc7dfad11ee8f03a42ea8565952f8f507363d9c5e174b1e1138` |
| 13 | `def` | [ofCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/InfiniteAdeleRing/Variant84cfa19c8e0c54e0421da1d7e48fb548b315a0b72b5c2baaa66f1b5357547d13.lean/declarations/ofcompletion--18fd80ebd42ad6b7f1e0a0bb.md) | 142 | `declaration-track:18fd80ebd42ad6b7f1e0a0bbf2c6e5271056fe9e8115931631baaf397e2a88ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
