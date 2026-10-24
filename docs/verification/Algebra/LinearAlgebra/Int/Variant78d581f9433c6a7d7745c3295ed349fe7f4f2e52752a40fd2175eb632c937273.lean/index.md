# Verification target: GRWTSK.Algebra.LinearAlgebra.Int.Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09d97ad3b4fcb3f2bd724723d27dcf6ac9badc46",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09d97ad3b4fcb3f2bd724723d27dcf6ac9badc46`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toAddSubgroup_index_eq_pow_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/toaddsubgroup-index-eq-pow-mul-prod--cc54d2d599a1ce1aaed72a1c.md) | 28 | `result-track:cc54d2d599a1ce1aaed72a1c906739f3b09fe36dea7509324daab1ce1b15f110` |
| 2 | `lemma` | [toAddSubgroup_index_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/toaddsubgroup-index-eq-ite--018f733963ddd026d6146123.md) | 147 | `result-track:018f733963ddd026d6146123e780c25b8bea5b566ff7dbeb533c9a558cfe5a33` |
| 3 | `lemma` | [toAddSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/toaddsubgroup-index-ne-zero-iff--75aa1d29f124c98ad5528e45.md) | 160 | `result-track:75aa1d29f124c98ad5528e456fec56955c965b7cc5ad9d75c4c7f675295b8213` |
| 4 | `lemma` | [submodule_toAddSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/submodule-toaddsubgroup-index-ne-zero-iff--9fd88848811462f677bb317c.md) | 180 | `result-track:9fd88848811462f677bb317c7ee0213d42c4531714683ccd669e2910a9d73971` |
| 5 | `lemma` | [addSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/addsubgroup-index-ne-zero-iff--05eb69b61f694cafb0b6f01e.md) | 192 | `result-track:05eb69b61f694cafb0b6f01ef1293dc07db59061f60474d3cf22db927daed2a6` |
| 6 | `lemma` | [subgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant78d581f9433c6a7d7745c3295ed349fe7f4f2e52752a40fd2175eb632c937273.lean/declarations/subgroup-index-ne-zero-iff--92980a525114d5718d42d8d8.md) | 197 | `result-track:92980a525114d5718d42d8d8a136ce3fd1cdaf450f9ea3f54cf6f04eb8e8d004` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
