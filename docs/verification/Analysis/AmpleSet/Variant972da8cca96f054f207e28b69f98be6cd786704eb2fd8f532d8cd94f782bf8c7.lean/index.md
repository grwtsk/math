# Verification target: GRWTSK.Analysis.AmpleSet.Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401335acc20513c7b7978d5906ce04219756037c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/index.md) · [Full source](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401335acc20513c7b7978d5906ce04219756037c`.

Source path: `GRWTSK/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Connected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.ContinuousAffineEquiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AmpleSet](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/ampleset--e26c325382ee07a1008dab21.md) | 49 | `declaration-track:e26c325382ee07a1008dab215d7aacd6aac6e70102262eb4d88b7a14a43e7866` |
| 2 | `theorem` | [ampleSet_univ](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/ampleset-univ--55261ea11948fb8931101098.md) | 54 | `result-track:55261ea11948fb8931101098a39b7544d5e9d607974851db3ede3f692653f173` |
| 3 | `theorem` | [ampleSet_empty](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/ampleset-empty--c2d0ca53c4d043d1e2fe3fd6.md) | 61 | `result-track:c2d0ca53c4d043d1e2fe3fd6f6ed6f6a615bccfd23519a242e16d9d2db617033` |
| 4 | `theorem` | [union](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/union--1cb1122cd4fff63e05c7fe33.md) | 66 | `result-track:1cb1122cd4fff63e05c7fe33fba0ec8271814e6eaa9794c2a500ed8910b20a0d` |
| 5 | `theorem` | [image](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/image--a3f48ddf7b501a916ba92eb6.md) | 80 | `result-track:a3f48ddf7b501a916ba92eb605cb2e1375dac389332b7a5ce933600abe5437a5` |
| 6 | `theorem` | [image_iff](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/image-iff--2eca8121c5ee50c1d8dea7cf.md) | 90 | `result-track:2eca8121c5ee50c1d8dea7cf1a6a2b2415292fe4617c89e567112815cbd41123` |
| 7 | `theorem` | [preimage](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/preimage--db6362b0c1ee16becab47c67.md) | 95 | `result-track:db6362b0c1ee16becab47c6752c8bc8b939b75c60f0544a6e82ec3736c464b0b` |
| 8 | `theorem` | [preimage_iff](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/preimage-iff--4cd7c6bf0e9fcb21f6ad1f6a.md) | 100 | `result-track:4cd7c6bf0e9fcb21f6ad1f6a5a1e3ac76bdb4c50403742a841d17c5b0d043972` |
| 9 | `theorem` | [vadd](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/vadd--15200b06fdedecd0d3143805.md) | 107 | `result-track:15200b06fdedecd0d3143805f681c39163c3ab266eaed548e9e0b6fc4a9dbff9` |
| 10 | `theorem` | [vadd_iff](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/vadd-iff--574a86c47228e6a2f588d2a6.md) | 112 | `result-track:574a86c47228e6a2f588d2a6064a895c234fa06f2bd3b09a8d087454c670de71` |
| 11 | `theorem` | [of_one_lt_codim](../../../../mathematics/Analysis/AmpleSet/Variant972da8cca96f054f207e28b69f98be6cd786704eb2fd8f532d8cd94f782bf8c7.lean/declarations/of-one-lt-codim--ee25dc5b31c26dc6704356d7.md) | 121 | `result-track:ee25dc5b31c26dc6704356d7c2673568db1f601a514e4e8374a59ac231b9f13a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
