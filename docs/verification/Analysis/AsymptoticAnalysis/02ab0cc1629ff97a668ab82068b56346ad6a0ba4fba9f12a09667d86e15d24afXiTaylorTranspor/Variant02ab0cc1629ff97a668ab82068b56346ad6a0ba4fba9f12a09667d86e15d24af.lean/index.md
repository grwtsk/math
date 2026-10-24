# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor.Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0037b2ee5d16af481772cbdeed2ee05e1ff673",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0037b2ee5d16af481772cbdeed2ee05e1ff673`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gammaReal_conjugation](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/gammareal-conjugation--1e05427bcbaa2c401df7749d.md) | 31 | `result-track:1e05427bcbaa2c401df7749d9062c764055354af19857e59dc0c7cdaa72e89c5` |
| 2 | `theorem` | [xi_product_on_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/xi-product-on-right--91f8773d448dd33ee4e9eb8c.md) | 43 | `result-track:91f8773d448dd33ee4e9eb8c532240668b53303e621a02f2c494efd9bf3db0cb` |
| 3 | `theorem` | [xi_conjugation](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/xi-conjugation--a15ce5d3da1931b2f53bc1bf.md) | 53 | `result-track:a15ce5d3da1931b2f53bc1bff63b4fb65b7d0beef35e4a561ce3e16af275b9fe` |
| 4 | `theorem` | [iteratedDeriv_conjugate_function](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/iteratedderiv-conjugate-function--e197de3937f59f7c23ec935c.md) | 72 | `result-track:e197de3937f59f7c23ec935cfda751819dc977cf05e9cb559d653b8808dd9be5` |
| 5 | `theorem` | [xi_derivative_center_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/xi-derivative-center-real--6291c8a77517be1003883c52.md) | 80 | `result-track:6291c8a77517be1003883c52e3f076620553feaa8f9e0c7ac849accf455773f8` |
| 6 | `theorem` | [xi_odd_derivative_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/xi-odd-derivative-center--5774030e393d07595730e36a.md) | 91 | `result-track:5774030e393d07595730e36a942efe35e0dbf4b32127e2982343f5cfd6ac242e` |
| 7 | `theorem` | [coefficient_as_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/coefficient-as-complex--ab00f8cb5c517dbffd1cf3a1.md) | 107 | `result-track:ab00f8cb5c517dbffd1cf3a1c1e4738076de871b280119f2ace6e9cdaeb11e5e` |
| 8 | `theorem` | [hasSum_full_centered_taylor](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/hassum-full-centered-taylor--fd5a28b7b344f729e952f72c.md) | 117 | `result-track:fd5a28b7b344f729e952f72c8876d810aa9109b14cd977438aa3e9c70a14fc78` |
| 9 | `theorem` | [even_index_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/even-index-injective--e56b73d5cee53680eb3957d3.md) | 128 | `result-track:e56b73d5cee53680eb3957d35e1a46ac3867a7e15dc770ffcadd55bcd2934296` |
| 10 | `theorem` | [taylor_term_zero_off_even](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/taylor-term-zero-off-even--a6b3d7221776a412c9d838de.md) | 134 | `result-track:a6b3d7221776a412c9d838dea55f12564d50765f26f5660b8dccfc76aa13176b` |
| 11 | `theorem` | [hasSum_centered_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/hassum-centered-square--7597ce0466623e9881f298ac.md) | 144 | `result-track:7597ce0466623e9881f298ac95b2e8b2ea9d5fb95324d529891a2f889eb058f5` |
| 12 | `theorem` | [exists_complex_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/exists-complex-square--6790ae6dd8cb9cdab72e11f9.md) | 160 | `result-track:6790ae6dd8cb9cdab72e11f902ed4e9d8414f6a6a50e810853a6c72a64a6bbab` |
| 13 | `theorem` | [centeredSeries_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredseries-summable--912a5be88a8411f47eccb12d.md) | 164 | `result-track:912a5be88a8411f47eccb12dbdfe462b78c48e499f404bd4c4f58c1a664a71ca` |
| 14 | `def` | [centeredPowerSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredpowerseries--2320bc2d2fbcf8cd4edacafe.md) | 170 | `declaration-track:2320bc2d2fbcf8cd4edacafe079e299781d17382dd0d762e9ff09d298e308bcb` |
| 15 | `theorem` | [centeredPowerSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredpowerseries-radius--ada2f7dd45e92b607a78695c.md) | 174 | `result-track:ada2f7dd45e92b607a78695ca043d5ccffbe29697d1a1e8dba9a38581ac9cf60` |
| 16 | `theorem` | [centeredPowerSeries_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredpowerseries-sum--faa96bb699524109c6358181.md) | 183 | `result-track:faa96bb699524109c6358181babd66b3167dca70038e18345c294e1ced0766f3` |
| 17 | `theorem` | [differentiable_centeredSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/differentiable-centeredseries--62f9f331623bd2b48f48c48b.md) | 191 | `result-track:62f9f331623bd2b48f48c48bdb1ee7484afe32aba46cb03950c78eff5a5af801` |
| 18 | `theorem` | [centeredSeries_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredseries-square--f0d4ce9b41b9d358bdd753f6.md) | 200 | `result-track:f0d4ce9b41b9d358bdd753f65ccb57dc67f6d91749e2cdc0c883a406a404f014` |
| 19 | `theorem` | [taylorDescent](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/taylordescent--e048237b540f8824e206241d.md) | 204 | `result-track:e048237b540f8824e206241d938a68c9d135ff580892b499eff3bd3aa04995b9` |
| 20 | `theorem` | [centeredSeries_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24af.lean/declarations/centeredseries-zero--861444d559c10971decc11a7.md) | 208 | `result-track:861444d559c10971decc11a711365c0d16c7654f5ffc2dbb1558ef8cce9a5407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
