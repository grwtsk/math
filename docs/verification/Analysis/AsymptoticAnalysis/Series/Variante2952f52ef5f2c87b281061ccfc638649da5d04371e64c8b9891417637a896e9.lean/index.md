# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20aa3042235b703f5873c224ffaa562fcf8dd140",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20aa3042235b703f5873c224ffaa562fcf8dd140`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Trigonometric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.hasSum_cos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-hassum-cos--8b056387f297525cb9f139a3.md) | 39 | `result-track:8b056387f297525cb9f139a3ddcbce8398923951b1724fa0e0a154333b4ae6c6` |
| 2 | `theorem` | [Complex.hasSum_sin'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-hassum-sin--40a07ac8804c34ad46e6928d.md) | 55 | `result-track:40a07ac8804c34ad46e6928da3472ad999595a24fa78d21d29f25039abb5deef` |
| 3 | `theorem` | [Complex.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-hassum-cos--05e9bfcfb59370ce1686384e.md) | 73 | `result-track:05e9bfcfb59370ce1686384e66c7b0c6cabb3cf09322b751648cb9930ae290d9` |
| 4 | `theorem` | [Complex.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-hassum-sin--386b6b38fa86490c572762e0.md) | 79 | `result-track:386b6b38fa86490c572762e020ce9916242408e672575734fc5442e0403ce542` |
| 5 | `theorem` | [Complex.cos_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-cos-eq-tsum--4fc5638c7444fce44cdb3c0b.md) | 85 | `result-track:4fc5638c7444fce44cdb3c0bb0938741e312f86e8ffa2d07fb05eeb446c13415` |
| 6 | `theorem` | [Complex.sin_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-sin-eq-tsum--1773d4d4967fdfe686e8268a.md) | 89 | `result-track:1773d4d4967fdfe686e8268a31eaa7c7d0d2e9d67022a5126b7f5e337f28ba5b` |
| 7 | `theorem` | [Complex.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-cos-eq-tsum--0b5478a0c45d81193327ac05.md) | 93 | `result-track:0b5478a0c45d81193327ac0583c528873d62a9e736e5c87eff6c679738a27feb` |
| 8 | `theorem` | [Complex.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/complex-sin-eq-tsum--0361a31ef5ed751a3cca735f.md) | 97 | `result-track:0361a31ef5ed751a3cca735f10b096301a0321018ab1fc78efd7b715b9342720` |
| 9 | `theorem` | [Real.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/real-hassum-cos--3b06b127d3687c59dbf79318.md) | 102 | `result-track:3b06b127d3687c59dbf7931872c6fd77e1495b4900f53b314a562e6493f3121d` |
| 10 | `theorem` | [Real.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/real-hassum-sin--940111c36df36a8d960fcc7d.md) | 107 | `result-track:940111c36df36a8d960fcc7d3217bfde33faf30ee897dc2c9a4ee222e711d6b2` |
| 11 | `theorem` | [Real.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/real-cos-eq-tsum--282c27e1e966e49371bc69de.md) | 111 | `result-track:282c27e1e966e49371bc69de26167b6942541703563a8df937f7d833fe595e25` |
| 12 | `theorem` | [Real.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/real-sin-eq-tsum--44b2d53383bbd1ceef705b5b.md) | 114 | `result-track:44b2d53383bbd1ceef705b5b0425f78fc0f218d276a96e5f13e636041938330f` |
| 13 | `lemma` | [hasSum_cosh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/hassum-cosh--11f89357179e48ca29f681b2.md) | 126 | `result-track:11f89357179e48ca29f681b24c1e7c1afc5f63351c2ed1e716df5ba9eb7c3488` |
| 14 | `lemma` | [hasSum_sinh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/hassum-sinh--98b2bfea7027f6a59a5fcad2.md) | 130 | `result-track:98b2bfea7027f6a59a5fcad217d51db68115d466119a48441b9bc25ecd77d09f` |
| 15 | `lemma` | [cosh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/cosh-eq-tsum--45359de55b258749a6070b92.md) | 134 | `result-track:45359de55b258749a6070b92738416cc88c502e0ca2a7aab1349bb7cdb656b09` |
| 16 | `lemma` | [sinh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/sinh-eq-tsum--66e0c5fa4e20cca0a33595a4.md) | 136 | `result-track:66e0c5fa4e20cca0a33595a4103e43806868dadf0a18dcb0d3faccb72835a753` |
| 17 | `lemma` | [hasSum_cosh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/hassum-cosh--af3801f82866b6a7ade8acf5.md) | 144 | `result-track:af3801f82866b6a7ade8acf592bc45c9e80ced2ac0acfa52024110249957497d` |
| 18 | `lemma` | [hasSum_sinh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/hassum-sinh--10aee151837afcaa3b67fdb5.md) | 148 | `result-track:10aee151837afcaa3b67fdb58ebea614385d64d86581c4b2e582528c3e74ef7f` |
| 19 | `lemma` | [cosh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/cosh-eq-tsum--0174f3bc95fe403886e4ce5b.md) | 151 | `result-track:0174f3bc95fe403886e4ce5bf4f5bdf45941df6e4977b0390197c89ec42eda4c` |
| 20 | `lemma` | [sinh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/sinh-eq-tsum--ae8324ed68101650e00fd389.md) | 153 | `result-track:ae8324ed68101650e00fd3895dfbe809d5099f50c2026d3a3b94caeb12b7ab11` |
| 21 | `lemma` | [cosh_le_exp_half_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variante2952f52ef5f2c87b281061ccfc638649da5d04371e64c8b9891417637a896e9.lean/declarations/cosh-le-exp-half-sq--7a63ffbc1a6da48c5fc42398.md) | 156 | `result-track:7a63ffbc1a6da48c5fc423986aa03cc0d96d1a1308e97c49b8e1660a75fe6f5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
