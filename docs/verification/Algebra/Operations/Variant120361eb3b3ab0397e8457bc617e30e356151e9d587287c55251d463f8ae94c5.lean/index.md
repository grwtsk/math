# Verification target: GRWTSK.Algebra.Operations.Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b89e86ca150082cb5d4f5183808b43f50e588218",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b89e86ca150082cb5d4f5183808b43f50e588218`.

Source path: `GRWTSK/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Submonoid` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_rangeRestrict](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/declarations/ker-rangerestrict--1edc19281c7c5e0f0c93381a.md) | 25 | `result-track:1edc19281c7c5e0f0c93381a482d8c3232eb5eba739cc239a5507598b9e15c85` |
| 2 | `theorem` | [mem_of_finset_sum_eq_one_of_pow_smul_mem](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/declarations/mem-of-finset-sum-eq-one-of-pow-smul-mem--5a126b478e0f3f0aedcabc77.md) | 40 | `result-track:5a126b478e0f3f0aedcabc779cbe5097025f93d265fc7d379dcdefd0b5418178` |
| 3 | `theorem` | [mem_of_span_eq_top_of_smul_pow_mem](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/declarations/mem-of-span-eq-top-of-smul-pow-mem--1dfb7079bb39ceb2e4094e75.md) | 68 | `result-track:1dfb7079bb39ceb2e4094e75c14cab96c4525996a9c861064d5b9fd859a0bfb2` |
| 4 | `def` | [FixedPoints.subring](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/declarations/fixedpoints-subring--b6771b58f02100a96231f09d.md) | 82 | `declaration-track:b6771b58f02100a96231f09d62b5cc3fa71ddcae70eef2dc57fd7ab9931dba57` |
| 5 | `def` | [FixedPoints.subalgebra](../../../../mathematics/Algebra/Operations/Variant120361eb3b3ab0397e8457bc617e30e356151e9d587287c55251d463f8ae94c5.lean/declarations/fixedpoints-subalgebra--8fc19db19005d42e179a8bf6.md) | 87 | `declaration-track:8fc19db19005d42e179a8bf660b6b307d306cbf6ea0bf461cc6bbe5ae6f50698` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
