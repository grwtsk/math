# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ReLU.Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b31e8cb068a92c3b1fb5415af14b722c9fdecf22",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b31e8cb068a92c3b1fb5415af14b722c9fdecf22`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound--1dd2757bcc63fe62fa01ceee.md) | 56 | `declaration-track:1dd2757bcc63fe62fa01ceee1e2879aeb66f08d51af356b232505b9067352c38` |
| 2 | `def` | [LinearBound.eval](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-eval--fb38bfe771dfda8e524702f6.md) | 62 | `declaration-track:fb38bfe771dfda8e524702f6334c37ef9f36d2a7577db2e7d6b99495f9da34bc` |
| 3 | `def` | [crossingUpperBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/crossingupperbound--566b6b7a79bb8b94f5548c30.md) | 69 | `declaration-track:566b6b7a79bb8b94f5548c30fce32955aeae1d409cd91debab6a67d0a722baae` |
| 4 | `theorem` | [crossingUpperBound_eval](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/crossingupperbound-eval--61fa5787def2eab3a6a2758a.md) | 75 | `result-track:61fa5787def2eab3a6a2758ae4304f78448d555464f5f1da9b1a02955195b650` |
| 5 | `theorem` | [upper_bound_valid](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/upper-bound-valid--46582f8c3181e92430bc97e9.md) | 91 | `result-track:46582f8c3181e92430bc97e9ab3e14005ba442bafad8de8c479b072a51e47769` |
| 6 | `structure` | [SymbolicBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/symbolicbound--811a73e9323138893f6b6982.md) | 132 | `declaration-track:811a73e9323138893f6b698205af567baa12d1ea82ce779bf0d772dd7937efdf` |
| 7 | `def` | [getReLURelaxation](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/getrelurelaxation--22e3dd86d35bda6acf732fcb.md) | 140 | `declaration-track:22e3dd86d35bda6acf732fcbe7f94e42db8ad3d4bb564974250741b797998939` |
| 8 | `theorem` | [lower_bound_crossing](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/lower-bound-crossing--aece553aca1f1b28232eeb62.md) | 155 | `result-track:aece553aca1f1b28232eeb62ed6a7d52e29d92b1721647c72022422844d730fd` |
| 9 | `theorem` | [relu_relaxation_sound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/relu-relaxation-sound--73048c1899cbf45a8628950c.md) | 164 | `result-track:73048c1899cbf45a8628950cae4a628c6438c7f91ae4f12d31ffa5666352ed47` |
| 10 | `def` | [LinearBound.identity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-identity--164ba2aa8ac2c0ea476340ab.md) | 199 | `declaration-track:164ba2aa8ac2c0ea476340ab52042450bc0e686669d59fd1b2cb03721d2eea8a` |
| 11 | `def` | [LinearBound.zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-zero--6853b8b69f48afd423477185.md) | 202 | `declaration-track:6853b8b69f48afd4234771854b0403f77ef9a752c3a2bd39ecb8aea9981a6229` |
| 12 | `theorem` | [LinearBound.eval_identity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-eval-identity--4d0bf70d3a1416be84acaef3.md) | 205 | `result-track:4d0bf70d3a1416be84acaef38bdf7c8dcf6dd48f4c4bdd70958ff4eb5b76d27d` |
| 13 | `theorem` | [LinearBound.eval_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-eval-zero--8519c1a85079d36c4ed99b41.md) | 209 | `result-track:8519c1a85079d36c4ed99b418dd699877833458958fc39574159f091826a61d6` |
| 14 | `def` | [LinearBound.compose](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-compose--1e4029c451bed4c8f208e6f5.md) | 213 | `declaration-track:1e4029c451bed4c8f208e6f561ecdd69588d207b0fbbf80d9b7dc227907dd270` |
| 15 | `theorem` | [LinearBound.eval_compose](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/linearbound-eval-compose--a42b60a23f6c2d8f1e29f603.md) | 217 | `result-track:a42b60a23f6c2d8f1e29f60388ca920d31b1d37e2a6105ec62cacd87a61e07a3` |
| 16 | `def` | [outputWidth](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/outputwidth--dbbd987beb5f2cd0c7127d92.md) | 227 | `declaration-track:dbbd987beb5f2cd0c7127d9221cb29477291d8066179d7bd594cb435c8da1cde` |
| 17 | `theorem` | [crossingUpperBound_at_u](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/crossingupperbound-at-u--afe5e18b7a9ba65bf2dfaa49.md) | 233 | `result-track:afe5e18b7a9ba65bf2dfaa49a339bd7c2f98c45560eb5da740c82c3ecc464666` |
| 18 | `theorem` | [crossingUpperBound_at_l](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/declarations/crossingupperbound-at-l--23e6a76eb7f5ccf5e667c041.md) | 241 | `result-track:23e6a76eb7f5ccf5e667c041de29fe33110ab3222bf76919033a1b29543786d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
