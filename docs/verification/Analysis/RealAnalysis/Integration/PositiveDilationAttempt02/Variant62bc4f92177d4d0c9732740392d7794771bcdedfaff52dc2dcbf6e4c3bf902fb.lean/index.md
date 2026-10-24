# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt02.Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3124e726a8dae219a0f5bf54a33b730fa733813",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3124e726a8dae219a0f5bf54a33b730fa733813`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/positivemeasure--8a55a3d0ecd19e5687540852.md) | 14 | `declaration-track:8a55a3d0ecd19e56875408521946f3f0a41812722523358a8dc3c770a9b4c41b` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/positivel2--586bb9720781c5d4df625347.md) | 15 | `declaration-track:586bb9720781c5d4df625347269ff9b637b8fb3f64d87ccc9086e83ee5d750b7` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilatefunc--60719f05bc1a2d0ed7c1c567.md) | 17 | `declaration-track:60719f05bc1a2d0ed7c1c567f6a402959a227dfd0af25e580f20c84b7a5a8d50` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/positivemeasure-map-mul--858116f30ce513c958aed6ba.md) | 19 | `result-track:858116f30ce513c958aed6ba5c0c99398d097200d12b251e1f2b3662a977b5f8` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/positive-mul-quasi--4797b88f9db874107fd7e626.md) | 28 | `result-track:4797b88f9db874107fd7e62657287de44768e94fa5f15860f98beaecf520919f` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilatefunc-memlp--6686a13b912616b40c65292f.md) | 34 | `result-track:6686a13b912616b40c65292f2cb890625b066031cd830a0e075db9fab2feb27d` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate--1c546a061001b8092948e4e6.md) | 41 | `declaration-track:1c546a061001b8092948e4e6b1f65b0419b4242e3040cc99770be4fbc0b263e6` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-ae--2c0e6d31ff0a015bbae7affb.md) | 44 | `result-track:2c0e6d31ff0a015bbae7affb416dbbbab20e78eb2731167bd8cff200ab0997c8` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/norm-sq-integral--6c6af4c7f1fa505ea4b718cd.md) | 48 | `result-track:6c6af4c7f1fa505ea4b718cd554e774d96422cf6fd50caa75ffa757f58d2d5b5` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-norm-sq--2df8aba06c766f44c70119d3.md) | 59 | `result-track:2df8aba06c766f44c70119d30e6b014133a87afcb9b3427f78285266e79c6f96` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-norm--948d7f0a8ccb8628f54800ba.md) | 73 | `result-track:948d7f0a8ccb8628f54800ba0d732ed012188f5993aedd56f5e4e5704d47d9f9` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-one--f91c1aba0f3d3a1fab926776.md) | 76 | `result-track:f91c1aba0f3d3a1fab9267763e398ea74113f2985f36d8e74972f4c517391666` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-comp--fcf35182c343d33c24c0d20b.md) | 81 | `result-track:fcf35182c343d33c24c0d20b0c2a4c0cea5431e4a38f4c82ecd0e2d0522376eb` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-inverse--5937389b4143b1c2b482fcfa.md) | 94 | `result-track:5937389b4143b1c2b482fcfab3dfa01ec53be41da8d81d0779ef7aa5b49c9daf` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-add--67b24ca7ff367f5fbbc76d0c.md) | 99 | `result-track:67b24ca7ff367f5fbbc76d0c4e67a48862a4b0dafe216b6cad90af74ae83bb7b` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilate-smul--10bc2c56d67007ba24feb7de.md) | 109 | `result-track:10bc2c56d67007ba24feb7de2b1a3836f668efd65d3c294a2fdfe8b0cdb23c80` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilationisometry--987952d515a1dbe3b11cd0a4.md) | 120 | `declaration-track:987952d515a1dbe3b11cd0a4cb37b50a2925e9da683edac6b91bc12ac2e1bb34` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant62bc4f92177d4d0c9732740392d7794771bcdedfaff52dc2dcbf6e4c3bf902fb.lean/declarations/dilationequiv--06521be9b5d66305235bb075.md) | 126 | `declaration-track:06521be9b5d66305235bb07504278b284bd179eae861ec84e30545d124001042` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
