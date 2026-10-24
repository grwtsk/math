# Verification target: GRWTSK.Analysis.Real.CubicEulerMaclaurin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47883a7af5b108dddc7303c6a48db4c51b7fde32",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47883a7af5b108dddc7303c6a48db4c51b7fde32`.

Source path: `GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/CubicEulerMaclaurin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [first](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/first--d48af8c88d5fb01af9405cf0.md) | 33 | `declaration-track:d48af8c88d5fb01af9405cf0a596939452236c92c1c96ba5f581168e3dfd87e0` |
| 2 | `def` | [second](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/second--d150437b6fe294e815c2c31d.md) | 36 | `declaration-track:d150437b6fe294e815c2c31d906d26556b9fe1b37a23dfd13b763c7b14d0da82` |
| 3 | `def` | [third](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/third--6470499c1a957906bfcd6af7.md) | 39 | `declaration-track:6470499c1a957906bfcd6af7b984e74e0e366ee2b10dd4cc6a2ecd240faa0ca3` |
| 4 | `theorem` | [first_zero](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/first-zero--df06ee144a12bcf83bfa17cb.md) | 41 | `result-track:df06ee144a12bcf83bfa17cb2ecf01b304223546a56ffd3959b3a7434b347872` |
| 5 | `theorem` | [first_one](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/first-one--d55bd791e65f3fe53ed742b3.md) | 42 | `result-track:d55bd791e65f3fe53ed742b304997a87032e8f461336de710ee5010ee115b546` |
| 6 | `theorem` | [second_zero](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/second-zero--7671850ac1a827ffa14c2d80.md) | 43 | `result-track:7671850ac1a827ffa14c2d80d1bb2cf6079f4bf6419ee60d21b73a5af0233893` |
| 7 | `theorem` | [second_one](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/second-one--ae4cdd0fba34733eaef20f55.md) | 44 | `result-track:ae4cdd0fba34733eaef20f55a9a3d77e51e729cf82402d753c166eb06ddb9d6e` |
| 8 | `theorem` | [third_zero](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/third-zero--462edb6d44af54c8a91de2ce.md) | 45 | `result-track:462edb6d44af54c8a91de2ce815a3688850e1559c460934fbab84e47d17075fc` |
| 9 | `theorem` | [third_one](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/third-one--297713968c92c6bdf64c9045.md) | 46 | `result-track:297713968c92c6bdf64c90452422b0c3638b07c884334707d73d0ab7f3894202` |
| 10 | `theorem` | [hasDerivAt_first](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/hasderivat-first--6cb01165464dcd0a01498723.md) | 48 | `result-track:6cb01165464dcd0a014987238b4e53d8a7c27dc591d2400bf43cc3446733d7d3` |
| 11 | `theorem` | [hasDerivAt_second](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/hasderivat-second--fbf29c33e1d8a3200ba55d4c.md) | 51 | `result-track:fbf29c33e1d8a3200ba55d4cdd137f4808d01c05c43245845f917614ee9bcc19` |
| 12 | `theorem` | [hasDerivAt_third](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/hasderivat-third--3bef1ec44be14ca9e6b7bf35.md) | 55 | `result-track:3bef1ec44be14ca9e6b7bf3519a4174b861146b3177df0df86bcb3024f5f7fba` |
| 13 | `theorem` | [abs_third_le](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/abs-third-le--d44c2699d3f010b89cd1e0ea.md) | 61 | `result-track:d44c2699d3f010b89cd1e0eae779d38c8157391b262fb398f77abc16befb3ae2` |
| 14 | `theorem` | [third_reflection](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/third-reflection--96c782eab821c9e8fb5b21ee.md) | 72 | `result-track:96c782eab821c9e8fb5b21ee415a241b4fc518473d562560d9e8d3f943817dba` |
| 15 | `theorem` | [hasDerivAt_combined](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/hasderivat-combined--4d703ca526d18261b1926aec.md) | 75 | `result-track:4d703ca526d18261b1926aec663caba0228256404a0af11c933ea9fa1935783e` |
| 16 | `theorem` | [one_cell](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/one-cell--e8952ce0c905838a05fd6e77.md) | 90 | `result-track:e8952ce0c905838a05fd6e77e8f4033b084ad4026af631bf4d84e3189bffb6c0` |
| 17 | `theorem` | [finite_cells](../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/declarations/finite-cells--4f46f998e8f8f214ef046693.md) | 121 | `result-track:4f46f998e8f8f214ef04669366adaa44a5f212dfa5ce314194ce00ee1e504f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
