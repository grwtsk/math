# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpODE.Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad02a90069d41f630d732f47f09677f76d7f1f75",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad02a90069d41f630d732f47f09677f76d7f1f75`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMellinFilter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/bumpmoment--db99d7a103c9270003b7385c.md) | 23 | `declaration-track:db99d7a103c9270003b7385c1f690015a42b84fca365ce93f9df366822a569b1` |
| 2 | `def` | [fifthProfile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile--18cd6ad086bdb5293e7c659d.md) | 26 | `declaration-track:18cd6ad086bdb5293e7c659daedf14402029090bdb492a5069939d633903f33f` |
| 3 | `theorem` | [moment_profile_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/moment-profile-continuous--9dfd19a387798d5874f7e5dd.md) | 28 | `result-track:9dfd19a387798d5874f7e5ddcbfb78babe44ae95e15146e3f699dae7b5b20d91` |
| 4 | `theorem` | [moment_profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/moment-profile-hascompactsupport--b8de3bf9197ef42edb2316e2.md) | 32 | `result-track:b8de3bf9197ef42edb2316e2e9f49c717d71f2883156d7964de298d19062eb8f` |
| 5 | `theorem` | [bumpMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/bumpmoment-integrable--e048e670680ab4ee621106c6.md) | 36 | `result-track:e048e670680ab4ee621106c61b3fe0b25bc09bacdc1e1251e813249ab6458f06` |
| 6 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/bumpmoment-hasderivat--b9fd7bd1f4a1873c43719e29.md) | 40 | `result-track:b9fd7bd1f4a1873c43719e2929449dcadd7665dc4932c4bfea58348fdeef6491` |
| 7 | `theorem` | [bumpMoment_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/bumpmoment-differentiable--4bf88c3eb5fac99f64f0b0f2.md) | 52 | `result-track:4bf88c3eb5fac99f64f0b0f22b2a7b231f5cd5fa5179081286e5e78e1d6c648d` |
| 8 | `theorem` | [bumpMoment_zero_eq_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/bumpmoment-zero-eq-quartic--a41b994748bea567b239ab83.md) | 56 | `result-track:a41b994748bea567b239ab8358f63e0c51157b31d3b2779624f2819ba65978fc` |
| 9 | `theorem` | [quartic_value_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/quartic-value-zero--b21a5f6a3534ec0de6c8f3ec.md) | 61 | `result-track:b21a5f6a3534ec0de6c8f3ec03c484669116630fb29bc8e4c54e557f0f85f04d` |
| 10 | `theorem` | [quartic_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/quartic-hasderivat--e9a965fc5b33d69deeaea7ce.md) | 78 | `result-track:e9a965fc5b33d69deeaea7ce508f4d670e8fcbd2e5d555c0c02e6145240d815c` |
| 11 | `theorem` | [quartic_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/quartic-deriv--c6b75feef7dea73bd61e0534.md) | 83 | `result-track:c6b75feef7dea73bd61e0534e4564a6ff0ee837efe6ed2a7420fb18a92664702` |
| 12 | `theorem` | [quartic_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/quartic-second-deriv--b1148eb5cc2237ec22cd1940.md) | 86 | `result-track:b1148eb5cc2237ec22cd194067d8e02bde3b19ed1dae6f4084488faf6fb64fb6` |
| 13 | `theorem` | [fifthProfile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-contdiff--f0564c6fe26aa5b64f4555d5.md) | 90 | `result-track:f0564c6fe26aa5b64f4555d5aaaba862519b5bb94f38ec4476495cf1d40621ab` |
| 14 | `theorem` | [fifthProfile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-hascompactsupport--481741272486f3b84bc3b345.md) | 94 | `result-track:481741272486f3b84bc3b3456bb2c46c6084040cc360da5cce6af176014a25b2` |
| 15 | `theorem` | [fifthProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-hasderivat--9c4d670fab29fd72d0c97754.md) | 97 | `result-track:9c4d670fab29fd72d0c977549309cff5f2a2e6c6ebcc8df86c2b2812363c6465` |
| 16 | `theorem` | [fifthProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-deriv--e259f9f1765372a00ce4efd4.md) | 110 | `result-track:e259f9f1765372a00ce4efd421f4f9b64dd216bdef865fcfd7b0075883acf800` |
| 17 | `theorem` | [fifthProfile_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-transform--e8197cd1e795368931c56916.md) | 113 | `result-track:e8197cd1e795368931c56916ab3ca1aaab4890fe4f83c275f7c7fe0bd7f72e02` |
| 18 | `theorem` | [fifthProfile_deriv_transform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/fifthprofile-deriv-transform--e7537adf33b253ceb973b9cf.md) | 128 | `result-track:e7537adf33b253ceb973b9cfa3e618a7a8fece5d713c0b726befae6e0d793fdc` |
| 19 | `theorem` | [literal_quartic_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/declarations/literal-quartic-ode--7f7f67c0a6e3a3feba9d677d.md) | 138 | `result-track:7f7f67c0a6e3a3feba9d677dcbcda477a00e50a4b68a2881471315535c784ee2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
