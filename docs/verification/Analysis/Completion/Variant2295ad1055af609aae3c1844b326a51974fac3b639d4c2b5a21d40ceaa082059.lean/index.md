# Verification target: GRWTSK.Analysis.Completion.Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "138ce680860bc76b5b43e1043d0dd784c27c2e96",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `138ce680860bc76b5b43e1043d0dd784c27c2e96`.

Source path: `GRWTSK/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/instance--3931a48b48283ec8c38fd39a.md) | 37 | `declaration-track:3931a48b48283ec8c38fd39aa8cfb22052412cd75822b723acf4916087051f44` |
| 2 | `def` | [toComplₗᵢ](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/tocompl--b0249151bf3401a514b6da71.md) | 47 | `declaration-track:b0249151bf3401a514b6da71242de30fa1dd2e61a2903bfb0a3cf22c9c3c8ff6` |
| 3 | `theorem` | [coe_toComplₗᵢ](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/coe-tocompl--708a7c810233cd3304b83a61.md) | 51 | `result-track:708a7c810233cd3304b83a61701d42e8069b85c86c7c51bb9a4f9eea8887db03` |
| 4 | `lemma` | [toContinuousLinearMap_toComplₗᵢ](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/tocontinuouslinearmap-tocompl--5e11704cdac6536ee891e044.md) | 54 | `result-track:5e11704cdac6536ee891e044d3c86468cff4637bf85067d32f14137bdfab7727` |
| 5 | `theorem` | [norm_toComplL](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/norm-tocompll--9d36a8f01018b6d4fe9d10d9.md) | 58 | `result-track:9d36a8f01018b6d4fe9d10d9e78915e7884c52bbda0403eea45f9152335ccd33` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/instance--1af8a07d91ef16c126c20930.md) | 68 | `declaration-track:1af8a07d91ef16c126c20930b30ef003099484c99783aa6dcf227bb4d7db184b` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/instance--1d0529d6d611267b0c27c89b.md) | 76 | `declaration-track:1d0529d6d611267b0c27c89b0b658eb8ea1c0c05941a69f71d1e442e64ca9f3f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/instance--3bbcd7dff1ebc25ec27a2842.md) | 80 | `declaration-track:3bbcd7dff1ebc25ec27a284231754ff616541d6086eb0bce3fc183e9954bbd62` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant2295ad1055af609aae3c1844b326a51974fac3b639d4c2b5a21d40ceaa082059.lean/declarations/instance--a7d9545c4bb9340349075493.md) | 84 | `declaration-track:a7d9545c4bb93403490754933f77ae1390efb6466f6f89a3427e2f7f2c620bf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
