# Verification target: GRWTSK.Analysis.Ray.Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc964dd3c476ec0a5e741554ed3fd7bba83d4374",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/index.md) · [Full source](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc964dd3c476ec0a5e741554ed3fd7bba83d4374`.

Source path: `GRWTSK/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_add](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/norm-add--ec45b6939367b67e9babb157.md) | 40 | `result-track:ec45b6939367b67e9babb15799b8ca8eebde299cc38d97486d971be597156933` |
| 2 | `theorem` | [norm_sub](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/norm-sub--3e2526784133af088364ed57.md) | 46 | `result-track:3e2526784133af088364ed577cc0527604b905e0777c2a2ffc0229c2a7dfc8b9` |
| 3 | `theorem` | [norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/norm-smul-eq--2f67183442781b0f2cbf596d.md) | 58 | `result-track:2f67183442781b0f2cbf596dddbc78c508e8c8f52a29511f0350ad25a47cc5a2` |
| 4 | `theorem` | [norm_injOn_ray_left](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/norm-injon-ray-left--0f9438010493b04ab0df5d6d.md) | 68 | `result-track:0f9438010493b04ab0df5d6db462fc36e9ca459a01f53407e70083143b01aff5` |
| 5 | `theorem` | [norm_injOn_ray_right](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/norm-injon-ray-right--28ec50aaa995a17426a01933.md) | 77 | `result-track:28ec50aaa995a17426a01933532984826023e0651053c983469166d18d92942d` |
| 6 | `theorem` | [sameRay_iff_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-iff-norm-smul-eq--14538014b5c747c3d5f03b25.md) | 81 | `result-track:14538014b5c747c3d5f03b25ac2a1e0f26479a08527ec61a803e45f1ec4ca8a8` |
| 7 | `theorem` | [sameRay_iff_inv_norm_smul_eq_of_ne](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-iff-inv-norm-smul-eq-of-ne--f1ca395814560d47ca507eb9.md) | 89 | `result-track:f1ca395814560d47ca507eb909fcd494ec6a3545d2ea7ae6af9e113cd2893cf8` |
| 8 | `theorem` | [sameRay_iff_inv_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-iff-inv-norm-smul-eq--949862d37dfe6c1b275faa98.md) | 100 | `result-track:949862d37dfe6c1b275faa9858b2d41ec1456274378e092f8dd624f0b089706c` |
| 9 | `theorem` | [sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-iff-of-norm-eq--c1edfd5dd135a479cd1febd0.md) | 107 | `result-track:c1edfd5dd135a479cd1febd0fa81dfdc6a3f9674b7f5d7e85fa40089a6dcb607` |
| 10 | `theorem` | [not_sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/not-sameray-iff-of-norm-eq--89c4c54047fbec838e49acdf.md) | 114 | `result-track:89c4c54047fbec838e49acdf36331cb2111e682631e2f75290c66e95c986773b` |
| 11 | `theorem` | [SameRay.eq_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-eq-of-norm-eq--a81d6bf4085bdd3c51543d0c.md) | 119 | `result-track:a81d6bf4085bdd3c51543d0c6d8ceb68e4ef2300650280cb32d6c7f79d65d44a` |
| 12 | `theorem` | [SameRay.norm_eq_iff](../../../../mathematics/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/declarations/sameray-norm-eq-iff--439df4796b045b73ceb85051.md) | 124 | `result-track:439df4796b045b73ceb8505166392235e36c18304315f8d274991f8fa36f4e44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
