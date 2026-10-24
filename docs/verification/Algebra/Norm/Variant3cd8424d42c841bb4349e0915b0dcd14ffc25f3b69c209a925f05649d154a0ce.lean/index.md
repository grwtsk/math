# Verification target: GRWTSK.Algebra.Norm.Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb29a182eb8b38d68f20182e56f2533ff5d0a7b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb29a182eb8b38d68f20182e56f2533ff5d0a7b`.

Source path: `GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/instance--0370efe6a443048d92c24668.md) | 51 | `declaration-track:0370efe6a443048d92c24668621e68ac980929b1c9ffca658ef921c767ba675b` |
| 2 | `theorem` | [absNorm_div_norm_eq_absNorm_div_norm](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-div-norm-eq-absnorm-div-norm--a45db6032b80f03c6a56f374.md) | 53 | `result-track:a45db6032b80f03c6a56f374deba69ba9fea4d7f81fde789f4cc326e73721240` |
| 3 | `def` | [absNorm](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm--d6ef6932c4091dfc96b91573.md) | 71 | `declaration-track:d6ef6932c4091dfc96b915738259b98ba218b56d9d34531faa9764ebd7e5a4ef` |
| 4 | `theorem` | [absNorm_eq](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-eq--50c2f4331ce8bf6ce0042585.md) | 89 | `result-track:50c2f4331ce8bf6ce004258592abd9bc1fb4a1acb1705fcb5b270acd9f2c4237` |
| 5 | `theorem` | [absNorm_eq'](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-eq--e03c3586d9124156126221e1.md) | 92 | `result-track:e03c3586d9124156126221e16a041a1c72379328af106dd1a0db3b59404f554c` |
| 6 | `theorem` | [absNorm_nonneg](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-nonneg--e50ed0a836934d63e324a9b0.md) | 98 | `result-track:e50ed0a836934d63e324a9b08222ac701f9375c8d2b1e84faf867e872c50c428` |
| 7 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-bot--ca9b9cd8b5852279661b52fa.md) | 100 | `result-track:ca9b9cd8b5852279661b52fad2ebde3d5f5244ab6253f147338754903d9da9ef` |
| 8 | `theorem` | [absNorm_one](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-one--178aabe046153426208e9d8d.md) | 102 | `result-track:178aabe046153426208e9d8d8a7da35108c51b42022d2f03d2bedb3c0fe5d1bc` |
| 9 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-eq-zero-iff--ccaecf207c501651e75fa6e4.md) | 104 | `result-track:ccaecf207c501651e75fa6e4a6696e6288d9c47e168bc1b1f32ef06bdfe359a9` |
| 10 | `theorem` | [coeIdeal_absNorm](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/coeideal-absnorm--9dfc6e83ba99b524f2618e98.md) | 111 | `result-track:9dfc6e83ba99b524f2618e98238de00dcd61740c059a210b2b7f713301cc33d2` |
| 11 | `theorem` | [abs_det_basis_change](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/abs-det-basis-change--c72e9b62bb22c929213ad5f3.md) | 120 | `result-track:c72e9b62bb22c929213ad5f3ff60a811f5677172bde28d0540a279e085924859` |
| 12 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/declarations/absnorm-span-singleton--59d0d540c6ca467e39e8ebab.md) | 147 | `result-track:59d0d540c6ca467e39e8ebabc9060224b33d97c3af0e1ef0f2d57385f0e0e686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
