# Verification target: GRWTSK.Analysis.Series.HeightCountingTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/index.md) · [Full source](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710`.

Source path: `GRWTSK/Analysis/Series/HeightCountingTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Series/HeightCountingTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCountingMass](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finitecountingmass--d89ac6aea4fbabf79a4ed014.md) | 42 | `declaration-track:d89ac6aea4fbabf79a4ed0144ebd68bd47a72753997864131eb5a2a62e512adf` |
| 2 | `def` | [inverseSquareBudget](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/inversesquarebudget--6e962c4e4cbb2a58b64dad43.md) | 47 | `declaration-track:6e962c4e4cbb2a58b64dad4346585b6a605bc690d8eaf279fc7d1bdfbffe6567` |
| 3 | `theorem` | [finiteCountingMass_eq_total](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finitecountingmass-eq-total--a6239815a18580ab8ac27442.md) | 49 | `result-track:a6239815a18580ab8ac2744213bc66f7814059a04294acad63cdf677f6366d07` |
| 4 | `theorem` | [finiteCountingMass_map](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finitecountingmass-map--0182f839a9d2d2e2702156bb.md) | 57 | `result-track:0182f839a9d2d2e2702156bbde38cdeb006f1ce9f8082ddfbb91f9f94419e38b` |
| 5 | `theorem` | [finiteCountingMass_le_cover](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finitecountingmass-le-cover--00753394d9d078df8f817c86.md) | 66 | `result-track:00753394d9d078df8f817c86a0ec7387022255f6e2915ea2ae64f39a038dbe4c` |
| 6 | `theorem` | [inverseCube_continuousOn](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/inversecube-continuouson--ce8ad6ed8ac5b40f3c6c0eda.md) | 75 | `result-track:ce8ad6ed8ac5b40f3c6c0edae11d9092ebe624d421e5fa834b0eb66cfe7b8634` |
| 7 | `theorem` | [integral_inverseCube](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/integral-inversecube--2254a26589b11802dec0a19f.md) | 83 | `result-track:2254a26589b11802dec0a19faf4b50366930c0ea000a24875f445c3b0081a991` |
| 8 | `theorem` | [logDensity_continuousOn](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/logdensity-continuouson--b4dd845181f8a2d10f4a2783.md) | 100 | `result-track:b4dd845181f8a2d10f4a27838551101c4400df30a17082b5a246c489c5d0e71d` |
| 9 | `theorem` | [integral_logDensity](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/integral-logdensity--5a7d401c000e01d9b5f37227.md) | 109 | `result-track:5a7d401c000e01d9b5f37227cafecd408a2788e02525f28fdfa77b92d1ab216f` |
| 10 | `theorem` | [countingDensity_eq_sum](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/countingdensity-eq-sum--2af0e1985510def18a308574.md) | 127 | `result-track:2af0e1985510def18a308574231c97a36aa0986a1ec0207e52e5e583c55c4674` |
| 11 | `theorem` | [stepDensity_intervalIntegrable](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/stepdensity-intervalintegrable--467863cc05a8d59b37511110.md) | 137 | `result-track:467863cc05a8d59b37511110e2cda00aeebbd79211cb4d69d43e5c1b1ca48da0` |
| 12 | `theorem` | [countingDensity_intervalIntegrable](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/countingdensity-intervalintegrable--17ed61f7cf41bb27056c4776.md) | 150 | `result-track:17ed61f7cf41bb27056c477680442e7f16130f34ff21ad30c21803dbeccfbe1a` |
| 13 | `theorem` | [finite_inverseSquare_identity](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finite-inversesquare-identity--993c1765b9502b6fd88e88e6.md) | 165 | `result-track:993c1765b9502b6fd88e88e6695a8f73467b9c8e37696f91830e80d4a502e3f8` |
| 14 | `theorem` | [finite_inverseSquare_le_with_boundary](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finite-inversesquare-le-with-boundary--8964afabc8c4c3d10d6a684e.md) | 204 | `result-track:8964afabc8c4c3d10d6a684ef4cbe6c1367bd7b23242ff4a66168bd3dc790db1` |
| 15 | `theorem` | [finite_height_upper](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finite-height-upper--541ee7853e61bd56b16a911a.md) | 233 | `result-track:541ee7853e61bd56b16a911a8ca52de2b6ea06d72af2d3afd0a1bdfcd5a830f0` |
| 16 | `theorem` | [finite_inverseSquare_le](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/finite-inversesquare-le--d783e95ddd3261058299ae0b.md) | 247 | `result-track:d783e95ddd3261058299ae0bd742ae1ce695554fb9e428b305e9b98f4425e0c7` |
| 17 | `theorem` | [inverseSquare_summable_and_bound](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/inversesquare-summable-and-bound--df5690d362fa574b2f09db6e.md) | 263 | `result-track:df5690d362fa574b2f09db6ef12baed18118cc7f6de8998257701b0ec5fdef47` |
| 18 | `theorem` | [dominated_family_summable_and_bound](../../../../mathematics/Analysis/Series/HeightCountingTail.lean/declarations/dominated-family-summable-and-bound--048e2877fda53364345dcbce.md) | 278 | `result-track:048e2877fda53364345dcbceff1c8233dc52c954777d57a56565eac61c12348c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
