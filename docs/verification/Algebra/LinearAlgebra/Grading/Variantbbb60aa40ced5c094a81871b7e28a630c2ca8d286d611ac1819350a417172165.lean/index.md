# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33523abc77894b72373d3abdce15851066b53733",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33523abc77894b72373d3abdce15851066b53733`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/evenodd--d0b3bb2682c769c6f4101b02.md) | 40 | `declaration-track:d0b3bb2682c769c6f4101b026bc365f9ac723e65b17a6f34939f3a20c2251572` |
| 2 | `theorem` | [one_le_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/one-le-evenodd-zero--3bab4b1792e9884fb62977d6.md) | 44 | `result-track:3bab4b1792e9884fb62977d6e5036fcf314b43dc107b293310210e37e5b89e0a` |
| 3 | `theorem` | [range_ι_le_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/range-le-evenodd-one--e0ddb663f43187e90ececcbc.md) | 49 | `result-track:e0ddb663f43187e90ececcbc35daf100af8ca57b464d68983ea0d7a074396d01` |
| 4 | `theorem` | [ι_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/mem-evenodd-one--365322fd98885d218a8651d0.md) | 54 | `result-track:365322fd98885d218a8651d0f25df1b10fdbc1ad9e5e8e350bf1aef61671664a` |
| 5 | `theorem` | [ι_mul_ι_mem_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/mul-mem-evenodd-zero--32aac3ccd1203058a17e08bb.md) | 58 | `result-track:32aac3ccd1203058a17e08bb57d6a6a387e739fced7ad8e3a699f99e020bf551` |
| 6 | `theorem` | [evenOdd_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/evenodd-mul-le--43fcd68ab1daf6d9cc2c09d4.md) | 67 | `result-track:43fcd68ab1daf6d9cc2c09d4de63c705e548e6374cdb54a20b7539387eb96b41` |
| 7 | `instance` | [evenOdd.gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/evenodd-gradedmonoid--4d4f97c6b94161b2da5e49f3.md) | 79 | `declaration-track:4d4f97c6b94161b2da5e49f32775f2f82ea4b6254c17e64d6cdaae2e0be724d9` |
| 8 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/gradedalgebra--0ae369e132fd28f0910b7302.md) | 87 | `declaration-track:0ae369e132fd28f0910b7302898c4b689feb3973834c7cf9fa0cdfbe95302091` |
| 9 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/gradedalgebra-apply--1190168dc558e6a393af5ede.md) | 91 | `result-track:1190168dc558e6a393af5ede4904b81871393d28a2b01a7c15e556805c20ae62` |
| 10 | `theorem` | [GradedAlgebra.ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/gradedalgebra-sq-scalar--986ff2d01d34154871dee4cc.md) | 96 | `result-track:986ff2d01d34154871dee4cc9d9cacfe57b090621fbee385538db2f49a183c07` |
| 11 | `theorem` | [GradedAlgebra.lift_ι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/gradedalgebra-lift-eq--ea54dfbe69d8ee463210accb.md) | 102 | `result-track:ea54dfbe69d8ee463210accb4ad12b13c289d4c26af7f80dc7ca208cfae63fad` |
| 12 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/gradedalgebra--1425d9fcafa0a442942b10e3.md) | 136 | `declaration-track:1425d9fcafa0a442942b10e30d07d35dbfa99264d8255b8652ad0ba5123e353c` |
| 13 | `theorem` | [iSup_ι_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/isup-range-eq-top--d4c35a49eb630bb1b9ba8a62.md) | 151 | `result-track:d4c35a49eb630bb1b9ba8a62074af5775c3dfab31b779dd479ef971a7b785fcc` |
| 14 | `theorem` | [evenOdd_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/evenodd-iscompl--74eaf5834233ffb853783234.md) | 163 | `result-track:74eaf5834233ffb853783234ab255dd2cf23ea144db30a50a32f7266377700cc` |
| 15 | `theorem` | [evenOdd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/evenodd-induction--2d70621a0c51546485ec6989.md) | 173 | `result-track:2d70621a0c51546485ec6989d7fee4f99aa5c8399b553d78d3cd5c72939c5e8c` |
| 16 | `theorem` | [even_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/even-induction--611b731912d1e32a21324a94.md) | 242 | `result-track:611b731912d1e32a21324a949f198f0708ed7ba2b00b849c1b24bfca0de97581` |
| 17 | `theorem` | [odd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantbbb60aa40ced5c094a81871b7e28a630c2ca8d286d611ac1819350a417172165.lean/declarations/odd-induction--721e814a296e6a6c80e69ef4.md) | 259 | `result-track:721e814a296e6a6c80e69ef4306ec63030c6aeb355469332d87450dcd5effd5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
