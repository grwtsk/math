# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.ChannelChoice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e9f3d1160758115e0dbd2b32fe61ff36091a595",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e9f3d1160758115e0dbd2b32fe61ff36091a595`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripChannelChoice`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [a](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/a--fb085e0810a9fe57e576b10a.md) | 23 | `declaration-track:fb085e0810a9fe57e576b10a5bd91000bc7b1422be19a007fc4ffa3aeec87ede` |
| 2 | `def` | [affine](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/affine--30edc9591286a3c0a37a547f.md) | 25 | `declaration-track:30edc9591286a3c0a37a547f30b3992bcddac85c44ad0b439dc68bb1ff9d5b72` |
| 3 | `def` | [loose](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/loose--404a848cd762c23f4f9512f4.md) | 28 | `declaration-track:404a848cd762c23f4f9512f4d15b05112623293171bdeeba536ec88f88630b2f` |
| 4 | `lemma` | [loose_choice](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/loose-choice--44803bffb7b46323a0112992.md) | 30 | `result-track:44803bffb7b46323a0112992d56233690dad1526eea6d9033a7ce0e08ba3b87d` |
| 5 | `lemma` | [loose_old_reject](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/loose-old-reject--76968ad68bd6ce40355e61a5.md) | 34 | `result-track:76968ad68bd6ce40355e61a5ecf911bf4d10be4497668be1530d6ebac75c2d94` |
| 6 | `lemma` | [affine_channels](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/affine-channels--b7ae269fa388ae2fa74d5c94.md) | 44 | `result-track:b7ae269fa388ae2fa74d5c9490e71f7f28ec842ee51d0ff498958cb5e4ddc6f9` |
| 7 | `lemma` | [affine_valid](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/affine-valid--fb9da6168e0f3b7c67c65d76.md) | 52 | `result-track:fb9da6168e0f3b7c67c65d76f1a0805a92a1fe10b84e95e163c9ab3d1944fd73` |
| 8 | `theorem` | [affine_pair_excluded](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/affine-pair-excluded--c4b156665e4708a6e5da73da.md) | 67 | `result-track:c4b156665e4708a6e5da73daab3294f233f1ca19f4252f3f127f1b7a37fe0359` |
| 9 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--233b779899938f202037ec6e.md) | 71 | `declaration-track:233b779899938f202037ec6efde7c0d189c6ce30f06d178b45d5b11ac262202b` |
| 10 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--d708714634d4f52c7a715f51.md) | 72 | `declaration-track:d708714634d4f52c7a715f518143aebec52d5c208cafbeffffed2f45369fe163` |
| 11 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--8ccf696751f372d6217606ea.md) | 73 | `declaration-track:8ccf696751f372d6217606eabee313c89ee776be728bc8899864f4f4ce5575a8` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--4aea5fb88e6ed94409a13545.md) | 76 | `declaration-track:4aea5fb88e6ed94409a13545b096ba931b0fa64c33b7b25b2b1c4cb440eb173d` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--aec228683d4c582a3aa4925f.md) | 81 | `declaration-track:aec228683d4c582a3aa4925ffed905345e8815ef7b487d4d1405ebf45363926c` |
| 14 | `def` | [equality](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/equality--ea8572af63290befa6be39a9.md) | 87 | `declaration-track:ea8572af63290befa6be39a907ee99b7f50f42b6ca2eb19d1d625fea7dbbce61` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--9a13c20dc1f3bbf4f288eb5a.md) | 88 | `declaration-track:9a13c20dc1f3bbf4f288eb5a477d400756abe8917f4e331bc1ee486f199daebe` |
| 16 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--da3dfac4aaeba776dcc97200.md) | 89 | `declaration-track:da3dfac4aaeba776dcc9720014203d93dddc2a7183cecbf80ffd3e5968c20803` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--5c9208fe178d493426dbd5de.md) | 93 | `declaration-track:5c9208fe178d493426dbd5de7ed8132c5b7b2eec88491ccd9a2dbb33d0943510` |
| 18 | `def` | [forged](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/forged--f0f11d7a4fdcda5016b0659c.md) | 98 | `declaration-track:f0f11d7a4fdcda5016b0659cef54db1d9b8935b39c0c1619bad42b36d1f990df` |
| 19 | `lemma` | [forged_pass](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/forged-pass--a30d7e48299dbfafe9a4a15c.md) | 99 | `result-track:a30d7e48299dbfafe9a4a15cd912d2cbcb43f7c6d2c56cca7a21d84ccb82b7ba` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--d780bde6fd666350f8934c70.md) | 101 | `declaration-track:d780bde6fd666350f8934c701727ddb607e14a704877b8ddbe6e248e7d464d4c` |
| 21 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--fb25b6a647aa7fbe8d130735.md) | 106 | `declaration-track:fb25b6a647aa7fbe8d130735697f17cdd5a34ac39895cfbfc1b3d00bb3d65f55` |
| 22 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--e9a92b98e398ce9db8364de2.md) | 108 | `declaration-track:e9a92b98e398ce9db8364de2a76b5ec462d865ed896784291a8c51c41d740131` |
| 23 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/ChannelChoice.lean/declarations/example--6bd84b43f50208d5592c4121.md) | 112 | `declaration-track:6bd84b43f50208d5592c412122c53bc58ad34c9ece35671974c6610f52815d25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
