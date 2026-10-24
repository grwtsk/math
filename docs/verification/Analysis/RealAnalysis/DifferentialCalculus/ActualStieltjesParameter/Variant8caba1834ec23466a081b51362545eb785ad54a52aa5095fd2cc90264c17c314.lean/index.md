# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesParameter.Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28811df880769b2ef31ffd03556bda9c0cf9689a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28811df880769b2ef31ffd03556bda9c0cf9689a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellkernel--b0ba6fbb29e4f6101f2b02a0.md) | 14 | `declaration-track:b0ba6fbb29e4f6101f2b02a08157ef2da4e90e27c8453ad1a3111b26f816ad54` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellderivative--01eea14a10494e22d22b1322.md) | 15 | `declaration-track:01eea14a10494e22d22b13228dfb9b2e6fdb6955cc548cef56c6051ecec85ada` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/derivativemajorant--157eafeccce520244af7c448.md) | 16 | `declaration-track:157eafeccce520244af7c448b4ccd2f5d9cad45a841c0e8bed5598ab33a0cb07` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellkernel-integrable--8850d574bd2725ba5c65b81b.md) | 18 | `result-track:8850d574bd2725ba5c65b81b550fcbbbcfa55557b3cd25e37888e7a1b7358866` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellderivative-integrable--2a56e617dfe470b6283f2dfd.md) | 28 | `result-track:2a56e617dfe470b6283f2dfd241f3871d2478e127cd1d08bc5ecf18831366b0b` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellkernel-hasderivat--c74b4cd1df87b0f4fce65510.md) | 39 | `result-track:c74b4cd1df87b0f4fce65510c08d14fc1b8a9bd8f88fd435011ae2bbada4f7bf` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/cellderivative-bound--03b88b576a2c7c1007a97e00.md) | 54 | `result-track:03b88b576a2c7c1007a97e00b7e423acb2a020beedce266b9ebcfb787170ea47` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/term-hasderivat--2cd5484ede18fd73831b6978.md) | 74 | `result-track:2cd5484ede18fd73831b6978dbcfcdc0d36c7483a4a38cc554188ff77df2edb3` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/term-hasderivat-one--0c3c69468e01e37c5f027fe0.md) | 99 | `result-track:0c3c69468e01e37c5f027fe05c070c93e0c5955aabaf9888d4f535e6f98e6dda` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/derivativemajorant-nonneg--9ef5384432676150a8fc076a.md) | 105 | `result-track:9ef5384432676150a8fc076a1647b3d4c4189205c5638941a22b0f647b68ec84` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/derivativemajorant-le-pseries--9848b02ca3b2df6325ac541b.md) | 110 | `result-track:9848b02ca3b2df6325ac541b7e1470a132bceeede6206bbf1d3f5ff9c2637cde` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/derivativemajorant-summable--62c8f98dab4e00654f9d8171.md) | 132 | `result-track:62c8f98dab4e00654f9d8171743a97a3a55c2871ca04b899e3f85c690c2151c1` |
| 13 | `def` | [termDerivValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/termderivvalue--96e3f22bd79c6bbe20a1accc.md) | 140 | `declaration-track:96e3f22bd79c6bbe20a1accce901f2ffb2180fe8005842caf01403e980383a1b` |
| 14 | `theorem` | [termDerivValue_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/termderivvalue-bound--c1a4433e37d261a71ee19f12.md) | 143 | `result-track:c1a4433e37d261a71ee19f1270587f308aa7ef5e429526fef5c41f2ed86d81a0` |
| 15 | `theorem` | [termDerivValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/termderivvalue-one--03b17bccbf5daf5f8ed204b3.md) | 152 | `result-track:03b17bccbf5daf5f8ed204b317d46c6969fc81765ff2ab2b70a73ab9556dc445` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/termtsum-hasderivat--df68e6ee4da15e7efe8aa91e.md) | 156 | `result-track:df68e6ee4da15e7efe8aa91eb2c6376f76978e69ccc98be08fd6f3e0d6da8956` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/declarations/termtsum-hasderivat-one--40d73d7e78ea66986c4fd2ed.md) | 164 | `result-track:40d73d7e78ea66986c4fd2ed390d3939f2f9791079bacaf50f0a0564bcdb9442` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
