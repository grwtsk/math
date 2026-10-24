# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.XiTaylorTransport.Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4831fdc3947eb8752c9b84c31cc345e5a4599d6f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4831fdc3947eb8752c9b84c31cc345e5a4599d6f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gammaReal_conjugation](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/gammareal-conjugation--c6fd91b5cf36c29611f55813.md) | 39 | `result-track:c6fd91b5cf36c29611f55813d8f90c20df7f1597cdc90e293f61b07168188069` |
| 2 | `theorem` | [xi_product_on_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/xi-product-on-right--e75a5927116a24043016e003.md) | 51 | `result-track:e75a5927116a24043016e003e9ce36eeb7394252b471ec9dc17a16ed4a538408` |
| 3 | `theorem` | [xi_conjugation](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/xi-conjugation--e3b029f0d2079d8a7b1dfb31.md) | 61 | `result-track:e3b029f0d2079d8a7b1dfb317562f826d983117ca91a2e4538a566b57469b70c` |
| 4 | `theorem` | [iteratedDeriv_conjugate_function](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/iteratedderiv-conjugate-function--874dcc212856232dfb91b292.md) | 80 | `result-track:874dcc212856232dfb91b2928614c57e598a048917747b3f087044ea40ebd925` |
| 5 | `theorem` | [xi_derivative_center_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/xi-derivative-center-real--15ed7f81c9823468ea6850f5.md) | 88 | `result-track:15ed7f81c9823468ea6850f5b3972cb07bf1d13d8803f5fdbf4dc4ecfc951ec1` |
| 6 | `theorem` | [xi_odd_derivative_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/xi-odd-derivative-center--75d4c7ec08e909918da5c306.md) | 99 | `result-track:75d4c7ec08e909918da5c306bcd5c066cb96d1a22d2251a9f048e8264b06b3f2` |
| 7 | `theorem` | [coefficient_as_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/coefficient-as-complex--675654674bf6c0b1f1ccf088.md) | 115 | `result-track:675654674bf6c0b1f1ccf08804f202496a64dfb8c9673e6c6e58059d21e98607` |
| 8 | `theorem` | [hasSum_full_centered_taylor](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/hassum-full-centered-taylor--261ce79b0c2bc9a2e020bc7f.md) | 125 | `result-track:261ce79b0c2bc9a2e020bc7ff2e00dfba4dfcbcbe72e7f4fbdc1199a0d05fa50` |
| 9 | `theorem` | [even_index_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/even-index-injective--93bbefd614c6563133979505.md) | 136 | `result-track:93bbefd614c6563133979505ac4373ffa9a3eb37903a1483a628391b50abe088` |
| 10 | `theorem` | [taylor_term_zero_off_even](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/taylor-term-zero-off-even--a98791e66d859f99d1d0b0a8.md) | 141 | `result-track:a98791e66d859f99d1d0b0a8610b2f3b612bae9809dddac0e4ac1b54e41211ab` |
| 11 | `theorem` | [hasSum_centered_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/hassum-centered-square--ce9731ae6c89fef85576b3e1.md) | 151 | `result-track:ce9731ae6c89fef85576b3e1ac0d0cd5188ff9139f0001e4c48755ac1bdfc4d2` |
| 12 | `theorem` | [exists_complex_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/exists-complex-square--dedb8b09640cdc5c850a6374.md) | 167 | `result-track:dedb8b09640cdc5c850a6374badff0b8644d5160bbf31bae6ebed3f7fecf5064` |
| 13 | `theorem` | [centeredSeries_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredseries-summable--f0fb3c6c926bc1e049413d74.md) | 171 | `result-track:f0fb3c6c926bc1e049413d743981b9a8017a21afc19c7cbf638100a795f8f4ea` |
| 14 | `def` | [centeredPowerSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredpowerseries--77bdde05a68c4554b009243f.md) | 177 | `declaration-track:77bdde05a68c4554b009243f4c2382b6ed59ca867d169634fc168c089e836991` |
| 15 | `theorem` | [centeredPowerSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredpowerseries-radius--5487117b818850d170da5a92.md) | 181 | `result-track:5487117b818850d170da5a92868f8a9d8464e91e3e48448c2f23ab329956a1d1` |
| 16 | `theorem` | [centeredPowerSeries_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredpowerseries-sum--2e0b3ff259500fcedb4db6de.md) | 190 | `result-track:2e0b3ff259500fcedb4db6de990bb56abd3f10f5602badd179e4859b3b8709ec` |
| 17 | `theorem` | [differentiable_centeredSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/differentiable-centeredseries--3438fe0008405415e29a73d6.md) | 198 | `result-track:3438fe0008405415e29a73d6b41a403c219ed2140e4e00069f7d18f5bd8144a1` |
| 18 | `theorem` | [centeredSeries_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredseries-square--839672612389f532f0f8b1d7.md) | 207 | `result-track:839672612389f532f0f8b1d723f2faf0681f3102bee45983f34e816348a75b2f` |
| 19 | `theorem` | [taylorDescent](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/taylordescent--19ee336678f6b9c13f103b40.md) | 211 | `result-track:19ee336678f6b9c13f103b40f020ebf6f9eea594457186b33d76f44cf572d1e0` |
| 20 | `theorem` | [centeredSeries_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/declarations/centeredseries-zero--80e6678691cf424be2b0a52f.md) | 215 | `result-track:80e6678691cf424be2b0a52f8fbc7ab17c73d409bf33fe5d5f69d5e51ee02bfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
