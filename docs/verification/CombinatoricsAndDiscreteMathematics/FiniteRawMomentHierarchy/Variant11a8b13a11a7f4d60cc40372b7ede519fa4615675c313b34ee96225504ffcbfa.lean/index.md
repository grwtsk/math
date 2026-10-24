# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRawMomentHierarchy.Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e19250be58cdb410e6c0808ebe36c8517a890c6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e19250be58cdb410e6c0808ebe36c8517a890c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawDirectionalMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawdirectionalmoment--0243355ae254333f6dc6e7e8.md) | 48 | `declaration-track:0243355ae254333f6dc6e7e8e0ae87def763e345f98fe5f3c3bd1374a7c4c61f` |
| 2 | `def` | [rawMomentHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawmomenthierarchy--1d01bfb818d9dd88490756ad.md) | 57 | `declaration-track:1d01bfb818d9dd88490756ad8abdb38a0f003f2c49b513fef04d3e27dfeb0c0e` |
| 3 | `theorem` | [rawMomentHierarchy_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawmomenthierarchy-apply--2a74de9196eea653f14e9509.md) | 64 | `result-track:2a74de9196eea653f14e95090d2bf208595816b342b22c428a9ae0a8ec0e8500` |
| 4 | `theorem` | [rawDirectionalMoment_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawdirectionalmoment-zero--85f255fccce915ac6d54d015.md) | 74 | `result-track:85f255fccce915ac6d54d0155f24d494ca4a9255d5c9cff9ffdfaa9c106691ce` |
| 5 | `theorem` | [rawDirectionalMoment_one_eq_centroid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawdirectionalmoment-one-eq-centroid--01486e9cbb6d2411d9a1ee42.md) | 82 | `result-track:01486e9cbb6d2411d9a1ee420b846fe6a292f77624f019be84befe76c46f76bd` |
| 6 | `theorem` | [rawDirectionalMoment_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawdirectionalmoment-two--63fe511559ce68f948fc4aaa.md) | 92 | `result-track:63fe511559ce68f948fc4aaa820ac6e5d36bd092e734ce3bfa2546cea0d42335` |
| 7 | `theorem` | [covarianceOperator_eq_rawSecond_sub_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/covarianceoperator-eq-rawsecond-sub-centroid-mul--5fa0a7e860872f9b17cd26c2.md) | 104 | `result-track:5fa0a7e860872f9b17cd26c2387844f5262e51be489929fbbe1b84b6afc3a8bf` |
| 8 | `theorem` | [rawDirectionalMoment_two_eq_covariance_add_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawdirectionalmoment-two-eq-covariance-add-centroid-mul--5fcb3c65f9c1ac8af0ada19e.md) | 179 | `result-track:5fcb3c65f9c1ac8af0ada19e8b6e8523582c4d866a11037f7ca954139fb2e29e` |
| 9 | `theorem` | [rawMomentHierarchy_one_eq_firstDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawmomenthierarchy-one-eq-firstdirectionalcumulant--3e410bd482985c11d96150a6.md) | 195 | `result-track:3e410bd482985c11d96150a697a584d8172e096967518f7c606676d603e7cccb` |
| 10 | `theorem` | [rawMomentHierarchy_two_eq_second_add_first_mul_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/rawmomenthierarchy-two-eq-second-add-first-mul-first--cefbbdeec0d6f764e51ad522.md) | 205 | `result-track:cefbbdeec0d6f764e51ad522aa55eb21322b24e007b64717806974cb621aecbf` |
| 11 | `theorem` | [properPartitions_one_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/properpartitions-one-eq-empty--50979d1f25b42ae4fecbf83d.md) | 222 | `result-track:50979d1f25b42ae4fecbf83d43edb55ae3adeeab151b2804e6dba7f4b472f28d` |
| 12 | `theorem` | [directionalProperContribution_one_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/directionalpropercontribution-one-eq-zero--f75ef8220a9259e9405e32d7.md) | 237 | `result-track:f75ef8220a9259e9405e32d7deebcb872d7a2c17f8387b130a349459e8978f0b` |
| 13 | `def` | [recursiveRawCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/recursiverawcumulantfamily--85001bd66bb29d4a107b4a19.md) | 248 | `declaration-track:85001bd66bb29d4a107b4a198da8a175d9f8e8e5a36385b07048dd249dd63053` |
| 14 | `theorem` | [recursiveRawCumulantFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/recursiverawcumulantfamily-zero--030d54e448c94ec4dbabcf83.md) | 255 | `result-track:030d54e448c94ec4dbabcf836c240420e3629f42867d57e3de40fe491122bbee` |
| 15 | `theorem` | [recursiveRawCumulantFamily_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant11a8b13a11a7f4d60cc40372b7ede519fa4615675c313b34ee96225504ffcbfa.lean/declarations/recursiverawcumulantfamily-one--3ffd101b8511b77712b8cb82.md) | 263 | `result-track:3ffd101b8511b77712b8cb8207c6514aa679d74af0040daba1ffc1506c12234f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
