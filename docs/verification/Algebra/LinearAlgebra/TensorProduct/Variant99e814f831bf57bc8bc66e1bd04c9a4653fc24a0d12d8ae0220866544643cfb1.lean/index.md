# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de36658a717ebaae9eb935367e13fe69b0cdc743",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de36658a717ebaae9eb935367e13fe69b0cdc743`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsum--57f45c732dea6ead83cbf659.md) | 47 | `declaration-track:57f45c732dea6ead83cbf659f0e9c6a9948f3c8878bef5485e1aac2373391a79` |
| 2 | `def` | [directSumLeft](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumleft--e4c120d8289f407081035d6e.md) | 64 | `declaration-track:e4c120d8289f407081035d6e6f9b18ff12bfc4cd15150feddb140fb7b47d23ba` |
| 3 | `def` | [directSumRight](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumright--4e72b048b1de6afbc4dd3cac.md) | 84 | `declaration-track:4e72b048b1de6afbc4dd3cac5e125b896632b3920ea85839577c5e0ea123e065` |
| 4 | `theorem` | [directSum_lof_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsum-lof-tmul-lof--15bcd41b90bbeffd7db5ce57.md) | 91 | `result-track:15bcd41b90bbeffd7db5ce5760d303a490baf4e8491c7a37238cdb0e7ca483d5` |
| 5 | `theorem` | [directSum_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsum-symm-lof-tmul--272a71945d177f8d69001e5e.md) | 97 | `result-track:272a71945d177f8d69001e5e9ef8be3a05c9292a40e94e4eb50cd68c75e66db9` |
| 6 | `theorem` | [directSumLeft_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumleft-tmul-lof--3d9030e78df8b557d581cb6f.md) | 104 | `result-track:3d9030e78df8b557d581cb6fc8ff3931489deafb48255a2f56005b92ea01224b` |
| 7 | `theorem` | [directSumLeft_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumleft-symm-lof-tmul--02586eeac5471e8304339535.md) | 112 | `result-track:02586eeac5471e83043395356b118dba168d115a19970a1fb240044b455c9cf6` |
| 8 | `theorem` | [directSumRight_tmul_lof](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumright-tmul-lof--78539b78233e961f8d4444c0.md) | 118 | `result-track:78539b78233e961f8d4444c08900395bb135719184a458eb9e01b2ccecda04bb` |
| 9 | `theorem` | [directSumRight_symm_lof_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumright-symm-lof-tmul--d713c96e241c326003bcdbb1.md) | 126 | `result-track:d713c96e241c326003bcdbb1a019aeecfd6e3a2fec4c4fc6615252db2789e139` |
| 10 | `lemma` | [directSumRight_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/declarations/directsumright-comp-rtensor--a3fdda3fbf837dfd341aba85.md) | 131 | `result-track:a3fdda3fbf837dfd341aba855fdc02fad4481631c75641723b19f1171d6d68aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
