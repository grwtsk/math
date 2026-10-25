# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToSet.Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a6726d389749d8ef9ce6bfec8afe9582f07f3c9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a6726d389749d8ef9ce6bfec8afe9582f07f3c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ToSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/toset--ee4ae5fefa142b3ca447487e.md) | 38 | `declaration-track:ee4ae5fefa142b3ca447487e2f09d46534994f1cc555176944c99f614abbbf30` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/instance--ea40e4090a81cb4ce3ed18a8.md) | 42 | `declaration-track:ea40e4090a81cb4ce3ed18a8cc102dbbc62553e4ea5c67100733d8397dea82cf` |
| 3 | `lemma` | [ToSet.mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/toset-mem-def--d1ef14441f61adf2f674cdb8.md) | 45 | `result-track:d1ef14441f61adf2f674cdb8530fcc90fe745d4a6dc9844b17a4da65afacc80b` |
| 4 | `lemma` | [ToSet.mem_of_eq_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/toset-mem-of-eq-of-mem--cf6696c966a00542a53ddd36.md) | 48 | `result-track:cf6696c966a00542a53ddd36a1c6088a12e4b85ea6b286f644cb0ad1ddd8e40e` |
| 5 | `lemma` | [ToSet.mem_of_mem_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/toset-mem-of-mem-of-eq--d1165a5f2e08d5dfac97cf20.md) | 51 | `result-track:d1165a5f2e08d5dfac97cf20bf1e22cca6e3ab41fcdc9175a90aa2672bcfc03b` |
| 6 | `class` | [Univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/univ--7603f109899c485136868159.md) | 57 | `declaration-track:7603f109899c4851368681591d432543d4544339d981a5c565df38849be9a24d` |
| 7 | `class` | [Refine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/refine--c9da22901cc6a7f68563e747.md) | 66 | `declaration-track:c9da22901cc6a7f68563e74793f66d4e4b31d7c61259feda562a90db7d806963` |
| 8 | `class` | [Coarsen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/coarsen--ea789014418b2829ae51961d.md) | 75 | `declaration-track:ea789014418b2829ae51961dec3a2803b27395435cef1cc3d13f1da0568b34e8` |
| 9 | `structure` | [Cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/cover--1f290048fd2c648dd33676e9.md) | 93 | `declaration-track:1f290048fd2c648dd33676e910fcbfdc9115840ca834d0c172974b8b54969bea` |
| 10 | `inductive` | [IntervalBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool--15f163b73ccda8345e2073c1.md) | 105 | `declaration-track:15f163b73ccda8345e2073c146062f586d9aa9a65430ca9480b293fc032e2f29` |
| 11 | `def` | [IntervalBool.toPropSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-topropset--99b70502b8443af5f1d0846b.md) | 113 | `declaration-track:99b70502b8443af5f1d0846b959db06ee207b7eec3dc07c68224151b98599f31` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/instance--644f14017423f9e9064cea95.md) | 118 | `declaration-track:644f14017423f9e9064cea957c706009ea6a05193f5549d19b174a2c7fa866ea` |
| 13 | `theorem` | [IntervalBool.mem_true_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-mem-true-iff--44b06e083e37283320cbe06d.md) | 121 | `result-track:44b06e083e37283320cbe06d2425be29e52b55fe0849873613c3628e7f65bbbc` |
| 14 | `theorem` | [IntervalBool.mem_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-mem-false-iff--dce68185635d331c833f4120.md) | 125 | `result-track:dce68185635d331c833f4120a0bfb9d29d7bc72df51579b9a770aaf513fdeba4` |
| 15 | `theorem` | [IntervalBool.mem_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-mem-true--f2796d5af8343bc3e25755ea.md) | 128 | `result-track:f2796d5af8343bc3e25755ea20e7418215ceb8ec369ad7f7387b0f38b5c1cea6` |
| 16 | `theorem` | [IntervalBool.mem_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-mem-false--8d0bff3888e3d06b1a135f0f.md) | 131 | `result-track:8d0bff3888e3d06b1a135f0faea3f24a0b1252a2f4eda3669e79a4b6f29da7d2` |
| 17 | `theorem` | [IntervalBool.mem_undetermined](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-mem-undetermined--6dbb3fe89db4e837c6c91731.md) | 135 | `result-track:6dbb3fe89db4e837c6c9173141bef527a47d58fc25ed373c580dc402be4aa743` |
| 18 | `def` | [IntervalBool.not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-not--7c89ecc3e9b5a7ccb3ad379e.md) | 139 | `declaration-track:7c89ecc3e9b5a7ccb3ad379ea6a8986bf30d1a59ca68e8c6c4b18e7dad2dd99d` |
| 19 | `theorem` | [IntervalBool.not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-not-mem--2833de8de1cdf1235dcf1ae0.md) | 144 | `result-track:2833de8de1cdf1235dcf1ae0b5514dd302a7a8035ea3f174093c4c1f5939a897` |
| 20 | `def` | [IntervalBool.and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-and--4092ea52242c31399c58d396.md) | 150 | `declaration-track:4092ea52242c31399c58d396112883649c10f2fae31cc754961c4b48e7e7f8c7` |
| 21 | `theorem` | [IntervalBool.and_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-and-mem--2ac8a1534b0b9d9dd5b850da.md) | 155 | `result-track:2ac8a1534b0b9d9dd5b850daf236adc6476983a73a0253bca8726efaf33048c3` |
| 22 | `def` | [IntervalBool.or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-or--fc7e7488899d9b11d22baf01.md) | 161 | `declaration-track:fc7e7488899d9b11d22baf018df72b093f4f9cc4a94bfa38cbdff26e25f3a22a` |
| 23 | `theorem` | [IntervalBool.or_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-or-mem--6735f7cfa11b01e748870331.md) | 166 | `result-track:6735f7cfa11b01e7488703317e9934d8874a9b4d946844e0efcc6305d80cc64e` |
| 24 | `theorem` | [true_of_mem_intervalBool_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/true-of-mem-intervalbool-true--437cd51eee0bc21738ee0f0e.md) | 171 | `result-track:437cd51eee0bc21738ee0f0e6919b674913f54c77c3c73fdf3d44f4535e333d2` |
| 25 | `theorem` | [true_of_mem_intervalBool_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/true-of-mem-intervalbool-eq-true--19e0a4f9b5e1e059405e25e3.md) | 174 | `result-track:19e0a4f9b5e1e059405e25e3e480f2677c632b3996fcd9932c4f2bc4be5520df` |
| 26 | `def` | [IntervalBool.isTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-istrue--3440a57b571e64755d966f6a.md) | 179 | `declaration-track:3440a57b571e64755d966f6a643680468a2f6806f848a2cef76c26b2430bd8ea` |
| 27 | `theorem` | [IntervalBool.eq_true_of_isTrue_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-eq-true-of-istrue-eq-true--041c47a5d537fa1144a81141.md) | 183 | `result-track:041c47a5d537fa1144a81141436d491a32b369dd889e7cb937e7d96315892271` |
| 28 | `def` | [IntervalBool.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/intervalbool-union--1c1328e20ef3a1a1b84c8afd.md) | 189 | `declaration-track:1c1328e20ef3a1a1b84c8afd6ff4f718dd819852f1e049b8b92f3ffc0f38a8e0` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variantaeb3d651e8248505a87bc4cb2bb827eadc8aa4dc055547778fd883e2735c2e63.lean/declarations/instance--83d9744d5f20d045fd48fd76.md) | 194 | `declaration-track:83d9744d5f20d045fd48fd76b7007451e375fbded84544beb26845ae5c4f9e53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
