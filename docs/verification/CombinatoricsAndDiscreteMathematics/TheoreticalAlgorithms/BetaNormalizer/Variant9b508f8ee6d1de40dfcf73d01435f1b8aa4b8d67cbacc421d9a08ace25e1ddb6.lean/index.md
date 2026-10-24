# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetaNormalizer.Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad8c49fe73d77b961c0f05a006180534b528bad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad8c49fe73d77b961c0f05a006180534b528bad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.BetaNext` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizeFuel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel--2b5135d4409ddd086ea39e32.md) | 30 | `declaration-track:2b5135d4409ddd086ea39e32c6201d6d0e68ee11e3c4d78dc8760d3f2263c89a` |
| 2 | `theorem` | [normalizeFuel_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel-sound--fed29937dae1a4b2de155f91.md) | 41 | `result-track:fed29937dae1a4b2de155f916a72bc244973655f2843581fdf618dfe9faffdad` |
| 3 | `theorem` | [normalizeFuel_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel-complete--c162210f6948f9388f6c63ae.md) | 69 | `result-track:c162210f6948f9388f6c63ae77fae7ab69768648ad2156e35ad2b28cb61503b0` |
| 4 | `theorem` | [normalizeFuel_certified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel-certified--20e80a9e102c2cfe8a9e016a.md) | 94 | `result-track:20e80a9e102c2cfe8a9e016a8e0a54ae30a64a241dd10766320d7d1562fbda78` |
| 5 | `theorem` | [normalizeFuel_preserves_typing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel-preserves-typing--603a4157ad376e07cd6bddd8.md) | 101 | `result-track:603a4157ad376e07cd6bddd82ce5113283ecd31f704302cad2d2b15e8a5db528` |
| 6 | `theorem` | [normal_forms_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normal-forms-unique--10e6c6b2a18a9c5b5c550c71.md) | 107 | `result-track:10e6c6b2a18a9c5b5c550c7175890742808f89d1f7925634719d1de158fd26b1` |
| 7 | `theorem` | [normalizeFuel_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variant9b508f8ee6d1de40dfcf73d01435f1b8aa4b8d67cbacc421d9a08ace25e1ddb6.lean/declarations/normalizefuel-unique--ba2bc83923194ee776afa332.md) | 116 | `result-track:ba2bc83923194ee776afa3323c457277d52152948b451bfe9df66ae121a2b103` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
