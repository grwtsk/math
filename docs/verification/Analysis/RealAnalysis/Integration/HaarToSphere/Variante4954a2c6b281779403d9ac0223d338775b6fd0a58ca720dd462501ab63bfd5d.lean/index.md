# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HaarToSphere.Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02354405954f6feba59092dfb320cfeb43cb3745`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.SphereNormEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSphere](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere--28d571f3e445f6abfaa4cf48.md) | 43 | `declaration-track:28d571f3e445f6abfaa4cf4846cda2577fe64d7e77b113098fcfcf3a28188cb6` |
| 2 | `theorem` | [toSphere_apply_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere-apply-aux--20b2ae5707f933964c41909e.md) | 49 | `result-track:20b2ae5707f933964c41909ebe7bddb4326e62e040872fc0ab59c47122d2dd96` |
| 3 | `theorem` | [toSphere_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere-apply--0fca5ba75eb492225500e193.md) | 57 | `result-track:0fca5ba75eb492225500e193e9db21cab53509c5759d246863af55a764ed55e9` |
| 4 | `theorem` | [toSphere_apply_univ'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere-apply-univ--cc52ceebb88269916b953f73.md) | 64 | `result-track:cc52ceebb88269916b953f7397f63fe16badd9e89614caa865e26adacfc984eb` |
| 5 | `theorem` | [toSphere_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere-apply-univ--acbbf439f5a1be193018c190.md) | 70 | `result-track:acbbf439f5a1be193018c190a7889206ce7d3de3e13e5c1627f83476e9518e38` |
| 6 | `theorem` | [toSphere_real_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/tosphere-real-apply-univ--9038e5f619c2b7c9f7d11188.md) | 75 | `result-track:9038e5f619c2b7c9f7d1118876eb68e766d8f289d19ef86087d43982531063ba` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/instance--e1faf3b3c085a93afe1a16ca.md) | 78 | `declaration-track:e1faf3b3c085a93afe1a16ca1e2e16e1f5bdae2594c3a1cf446117313fcd4ec7` |
| 8 | `def` | [volumeIoiPow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/volumeioipow--e2961accf685cc374dfef70d.md) | 85 | `declaration-track:e2961accf685cc374dfef70dbf5a7129605f7a5f5fb1d2f2dc830ae3a6cbc56b` |
| 9 | `lemma` | [volumeIoiPow_apply_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/volumeioipow-apply-iio--ee357a80a3ed6c4a21c70a0c.md) | 88 | `result-track:ee357a80a3ed6c4a21c70a0ce3c8ff8353417aa799cfac12e486d9b7de7e3e38` |
| 10 | `def` | [finiteSpanningSetsIn_volumeIoiPow_range_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/finitespanningsetsin-volumeioipow-range-iio--8e4d3f96deb9c4ff3954e3b7.md) | 101 | `declaration-track:8e4d3f96deb9c4ff3954e3b762cb524088b9b971203657ad8d773ce2ab75377a` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/instance--6b8a71456eceb35a3242564a.md) | 108 | `declaration-track:6b8a71456eceb35a3242564ab609a0f5ab0a121b98c2bd93df2b6e4b85d0e82e` |
| 12 | `theorem` | [measurePreserving_homeomorphUnitSphereProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/measurepreserving-homeomorphunitsphereprod--5b7b4df2570db1f9c96f9bbc.md) | 114 | `result-track:5b7b4df2570db1f9c96f9bbcbd0dbb4e2741a181ed60f1f530ded2514d041e71` |
| 13 | `lemma` | [integral_fun_norm_addHaar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/declarations/integral-fun-norm-addhaar--78fe87c2fbe424a5f7c9485f.md) | 137 | `result-track:78fe87c2fbe424a5f7c9485fb6f8030a5bb74d7f3626a470a354f18562af375e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
