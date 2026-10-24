# Verification target: GRWTSK.Analysis.ComplexAnalysis.Within.Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eb0051745641c17b3e86f2298d5a5fd7eff0ac2`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [analyticWithinAt_of_singleton_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/analyticwithinat-of-singleton-mem--5ad90ed389d3d365222a59d4.md) | 40 | `result-track:5ad90ed389d3d365222a59d4646c8c227f0d117a30f0e748a78737cfe45408a6` |
| 2 | `lemma` | [analyticOn_of_locally_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/analyticon-of-locally-analyticon--1eb4c66ca001e22dd9435665.md) | 60 | `result-track:1eb4c66ca001e22dd9435665805925cbebc1b4f31e2f34199824bd25b50ad70d` |
| 3 | `lemma` | [IsOpen.analyticOn_iff_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/isopen-analyticon-iff-analyticonnhd--66b8534002f056f3e8944a85.md) | 83 | `result-track:66b8534002f056f3e8944a854c2f9f2e4e9c8bdad57f5af34bd23cabb9870439` |
| 4 | `lemma` | [hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/hasfpowerserieswithinonball-iff-exists-hasfpowerseriesonball--c5d2f5232cbcc28863c58062.md) | 111 | `result-track:c5d2f5232cbcc28863c580627794d04a27aebde2062e857bf4b25e557805960b` |
| 5 | `lemma` | [hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/hasfpowerserieswithinat-iff-exists-hasfpowerseriesat--fc508cf21721641e11de24e7.md) | 144 | `result-track:fc508cf21721641e11de24e7c9b84890cff624d0f3f3d069ef80282bfba8a3f1` |
| 6 | `lemma` | [analyticWithinAt_iff_exists_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/analyticwithinat-iff-exists-analyticat--7f9ad482d7fd32c2f6daf193.md) | 166 | `result-track:7f9ad482d7fd32c2f6daf1934e5b5d8ae869b68f42d554704101f95086378f01` |
| 7 | `lemma` | [analyticWithinAt_iff_exists_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/analyticwithinat-iff-exists-analyticat--5caeefa8561eb1fb9efeb075.md) | 174 | `result-track:5caeefa8561eb1fb9efeb075eea82eee408209e3812efb0940f6fc3fa8eeb07e` |
| 8 | `lemma` | [AnalyticWithinAt.exists_mem_nhdsWithin_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/declarations/analyticwithinat-exists-mem-nhdswithin-analyticon--9b3c262a32319f9f0a355954.md) | 198 | `result-track:9b3c262a32319f9f0a3559544070b570acb48a90023158f6481391c6fbba3872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
