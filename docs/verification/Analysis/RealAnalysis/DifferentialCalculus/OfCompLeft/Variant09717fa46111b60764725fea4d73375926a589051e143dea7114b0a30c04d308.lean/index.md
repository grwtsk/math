# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OfCompLeft.Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86de8e90623337b7803c5abfd7bcab401e46e34",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86de8e90623337b7803c5abfd7bcab401e46e34`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.OpenPartialHomeomorph.Continuity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivAtFilter.of_comp_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivatfilter-of-comp-aux--71fb073c3cfb0744b0e87ad7.md) | 57 | `result-track:71fb073c3cfb0744b0e87ad7d4b2c19b0fa949648cdab48b87bff1d77810ea52` |
| 2 | `theorem` | [HasFDerivAtFilter.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivatfilter-of-comp-of-leftinverse--5c1f420e9531eec558964dfd.md) | 80 | `result-track:5c1f420e9531eec558964dfd457386161893394251041847196325892548d732` |
| 3 | `theorem` | [HasFDerivWithinAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivwithinat-of-comp-of-leftinverse--5231840b100ab3331e800416.md) | 90 | `result-track:5231840b100ab3331e800416c7da9224e40993ce92215cc660847cbfec83cdb2` |
| 4 | `theorem` | [HasFDerivAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivat-of-comp-of-leftinverse--0101e2f21ec1e7e6ee4bf5e7.md) | 99 | `result-track:0101e2f21ec1e7e6ee4bf5e7ea887dc33aa04e38fa53aa92d6ae557bc91f05a5` |
| 5 | `theorem` | [HasStrictFDerivAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasstrictfderivat-of-comp-of-leftinverse--cf5b1b036daf449b0ea343f1.md) | 108 | `result-track:cf5b1b036daf449b0ea343f1369db8e8c15e4b75ce61b115d622cc84b552ccf9` |
| 6 | `theorem` | [HasFDerivAtFilter.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivatfilter-of-comp-of-isembedding--49a35a2425099e20f431a2db.md) | 124 | `result-track:49a35a2425099e20f431a2db1d47802ea8d585605b8a257a8c290e2e126327c3` |
| 7 | `theorem` | [HasFDerivWithinAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivwithinat-of-comp-of-isembedding--ded7b1e7fca615bd7033603d.md) | 133 | `result-track:ded7b1e7fca615bd7033603d90139136753d6c70954bccf817d86cf6588099dd` |
| 8 | `theorem` | [HasFDerivAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivat-of-comp-of-isembedding--a61b369904689f7fcdcf1d60.md) | 142 | `result-track:a61b369904689f7fcdcf1d60c1e1bf6ef405f5e2dd6267e4b29b88693bcd8938` |
| 9 | `theorem` | [HasStrictFDerivAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasstrictfderivat-of-comp-of-isembedding--7608fe51a08218d85390461b.md) | 151 | `result-track:7608fe51a08218d85390461bd90f69dbd25152636fd1fb0c0763b44fbbf33146` |
| 10 | `theorem` | [HasFDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivat-of-local-left-inverse--abcb8d0d3a8086f78e0db8d2.md) | 173 | `result-track:abcb8d0d3a8086f78e0db8d2559d5d755d38b777e91488806d8b2da15bfc1a19` |
| 11 | `theorem` | [HasFDerivWithinAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasfderivwithinat-of-local-left-inverse--7155cd778565ce07609977aa.md) | 186 | `result-track:7155cd778565ce07609977aa7ff7cdceedd61ef1cf2445ab152b315f05a627fe` |
| 12 | `theorem` | [HasStrictFDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/hasstrictfderivat-of-local-left-inverse--6ce98f12a73d14387f36a0a8.md) | 199 | `result-track:6ce98f12a73d14387f36a0a83db199133988a6c5ba18504705ff1f08d3ed3938` |
| 13 | `theorem` | [OpenPartialHomeomorph.hasStrictFDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/openpartialhomeomorph-hasstrictfderivat-symm--ebe9b19a480e3c9ca3a5aa80.md) | 211 | `result-track:ebe9b19a480e3c9ca3a5aa808f2ecf78acf824b0e8eeade9183dac2bbec4409d` |
| 14 | `theorem` | [OpenPartialHomeomorph.hasFDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/declarations/openpartialhomeomorph-hasfderivat-symm--1012e0ba7ef7df4ef23e9c04.md) | 222 | `result-track:1012e0ba7ef7df4ef23e9c04763d18ca38092451533d69c6e55a4824476d81a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
