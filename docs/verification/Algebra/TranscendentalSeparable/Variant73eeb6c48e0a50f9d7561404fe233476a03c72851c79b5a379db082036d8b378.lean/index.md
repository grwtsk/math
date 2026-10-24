# Verification target: GRWTSK.Algebra.TranscendentalSeparable.Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37541afd3d2dd72541cb096c21ecbc6753015ae4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/index.md) · [Full source](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37541afd3d2dd72541cb096c21ecbc6753015ae4`.

Source path: `GRWTSK/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean.json)

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
| 1 | `class` | [Algebra.IsSeparablyGenerated](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/algebra-isseparablygenerated--8545aff8d9265ac925687e17.md) | 43 | `declaration-track:8545aff8d9265ac925687e172a4a62cfb6f6ea3e4d6550f2ff48f337578562c8` |
| 2 | `lemma` | [AlgEquiv.isSeparablyGenerated](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/algequiv-isseparablygenerated--a852d73d154f615e32eedaf7.md) | 48 | `result-track:a852d73d154f615e32eedaf74e72b658ed14b48a51fcc0621f205c190de65861` |
| 3 | `lemma` | [Algebra.isSeparable_iff_isSeparablyGenerated_and_isAlgebraic](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/algebra-isseparable-iff-isseparablygenerated-and-isalgebraic--7da5c6efccf2ef02a1bcf996.md) | 56 | `result-track:7da5c6efccf2ef02a1bcf996ceca261a556dcbebebdaf8785bf24f2c78f9c42b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/instance--82190a6b9a9badd9492029fb.md) | 70 | `declaration-track:82190a6b9a9badd9492029fb62a74c91db87144350767c6fe5e7c1fea7abf86d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/instance--9c9699b53b9f215fe30eeb76.md) | 73 | `declaration-track:9c9699b53b9f215fe30eeb7691c43ee7acbf0fea74b8df317c49e6b59422e1e7` |
| 6 | `class` | [Algebra.IsTranscendentalSeparable](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/algebra-istranscendentalseparable--376a8edaa3ba7021dda3a759.md) | 80 | `declaration-track:376a8edaa3ba7021dda3a7598b7aa159e5a015eee9564d056d3478f7d5adf3f1` |
| 7 | `lemma` | [Algebra.isSeparable_iff_isTranscendentalSeparable_and_isAlgebraic](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/algebra-isseparable-iff-istranscendentalseparable-and-isalgebraic--ca46efd64bce6d65eb81034f.md) | 84 | `result-track:ca46efd64bce6d65eb81034f5d88a3fd9b79b3312019ea4a59a10fb466edac80` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendentalSeparable/Variant73eeb6c48e0a50f9d7561404fe233476a03c72851c79b5a379db082036d8b378.lean/declarations/instance--4f6e2beacc4996041a1cdcd7.md) | 96 | `declaration-track:4f6e2beacc4996041a1cdcd77f7a996e2042bc5216fd1e497545c7a53add1ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
