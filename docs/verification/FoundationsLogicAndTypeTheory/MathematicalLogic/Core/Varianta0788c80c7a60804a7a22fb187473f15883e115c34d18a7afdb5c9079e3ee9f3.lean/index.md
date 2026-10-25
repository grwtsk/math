# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a71178157f432c03afb416a36e1ac691a893a55",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a71178157f432c03afb416a36e1ac691a893a55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothFramedSurgeryTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/smoothframedsurgerytheory--c8dcd3b97c0c68c3174c23a8.md) | 59 | `declaration-track:c8dcd3b97c0c68c3174c23a816efeeae62f47501e72afb84fa81c0660455b3dc` |
| 2 | `theorem` | [surgery_invariant_of_framedIsotopic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/surgery-invariant-of-framedisotopic--b0d8580999b255a02b21c3eb.md) | 89 | `result-track:b0d8580999b255a02b21c3eb5592cb93b749d39216aa96c31cb92078a5778977` |
| 3 | `theorem` | [ambient_and_trace_not_both_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/ambient-and-trace-not-both-even--5348cf136ef81e5325c693b1.md) | 105 | `result-track:5348cf136ef81e5325c693b136b726d73eab67a3324cbad54c0f422f66c5e5c6` |
| 4 | `structure` | [SingleHandleRelativeInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/singlehandlerelativeinvariant--e67c8ffc609af6c277212427.md) | 118 | `declaration-track:e67c8ffc609af6c277212427ecea11a93c4681b0722028092134e6b32477da14` |
| 5 | `def` | [degreeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/degreeequiv--12a1cf56d6f3a5f1a963533a.md) | 146 | `declaration-track:12a1cf56d6f3a5f1a963533a92cbb3c6f6e95ba65b9d49e78ed06bccc6079c0c` |
| 6 | `def` | [generator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/generator--e6ffdd21cb9f4599f32f959c.md) | 153 | `declaration-track:e6ffdd21cb9f4599f32f959c7bb99cc3b0b7e89274e4d67b72c6db38f61c246d` |
| 7 | `theorem` | [eq_zero_of_degree_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/eq-zero-of-degree-ne--2293b9f5cc5e356e0862df13.md) | 159 | `result-track:2293b9f5cc5e356e0862df13523701fb581318f85583eed89e0f98d18b379654` |
| 8 | `theorem` | [boundary_generator_eq_attachingClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/boundary-generator-eq-attachingclass--523e6d0730dae38a3c542379.md) | 167 | `result-track:523e6d0730dae38a3c54237994b380bf89492bbf1bbecabc9098e62987aca1be` |
| 9 | `structure` | [FramedSurgeryCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/framedsurgerycertificate--bfd78fe63f3b16357f35d977.md) | 183 | `declaration-track:bfd78fe63f3b16357f35d9771cac5ec2dd05cff3ca58fa09364b2dd4ae39072b` |
| 10 | `theorem` | [complementary_handle_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/complementary-handle-index--d696e9abbb8743b64bff47d3.md) | 208 | `result-track:d696e9abbb8743b64bff47d3e2f7859ee89f0df6fc780f700dbd43ffd210c847` |
| 11 | `def` | [incoming_degree_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/incoming-degree-equiv--0c58200e31b323fdde20770a.md) | 216 | `declaration-track:0c58200e31b323fdde20770ac5856712f6720713d5d9cdb24c589060ab736dd9` |
| 12 | `def` | [dual_degree_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/dual-degree-equiv--bbbeb12fb8313169f81acc2b.md) | 223 | `declaration-track:bbbeb12fb8313169f81acc2b125a301459d50e185adc39625b68b7fb8b05ba4a` |
| 13 | `theorem` | [incoming_eq_zero_of_degree_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/incoming-eq-zero-of-degree-ne--4a7c0d454e45d73da8897bbc.md) | 230 | `result-track:4a7c0d454e45d73da8897bbc3040619298298350f90f0829361811a4302bdb58` |
| 14 | `theorem` | [dual_eq_zero_of_degree_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/dual-eq-zero-of-degree-ne--2b0a75d976ec5184d3203cb0.md) | 239 | `result-track:2b0a75d976ec5184d3203cb001480c3fe696feb9ccd9502d864d479920154856` |
| 15 | `theorem` | [incoming_boundary_generator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/incoming-boundary-generator--e0727c87454bdf148d42d387.md) | 248 | `result-track:e0727c87454bdf148d42d387b307055d72af02dff1994782ef0455192c0012a6` |
| 16 | `theorem` | [dual_boundary_generator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/dual-boundary-generator--b1c97faf0a4a0d72daaa4adc.md) | 257 | `result-track:b1c97faf0a4a0d72daaa4adccab0f4ab6bfa7f68c4b9cf505a3040eb3d08e67d` |
| 17 | `theorem` | [boundary_is_relative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/boundary-is-relative--c22fb4de02cf459a2508fa6b.md) | 266 | `result-track:c22fb4de02cf459a2508fa6b8d95c6903da93a7ffc9b7d4901a45b0f74fa9f03` |
| 18 | `structure` | [TangentialExtensionBoundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/tangentialextensionboundary--a51ef2a97040814555d3f723.md) | 281 | `declaration-track:a51ef2a97040814555d3f7231a6d3074ff64bd5971a0c8112ef09cd7964d2423` |
| 19 | `theorem` | [extends_iff_boundaryClass_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/extends-iff-boundaryclass-eq-zero--89edb11a673d45afc94ac563.md) | 303 | `result-track:89edb11a673d45afc94ac563e5b3832277cd33b85aa9a4a7a90c54746952bce8` |
| 20 | `theorem` | [extends_of_boundaryClass_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/extends-of-boundaryclass-eq-zero--5641f49944acb6b5b2ea084e.md) | 309 | `result-track:5641f49944acb6b5b2ea084e65610cc25845d599c7d9c6752b89460f24ad2db4` |
| 21 | `theorem` | [boundaryClass_eq_zero_of_extends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/boundaryclass-eq-zero-of-extends--1fe81a7f4f3a3f96864ba551.md) | 315 | `result-track:1fe81a7f4f3a3f96864ba551ce4dd00a9428d50eccec5bb1176d9d0746532c36` |
| 22 | `structure` | [DualSurgeryCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/dualsurgerycertificate--f86d9a8e6b58535a663f4877.md) | 330 | `declaration-track:f86d9a8e6b58535a663f4877ac2de83f3fe1dcf3e3a27532831618064787281e` |
| 23 | `theorem` | [surgery_on_belt_restores](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/surgery-on-belt-restores--ecdce460ab1112855f31f90b.md) | 343 | `result-track:ecdce460ab1112855f31f90b5b984403852bfd75d4ad570c9e23244e7504450e` |
| 24 | `structure` | [FiniteDisjointFramedFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/finitedisjointframedfamily--2ce35cf7ab4a70e0960e369d.md) | 354 | `declaration-track:2ce35cf7ab4a70e0960e369db0fc044ed2be1502f9ca6060b2df13f572ccaee6` |
| 25 | `theorem` | [disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/disjoint--0e65499c62d33feb6cec9eef.md) | 368 | `result-track:0e65499c62d33feb6cec9eef8582cb858d503910e20f9e2e22e50a96685c4bc5` |
| 26 | `structure` | [DisjointFamilyCommutationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/disjointfamilycommutationcertificate--c0c0f391f43e44becce6b61c.md) | 391 | `declaration-track:c0c0f391f43e44becce6b61c2e99f2b86bf34b9821519f34fc6442f63502af62` |
| 27 | `theorem` | [ordered_rel_simultaneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/ordered-rel-simultaneous--e093a0e91c92ff1d47c2fffa.md) | 409 | `result-track:e093a0e91c92ff1d47c2fffab4e13c81ee272e26ae3991f30c8d959163c6f4fa` |
| 28 | `theorem` | [ordered_results_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/declarations/ordered-results-commute--8e6d67e8cc9da9b3918cbc8b.md) | 423 | `result-track:8e6d67e8cc9da9b3918cbc8b1b42555b3dbd23b855c68eb97c60e884f0b2df55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
