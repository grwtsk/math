# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Autocorrelation.Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9df70abf9ff6a31bdf001db0ea9ff82e074cefcf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9df70abf9ff6a31bdf001db0ea9ff82e074cefcf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/complexmultiplication--1f5df1c20e54cab0693658f6.md) | 37 | `declaration-track:1f5df1c20e54cab0693658f6ef912227ddeb3e641e05d15ac63659d40bfdc589` |
| 2 | `def` | [autocorrelationFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelationfun--27fb4d2c87f45c778b9f6395.md) | 44 | `declaration-track:27fb4d2c87f45c778b9f6395c8ad02b1f1ad0a9249dfc30deff88bc0a1f4a7ad` |
| 3 | `theorem` | [autocorrelationFun_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelationfun-apply--623b0a524443583df05f1553.md) | 48 | `result-track:623b0a524443583df05f155376f5eeeb548ee71dbf98e4fd068ffc17b1d0f929` |
| 4 | `def` | [autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation--8cb363c6e8b7b805e4f2314f.md) | 59 | `declaration-track:8cb363c6e8b7b805e4f2314f786dc91f6e76d3d1c28743b7dc9e4cfe85955766` |
| 5 | `theorem` | [autocorrelation_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation-apply--5ee30b8f50e3394f7c684d4b.md) | 79 | `result-track:5ee30b8f50e3394f7c684d4b554708af300fc42814dfa60989ac756e39bf7c6a` |
| 6 | `theorem` | [autocorrelation_supportRadius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation-supportradius--d1dd005b701ec7b00ac7f993.md) | 84 | `result-track:d1dd005b701ec7b00ac7f993724da1d99d7c267e08267df4926280490982abe2` |
| 7 | `theorem` | [autocorrelation_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation-neg--90b1a8ab4ff3541186758b70.md) | 90 | `result-track:90b1a8ab4ff3541186758b7059e4d898ec22ca59df76ac5ec4870323e61e7202` |
| 8 | `theorem` | [autocorrelation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation-zero--f0293032189857508a7af66f.md) | 103 | `result-track:f0293032189857508a7af66fd3d106e79b43c1669e9ec7b1cdbb343d61abf389` |
| 9 | `theorem` | [autocorrelation_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/declarations/autocorrelation-support--7b165dc51e8c0c1aa846146f.md) | 114 | `result-track:7b165dc51e8c0c1aa846146f8d72375ba2ac003dbafecbca7b36ba946c1d2b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
