# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Realization.Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9c53aa798dc2020b8b67b9e9dc64007c34d84f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9c53aa798dc2020b8b67b9e9dc64007c34d84f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/bumpinterior--904dcd20edf83baaa004f6ee.md) | 22 | `declaration-track:904dcd20edf83baaa004f6eec853eacf4082867fba06128e83a73bcebb0c0522` |
| 2 | `def` | [firstInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/firstinterior--bf46822bc8ce402c8fe98ffd.md) | 25 | `declaration-track:bf46822bc8ce402c8fe98ffd5ecbb328625f7cf47df4894a7c9874015348c1a8` |
| 3 | `def` | [secondInterior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/secondinterior--b62ebe873cf124ba1a8dca0b.md) | 30 | `declaration-track:b62ebe873cf124ba1a8dca0b862420b2559ca05f46abe5b1c49f117b50d3167d` |
| 4 | `def` | [explicitSecondDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicitsecondderivative--137f56d0e64a16f581b289a4.md) | 35 | `declaration-track:137f56d0e64a16f581b289a412abf2cfca1b1c4b9346ad8f81e1a7516cdfc89b` |
| 5 | `theorem` | [scaledBump_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/scaledbump-eq-indicator--5d9f794c6119bcf74a986745.md) | 39 | `result-track:5d9f794c6119bcf74a9867450d5a4f198a399c8aeec4f1931714c961ab5e43a4` |
| 6 | `theorem` | [bumpInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/bumpinterior-continuous--28f140b32bcd3389a2435b8b.md) | 49 | `result-track:28f140b32bcd3389a2435b8bb2aa650cc50c1164c11ff598fcc7dfbd061d0dfa` |
| 7 | `theorem` | [firstInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/firstinterior-continuous--0a1b1ed8af0c623ec3448613.md) | 54 | `result-track:0a1b1ed8af0c623ec344861346372a832ffb9cd76aabebf575dd50056012c632` |
| 8 | `theorem` | [secondInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/secondinterior-continuous--f5758fcc1ac4b4e859a2ee94.md) | 59 | `result-track:f5758fcc1ac4b4e859a2ee94b97b7ddfff81ac0072cf8b7f22377cc184c3d0a7` |
| 9 | `theorem` | [bumpInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/bumpinterior-hasderivat--f15793546bf8db1d742140fe.md) | 64 | `result-track:f15793546bf8db1d742140fed1fbecb27913b18d15c8acaec7f9d8f93a06cba9` |
| 10 | `theorem` | [firstInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/firstinterior-hasderivat--7c2824c61d74ac12644f5066.md) | 74 | `result-track:7c2824c61d74ac12644f506602f3b51a7e12a62af5e1472827e8ca2513cbe0ad` |
| 11 | `theorem` | [bumpInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/bumpinterior-endpoints--ad5a6af016ca1fc64fa258eb.md) | 86 | `result-track:ad5a6af016ca1fc64fa258eb42d5aab9b9da3bfc73644354378c42fb325e32fa` |
| 12 | `theorem` | [firstInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/firstinterior-endpoints--6a987dbc98d97f0545bb710c.md) | 91 | `result-track:6a987dbc98d97f0545bb710c3b16496b5e35c8f461737c7f71aa5ec2e79ae2a9` |
| 13 | `theorem` | [secondInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/secondinterior-endpoints--569c93d9bb6f9756162d1093.md) | 96 | `result-track:569c93d9bb6f9756162d10931ed5b233ea8f7d93c6d748d1381ad3de1ca5eb87` |
| 14 | `theorem` | [integrable_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/integrable-zeroextension--c28834b26847917b116b50c0.md) | 101 | `result-track:c28834b26847917b116b50c06b197ea590bacbc1b53aab437597078d0e2fc7cf` |
| 15 | `theorem` | [zeroExtension_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/zeroextension-integral--f72b78e9e0bf4049106716ea.md) | 106 | `result-track:f72b78e9e0bf4049106716eae1080a3d8d2a34384d9559394ed5da6976bc83b8` |
| 16 | `theorem` | [scaledBump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/scaledbump-integrable--606b161ddc3a227abec44dfe.md) | 112 | `result-track:606b161ddc3a227abec44dfe58659133de48d667d9e2d3f9afbd3438f709f63c` |
| 17 | `theorem` | [explicitSecondDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicitsecondderivative-integrable--e905b30d847e79cb40f90797.md) | 118 | `result-track:e905b30d847e79cb40f907971e8e0d8d9bbf89e651604937dc5891aa15481c3b` |
| 18 | `theorem` | [scaledBump_weak_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/scaledbump-weak-second-derivative--77a8e2953035dec8c1fc14ae.md) | 124 | `result-track:77a8e2953035dec8c1fc14aeee9709a22569c8ef8efec709f4016eef5e8df344` |
| 19 | `theorem` | [explicit_dilationTest_zero_extension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicit-dilationtest-zero-extension--d8195c591055d0b5d5d537b9.md) | 167 | `result-track:d8195c591055d0b5d5d537b9ad9070207377b9fe1d9f491b30731174932ce0c9` |
| 20 | `theorem` | [explicit_dilationTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicit-dilationtest-integrable--584c7ca00fa8efef60d09872.md) | 175 | `result-track:584c7ca00fa8efef60d09872096de825f96d60b4782b8e35ebcddb4fbfc2fb8f` |
| 21 | `theorem` | [explicit_dilationTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicit-dilationtest-eq-indicator--b45bd381729152894bd77582.md) | 182 | `result-track:b45bd381729152894bd775821612614168a35ba6407535f6f16015a02e60e86e` |
| 22 | `theorem` | [explicit_dilationTest_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/declarations/explicit-dilationtest-square-integrable--3f2ec14f9f468cd0c15c8ec4.md) | 191 | `result-track:3f2ec14f9f468cd0c15c8ec45846d5a6e916d6aaa27b1a9ab2cb64550d18d467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
