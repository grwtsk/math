# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuaternionExponential.Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15287878301247a7d9c50e40de784564e2c8c5ea",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15287878301247a7d9c50e40de784564e2c8c5ea`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Quaternion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/exp-coe--43fa3f34f60faff1175e5cd5.md) | 40 | `result-track:43fa3f34f60faff1175e5cd58f34530485553c40cd4c781e049de075b9571cff` |
| 2 | `theorem` | [expSeries_even_of_imaginary](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/expseries-even-of-imaginary--b4fbf60833049321ffaaa513.md) | 44 | `result-track:b4fbf60833049321ffaaa513ea4b365272a4eeeebec89e0e79ec3a3eeeade272` |
| 3 | `theorem` | [expSeries_odd_of_imaginary](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/expseries-odd-of-imaginary--123fe7bcacea8b62cb5da8bf.md) | 64 | `result-track:123fe7bcacea8b62cb5da8bfa37738edc424c5b0880e06a6fbcd2725c55f4643` |
| 4 | `theorem` | [hasSum_expSeries_of_imaginary](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/hassum-expseries-of-imaginary--091c31ad54fed74e9c820703.md) | 87 | `result-track:091c31ad54fed74e9c8207033f9d28358513e15abe669ffab413503b7c652eb6` |
| 5 | `theorem` | [exp_of_re_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/exp-of-re-eq-zero--86463f565fb6e83d813b014a.md) | 102 | `result-track:86463f565fb6e83d813b014a8eca88fa8a50abf3a5e983868f57a1e459bdda94` |
| 6 | `theorem` | [exp_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/exp-eq--cabe05f00a4ea0b99d2c188c.md) | 110 | `result-track:cabe05f00a4ea0b99d2c188c3cb7b7234539c472cf2e6c4a855d2050e4430adf` |
| 7 | `theorem` | [re_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/re-exp--b38ccfc31d1e32057aed21a6.md) | 116 | `result-track:b38ccfc31d1e32057aed21a6898c0b8d1cf1f51728420dc4fe931340384a3b27` |
| 8 | `theorem` | [im_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/im-exp--fe7319b43a68c288acaa2201.md) | 118 | `result-track:fe7319b43a68c288acaa22017e6f37cd5ea97d3336af78787287daa887d22814` |
| 9 | `theorem` | [normSq_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/normsq-exp--cc4a6a8ff400c8d1f6602b25.md) | 121 | `result-track:cc4a6a8ff400c8d1f6602b25de8348b1a32285c9ddca16b21d6d490b8660f0fb` |
| 10 | `theorem` | [norm_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/declarations/norm-exp--aa08c4631b13d1ecd77c4a98.md) | 140 | `result-track:aa08c4631b13d1ecd77c4a98c37b2fc3073671e8a2c085cddd6586c3e3d1ba23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
