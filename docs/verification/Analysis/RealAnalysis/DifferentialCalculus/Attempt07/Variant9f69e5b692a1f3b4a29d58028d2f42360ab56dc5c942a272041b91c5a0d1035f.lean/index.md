# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt07.Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "678eeef8f85fdff37cae7ad3c597149055f8a7c9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `678eeef8f85fdff37cae7ad3c597149055f8a7c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellkernel--69d9eb41cdd8b069ee71f2ab.md) | 22 | `declaration-track:69d9eb41cdd8b069ee71f2abda8f1a42b3ece5afcb64719c98bb82f670da5ada` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellderivative--8fa5b9e2b08646da684f1f51.md) | 23 | `declaration-track:8fa5b9e2b08646da684f1f519124e7c30c523d9341f6e7a5985b614286c7cc2e` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/derivativemajorant--bc8e71a7d93a453ac5b3258e.md) | 24 | `declaration-track:bc8e71a7d93a453ac5b3258ecf56f1e60885b1ab193edb1913564e9db9015e78` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellkernel-integrable--a0dd8ab2b49c3f4d95c98891.md) | 26 | `result-track:a0dd8ab2b49c3f4d95c98891b36ef71b3a993b8906186ad34390a7bfccac454b` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellderivative-integrable--2fa66faee0ffefd53fb35a3c.md) | 36 | `result-track:2fa66faee0ffefd53fb35a3ca43b11d00e76234a60b4155ef30094f1ee0fa058` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellkernel-hasderivat--b42b0a6dbfc7a590d8e40a32.md) | 47 | `result-track:b42b0a6dbfc7a590d8e40a32deed75829ca18344c5c9820380c2643b27e84426` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/cellderivative-bound--96c6fb97f9cdf137fef073a5.md) | 62 | `result-track:96c6fb97f9cdf137fef073a5ddd6b8e11a27be1143dae744dca0bc3aa4f06ed8` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/term-hasderivat--a81dd42b71b9da199f89ca9f.md) | 82 | `result-track:a81dd42b71b9da199f89ca9fcdf20b3f2395c6fc757c14787f96a4083ed39323` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/term-hasderivat-one--22f8c7d82be8517cffa94ca2.md) | 107 | `result-track:22f8c7d82be8517cffa94ca281b8582f9280f0bf86d0ab18f900b3d14346a27a` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/derivativemajorant-nonneg--e0d625cc72e2efffd3a315f0.md) | 113 | `result-track:e0d625cc72e2efffd3a315f09d88d0a4e7354b7d799ba37be5a76389fb15cebf` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/derivativemajorant-le-pseries--79b3842542dcc9a694628dbb.md) | 118 | `result-track:79b3842542dcc9a694628dbb8db32610796d631bc5f6963f8637fe5a03efb9a3` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/derivativemajorant-summable--9b717542bb1cdf39b0a4498d.md) | 140 | `result-track:9b717542bb1cdf39b0a4498d74645a29b4b1a53fe9291bdd66f81cc647263cac` |
| 13 | `def` | [termDerivValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/termderivvalue--03241a3f8e2b6b631a65c047.md) | 148 | `declaration-track:03241a3f8e2b6b631a65c047630355657ed89e04a580d562829464d7c57022bf` |
| 14 | `theorem` | [termDerivValue_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/termderivvalue-bound--0d2e8c3d5ba67284dc179e84.md) | 151 | `result-track:0d2e8c3d5ba67284dc179e849cb705d09774f98dc4204680bb452f584d8fbfb9` |
| 15 | `theorem` | [termDerivValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/termderivvalue-one--3520b4af4334a320167f89ff.md) | 160 | `result-track:3520b4af4334a320167f89ff544133dd81e278dabfe8c1dfa1d4e2751e2ae597` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/termtsum-hasderivat--2c455cdda3e9c8c4e3c44c2e.md) | 164 | `result-track:2c455cdda3e9c8c4e3c44c2e03b2a064ccd85d9f9ff305c9e92f78b53c0462c9` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant9f69e5b692a1f3b4a29d58028d2f42360ab56dc5c942a272041b91c5a0d1035f.lean/declarations/termtsum-hasderivat-one--a1bfaa98dfac6b5d0e617da9.md) | 172 | `result-track:a1bfaa98dfac6b5d0e617da9492d4d1a8d5b376e2619b7df258d4661f6c2ffcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
