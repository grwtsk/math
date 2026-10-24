# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt02.Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0566876cc68ab9df4a4cc4f7c55d608a0ab8a018",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0566876cc68ab9df4a4cc4f7c55d608a0ab8a018`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/positivemeasure--141a040ef558a4e6fcf8acbb.md) | 22 | `declaration-track:141a040ef558a4e6fcf8acbb07a5885f9e4a8fc1f127fb6ba28b23bbc1c7fdb2` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/positivel2--c97b3b0fe01eae690d4e321d.md) | 23 | `declaration-track:c97b3b0fe01eae690d4e321d0e57062a8b1f7aed144556dcd8f50293a59af080` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilatefunc--b00e9e14544ac28d080efe2b.md) | 25 | `declaration-track:b00e9e14544ac28d080efe2b4852c51c14737081843afbaaaf27431bebd0cdfc` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/positivemeasure-map-mul--bd5b3cd0106c1c41cdaacb18.md) | 27 | `result-track:bd5b3cd0106c1c41cdaacb18a4e7687ba45e5050908556410e8317466f221c04` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/positive-mul-quasi--c55224452174537f7efff4cf.md) | 36 | `result-track:c55224452174537f7efff4cff30f905359bad3a0a146cbe43f86bdacc19aa21f` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilatefunc-memlp--0b758b5934dba43fd5872100.md) | 42 | `result-track:0b758b5934dba43fd5872100874869afe508f99e64fe8f0925a5c0a3405fda2f` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate--12c038b72b5681824e227607.md) | 49 | `declaration-track:12c038b72b5681824e22760792c29f2bd1631587967d85dca1c09b0362ef6426` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-ae--bdcdd0b1c211a9bab7c4e517.md) | 52 | `result-track:bdcdd0b1c211a9bab7c4e517b21f52700c8c60900c6a1f6b8f3e4d83dae04f89` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/norm-sq-integral--604a86661fa8d5761bec4fc6.md) | 56 | `result-track:604a86661fa8d5761bec4fc622f8069c320a16b066a92385512ba33e3d540805` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-norm-sq--fd52f7f11ec227b0b156685f.md) | 67 | `result-track:fd52f7f11ec227b0b156685f4962c44eefdb278b1880518902d08241c33d930c` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-norm--665cb60e11978e5b828304f3.md) | 81 | `result-track:665cb60e11978e5b828304f3b1923b2fd216be6eb8c07d464c4d79230733084a` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-one--e77087829e619e6087317b73.md) | 84 | `result-track:e77087829e619e6087317b73defcf039c00f15743200ce7f4b223ec6448bc3d6` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-comp--3c889ef6e40f951ccce0990b.md) | 89 | `result-track:3c889ef6e40f951ccce0990b5c1cb90f194403b9a125d9cfae4a69bed5350c1f` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-inverse--6cd5c76ea1bc27250a04a764.md) | 102 | `result-track:6cd5c76ea1bc27250a04a76437ffa20c0330116535731fdb05430a475c07ea1a` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-add--6b748a9242fc779237393abe.md) | 107 | `result-track:6b748a9242fc779237393abe06bc4538612db56a179c54c399e0ab359178f28e` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilate-smul--81fdaaf26ae4fcbda95a96d1.md) | 117 | `result-track:81fdaaf26ae4fcbda95a96d1f37a1d766dfa4be186551e6ae3319c789835380c` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilationisometry--f309a45aa814c0735a9dd48b.md) | 128 | `declaration-track:f309a45aa814c0735a9dd48b0d9a23f6cd46c52a81a08b76d42f37ec4fc65f9a` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt02/Variant4b9fafa5510c4634b4e5ff1c172372b4c570725eddff807ed287c04a8a884ac6.lean/declarations/dilationequiv--a690eba8b19872492748c973.md) | 134 | `declaration-track:a690eba8b19872492748c973487a820f1ebc5187d86eb26404a6f45579f7a35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
