# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainLiteralCheck.Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a0c3958f09d3ddc83cdb0ec7f1476c5d25b5b10",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a0c3958f09d3ddc83cdb0ec7f1476c5d25b5b10`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindercore--e1dfd80d6b8df0f4f4f2d6f8.md) | 24 | `declaration-track:e1dfd80d6b8df0f4f4f2d6f8d03ec80c8a29f002e467907516acecb1306c11b5` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindercore-measurable--965333bc84b9b2c1d870d167.md) | 30 | `result-track:965333bc84b9b2c1d870d1676c9fe847242af8663b85344e5c689e88b01a51e1` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindercore-sq-le--e3926ce2456e2a1b42f4425b.md) | 42 | `result-track:e3926ce2456e2a1b42f4425b291dda053a08be01fb09dddad6406709f541c578` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/remaindermajorant-integrable--fbdc661667528f01bdd39fdf.md) | 71 | `result-track:fbdc661667528f01bdd39fdf2baef443a0e06a2d2f47aa40f4a4c6b3d574b601` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindercore-memlp--4c72486ccd0c1416aa4a64e9.md) | 78 | `result-track:4c72486ccd0c1416aa4a64e90166bcde90f80c1edb5d4e000d70a10cca4191ce` |
| 6 | `def` | [divisorRemainderVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindervector--8913f6b9f8f444c25d315be3.md) | 89 | `declaration-track:8913f6b9f8f444c25d315be353f207e6f88a70bb8868d349f93cbbbd08b47ec8` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisorremaindervector-norm-le--b751c5a593982256298e276a.md) | 93 | `result-track:b751c5a593982256298e276a8c4e3d46e099c935bb4e76c378589a671d185e01` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/sourcemultiplier-divisorremainder-norm-le--4766a562ef80ddf9f339d936.md) | 116 | `result-track:4766a562ef80ddf9f339d936410ba97506ed63a61d579d97f27612fdb1b45be3` |
| 9 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisormainresidual--2819120b732a2f542b9a5cc9.md) | 141 | `declaration-track:2819120b732a2f542b9a5cc9d80e779ebd82f46b45482e705fb274fe7b623daf` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/arithmeticresidual-eq-main-sub-remainder--bcce5549e2dad100e931a688.md) | 151 | `result-track:bcce5549e2dad100e931a6884d5d5d074df4dabaae8da254a7e4794c04669fbe` |
| 11 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisormaincore--485b6cae4558f514a14bc7c9.md) | 162 | `declaration-track:485b6cae4558f514a14bc7c970d5fedea4e4cb6231b2ee01e1bfe31d4b96000f` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/maincore-eq-add--afac5d6ead3e074232859dea.md) | 166 | `result-track:afac5d6ead3e074232859dead0586005845504806e04c832d3b4860d7b78bd72` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisormaincore-memlp--efb30296c404e5036e116595.md) | 181 | `result-track:efb30296c404e5036e116595959d98cf82620347e3dba8ccfe2fb039493cd3d3` |
| 14 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/divisormainvector--b6f5d17ae233dc75e12000ba.md) | 189 | `declaration-track:b6f5d17ae233dc75e12000bacbf4641bd3e11994edf37900d1d597870656556a` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/mainvector-eq-add--1b3852804123657392738140.md) | 193 | `result-track:1b38528041236573927381407befccfa5b303a9568ceb4616a6a884a3c40adfc` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/filtered-core-main-norm-difference-le--e797e05411f0b3683ba3afb3.md) | 211 | `result-track:e797e05411f0b3683ba3afb3b8657ca3539a5887111c1d1084969944eadaca1f` |
| 17 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--50196e905cb54d7ebd3032cf.md) | 238 | `declaration-track:50196e905cb54d7ebd3032cf2534e9c462e74b258745a9433efa295915357374` |
| 18 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--cf0e90e7fdc4d87bce685fbf.md) | 246 | `declaration-track:cf0e90e7fdc4d87bce685fbf8cae0eeab27e181071a156d17c374984b3a46fcc` |
| 19 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--0d408f8c02a92c40be484fd9.md) | 252 | `declaration-track:0d408f8c02a92c40be484fd982f3e64d572226e7527684cf63f093077f69120b` |
| 20 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--b5e967b242df950b28c59a7c.md) | 256 | `declaration-track:b5e967b242df950b28c59a7c540bf2f8d69f402f2520dac85e0dd5797d19c9d2` |
| 21 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--6f395c0368d679005132cc97.md) | 259 | `declaration-track:6f395c0368d679005132cc9722822b33f82fffa5f9d20369cbd26823c2e655a2` |
| 22 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variant8e651a00bca4cb5afc3db0faa3066cecdc26937ea521c2415cdcc24dc69d2ba5.lean/declarations/example--2a2f607cfeb0a3374dc4c186.md) | 263 | `declaration-track:2a2f607cfeb0a3374dc4c18677e7f4dbd4d4fa3143d759a39cc5a8d0320004b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
