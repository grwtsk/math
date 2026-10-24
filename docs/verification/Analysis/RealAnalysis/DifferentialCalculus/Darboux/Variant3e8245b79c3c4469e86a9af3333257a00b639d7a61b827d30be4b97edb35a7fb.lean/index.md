# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Darboux.Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94aabfcb2521e7be366ee24dff442f79c70127a9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94aabfcb2521e7be366ee24dff442f79c70127a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasDerivWithinAt_eq_of_gt_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/exists-hasderivwithinat-eq-of-gt-of-lt--65a1da66295f51e6fa806b00.md) | 34 | `result-track:65a1da66295f51e6fa806b009feb8ef96b44e7cee171853e4a7b8c604b9dfa3c` |
| 2 | `theorem` | [exists_hasDerivWithinAt_eq_of_lt_of_gt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/exists-hasderivwithinat-eq-of-lt-of-gt--0cb6e4b6ef53057e606924e4.md) | 70 | `result-track:0cb6e4b6ef53057e606924e44e356802ad90d6203798ae1f3be79bc394282a9a` |
| 3 | `theorem` | [Set.OrdConnected.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/set-ordconnected-image-hasderivwithinat--2fbc853f9b9dc544b7e1c6cd.md) | 80 | `result-track:2fbc853f9b9dc544b7e1c6cd60aa0b52d02920a946a8af844ef8cc9e16b219c0` |
| 4 | `theorem` | [Set.OrdConnected.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/set-ordconnected-image-derivwithin--08407d3750845c56b0980700.md) | 98 | `result-track:08407d3750845c56b09807003225d521479fd69b890e4aaa8889cd2cc594bb56` |
| 5 | `theorem` | [Set.OrdConnected.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/set-ordconnected-image-deriv--f94e3bdfa212b16afcca17d7.md) | 104 | `result-track:f94e3bdfa212b16afcca17d7fada9d6aca541a7ce3e5edf2f438f8dd196406ca` |
| 6 | `theorem` | [Convex.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/convex-image-hasderivwithinat--bd256e33951a5674031e5072.md) | 110 | `result-track:bd256e33951a5674031e50727ad2eddc21ecf99c208a305b4b74081bfe919477` |
| 7 | `theorem` | [Convex.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/convex-image-derivwithin--fe8a496efafb685f22b25fcc.md) | 116 | `result-track:fe8a496efafb685f22b25fcc2fe63c6c2b7bb3acf5fc5f0a37f4555ce2c258a0` |
| 8 | `theorem` | [Convex.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/convex-image-deriv--6415a4502eafc5e1ab59a487.md) | 122 | `result-track:6415a4502eafc5e1ab59a4871a75d9339cf2a0ea8a0e398caffd3c5b36509317` |
| 9 | `theorem` | [exists_hasDerivWithinAt_eq_of_ge_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/exists-hasderivwithinat-eq-of-ge-of-le--9af74fe060fb2d7e4824edfc.md) | 128 | `result-track:9af74fe060fb2d7e4824edfcfe21f3c7bb46ba10f1ae118b0eab4a5c63fbc786` |
| 10 | `theorem` | [exists_hasDerivWithinAt_eq_of_le_of_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/exists-hasderivwithinat-eq-of-le-of-ge--86bd04cda245fc46918f05dc.md) | 136 | `result-track:86bd04cda245fc46918f05dcf262c00f879e6eb9c5131a298d900a84438b16af` |
| 11 | `theorem` | [hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant3e8245b79c3c4469e86a9af3333257a00b639d7a61b827d30be4b97edb35a7fb.lean/declarations/hasderivwithinat-forall-lt-or-forall-gt-of-forall-ne--3a5846701e46490d2e08ee00.md) | 144 | `result-track:3a5846701e46490d2e08ee00ec7586fdb82cb95504037093647a59381ba079f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
