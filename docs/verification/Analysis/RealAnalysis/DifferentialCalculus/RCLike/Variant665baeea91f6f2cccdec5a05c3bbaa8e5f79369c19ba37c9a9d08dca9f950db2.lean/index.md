# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RCLike.Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e87af872c43a25e67060192c0bd4cc112cee512c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e87af872c43a25e67060192c0bd4cc112cee512c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFTaylorSeriesUpToOn.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/hasftaylorseriesuptoon-hasstrictfderivat--f226e87a5fffe199c307118a.md) | 32 | `result-track:f226e87a5fffe199c307118ab7749b14a6b8752e0acd3017a5dfa621b1f0989c` |
| 2 | `theorem` | [ContDiffAt.hasStrictFDerivAt'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-hasstrictfderivat--a88f2c1cd5e1f69543aed6db.md) | 41 | `result-track:a88f2c1cd5e1f69543aed6db851d2405749e235417884e767149d02d497ec921` |
| 3 | `theorem` | [ContDiffAt.hasStrictDerivAt'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-hasstrictderivat--cdabf4b539909851ac9e5531.md) | 51 | `result-track:cdabf4b539909851ac9e55315eeb477e2332d7d287615120c02ed5737d3ef677` |
| 4 | `theorem` | [ContDiffAt.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-hasstrictfderivat--58621cf24977bb185c40ee45.md) | 57 | `result-track:58621cf24977bb185c40ee459da7e2e2f08650de38df621046e18478e5c10c22` |
| 5 | `theorem` | [ContDiffAt.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-hasstrictderivat--c3a618b82c2f555ebb17bd4c.md) | 63 | `result-track:c3a618b82c2f555ebb17bd4c7f1707a588f5ae5d9aa301725ddc482fc61adf4c` |
| 6 | `theorem` | [ContDiff.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiff-hasstrictfderivat--c91611e882390075612a5d3c.md) | 68 | `result-track:c91611e882390075612a5d3c3ff24adcc2dae3ff51efd014d7912d908a0420b5` |
| 7 | `theorem` | [ContDiff.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiff-hasstrictderivat--b04ccf137cd9a628d244d36b.md) | 73 | `result-track:b04ccf137cd9a628d244d36b50ff29c472b37a784604c50a6e29f5752b7e0a13` |
| 8 | `theorem` | [HasFTaylorSeriesUpToOn.exists_lipschitzOnWith_of_nnnorm_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/hasftaylorseriesuptoon-exists-lipschitzonwith-of-nnnorm-lt--d50606e4e6f48a16f4225891.md) | 79 | `result-track:d50606e4e6f48a16f42258916c6a3bd2e5c33156cb8354af4d2a566e11184414` |
| 9 | `theorem` | [HasFTaylorSeriesUpToOn.exists_lipschitzOnWith](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/hasftaylorseriesuptoon-exists-lipschitzonwith--b2ba6a5db98315dedf61261a.md) | 97 | `result-track:b2ba6a5db98315dedf61261afda6dfbc0ba56e124f45947e9583598d744d819c` |
| 10 | `theorem` | [ContDiffWithinAt.exists_lipschitzOnWith](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffwithinat-exists-lipschitzonwith--753e8cb3295e703c76d8084f.md) | 106 | `result-track:753e8cb3295e703c76d8084f65502dbbef79b5e4f775c038dc0e0ed9ea25da25` |
| 11 | `theorem` | [ContDiffAt.exists_lipschitzOnWith_of_nnnorm_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-exists-lipschitzonwith-of-nnnorm-lt--5cde58248711db46011a5fa0.md) | 121 | `result-track:5cde58248711db46011a5fa024ee4b9489ab6540681559ed28552dc9345fed06` |
| 12 | `theorem` | [ContDiffAt.exists_lipschitzOnWith](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiffat-exists-lipschitzonwith--d23f44f5fdfa86ecde1f61c1.md) | 127 | `result-track:d23f44f5fdfa86ecde1f61c10e638ca5e72c9c3b6cbcae39b02a6d44190b6845` |
| 13 | `lemma` | [ContDiff.locallyLipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiff-locallylipschitz--703afd06424e0c0d97e339a1.md) | 132 | `result-track:703afd06424e0c0d97e339a1b3b1544fb51b33757c0bb93f0488e03a00179c03` |
| 14 | `theorem` | [ContDiff.lipschitzWith_of_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RCLike/Variant665baeea91f6f2cccdec5a05c3bbaa8e5f79369c19ba37c9a9d08dca9f950db2.lean/declarations/contdiff-lipschitzwith-of-hascompactsupport--1499ae7e307949926fccff80.md) | 138 | `result-track:1499ae7e307949926fccff80aab0b31b13f42d0f64f963ebdf102dcf24c29c8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
