# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.XiReconstruction.Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0fa080c63539be288fcb2a546355e5bd7203b5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0fa080c63539be288fcb2a546355e5bd7203b5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_iteratedDeriv_odd](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/xi-iteratedderiv-odd--4aab568a4653d72e51605695.md) | 25 | `result-track:4aab568a4653d72e51605695ed9b84c07edd2070b4300c73a73b77b6cd60f079` |
| 2 | `theorem` | [xi_iteratedDeriv_even_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/xi-iteratedderiv-even-real--8371eab0d460990c1fde1a6b.md) | 34 | `result-track:8371eab0d460990c1fde1a6b91c1b233a7195d3a8236260fa1482b47c08639d0` |
| 3 | `theorem` | [even_taylor_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/even-taylor-term--b4c6ee9698442583fc9d58ba.md) | 41 | `result-track:b4c6ee9698442583fc9d58baadc2da6eba1693e5851ba0eda60913adab3b28a2` |
| 4 | `theorem` | [hasSum_centered_even](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/hassum-centered-even--e5b828aabe8d6cb1a85ae801.md) | 49 | `result-track:e5b828aabe8d6cb1a85ae8010a16b539534183ab2d0039ba03c0598c181a4f99` |
| 5 | `theorem` | [summable_centered](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/summable-centered--f8d4947b88fe5ab008c770be.md) | 66 | `result-track:f8d4947b88fe5ab008c770be848215257f06188b091dcf3ca6e56385dd383908` |
| 6 | `theorem` | [centeredSeries_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/centeredseries-sq--20fe3112e02fb5bd5f0f7a94.md) | 72 | `result-track:20fe3112e02fb5bd5f0f7a94e2a5c9100110996d9400f7830bf49c5d6a443df9` |
| 7 | `theorem` | [centeredSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/centeredseries-radius--ce418dbdf9f79dcacde92cf0.md) | 76 | `result-track:ce418dbdf9f79dcacde92cf0929dd104f4ff556e2b7709a915bc5425d3eab092` |
| 8 | `theorem` | [differentiable_centeredSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/differentiable-centeredseries--b32ec96335e6f83c2226547c.md) | 85 | `result-track:b32ec96335e6f83c2226547c1f94f431febc9f89e9f6b97ec660f0e1f91219b2` |
| 9 | `theorem` | [taylorDescent](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/taylordescent--89cdd84772eeaaee4f9584f6.md) | 95 | `result-track:89cdd84772eeaaee4f9584f66b0726bff617729ddb65d24640ba507f6b65dfe1` |
| 10 | `def` | [spectralXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/spectralxi--471ee36ca2b048fe1928dce3.md) | 99 | `declaration-track:471ee36ca2b048fe1928dce31b103a5ce4488a26319d3ad0fe055f085393e671` |
| 11 | `def` | [spectralSection](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/spectralsection--f1168dc17cd151f6f736204c.md) | 102 | `declaration-track:f1168dc17cd151f6f736204c48a5e4d9b03888ab8426538e2954825655c5fd91` |
| 12 | `theorem` | [centeredSeries_spectral](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/centeredseries-spectral--b3d093469ef6b1feb54c942c.md) | 106 | `result-track:b3d093469ef6b1feb54c942c7c362b8d10bae024ab331b48199a0a8d08639ee7` |
| 13 | `theorem` | [spectralXi_zero_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/spectralxi-zero-ne--99755bb46c55ac3ca61653c3.md) | 111 | `result-track:99755bb46c55ac3ca61653c3bb93d6b667f3f936492f7b82b263876b9e633f70` |
| 14 | `theorem` | [spectralSection_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/spectralsection-uniform--f0110a98a98dec749fa00f89.md) | 118 | `result-track:f0110a98a98dec749fa00f89b3ab92bcf7516400d1c0c56e32c8c8e4b47c8b4a` |
| 15 | `theorem` | [spectralSection_locallyUniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Variant1090d6a9304de33dbaa1e35453f0266ea629d5b4980be2757f671293be339685.lean/declarations/spectralsection-locallyuniform--f3ff901c194e4df65cf168c5.md) | 140 | `result-track:f3ff901c194e4df65cf168c53a7572f28b06fa3a76429261a58be1f50d98a82e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
