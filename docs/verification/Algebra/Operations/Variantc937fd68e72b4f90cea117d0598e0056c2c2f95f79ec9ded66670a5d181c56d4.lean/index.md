# Verification target: GRWTSK.Algebra.Operations.Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7f197d7bb7ef48c59ac322c34b3688f91b21f02",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7f197d7bb7ef48c59ac322c34b3688f91b21f02`.

Source path: `GRWTSK/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Submonoid` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_rangeRestrict](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/declarations/ker-rangerestrict--abbe935e7cbeafd3f5515997.md) | 33 | `result-track:abbe935e7cbeafd3f55159974fddadf4071b98324be4f7235238a9ab70484c66` |
| 2 | `theorem` | [mem_of_finset_sum_eq_one_of_pow_smul_mem](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/declarations/mem-of-finset-sum-eq-one-of-pow-smul-mem--712424fc722c668080c0eca4.md) | 48 | `result-track:712424fc722c668080c0eca4641209c395a8fea02dde75006642f970896b4b62` |
| 3 | `theorem` | [mem_of_span_eq_top_of_smul_pow_mem](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/declarations/mem-of-span-eq-top-of-smul-pow-mem--ba80aefb82838fddae023b7a.md) | 76 | `result-track:ba80aefb82838fddae023b7a91f5a2afec99994a3ac06b5bead8ed8120d3e6da` |
| 4 | `def` | [FixedPoints.subring](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/declarations/fixedpoints-subring--50dcd6ffe3d480d21667b4ce.md) | 90 | `declaration-track:50dcd6ffe3d480d21667b4ce961ff800bd2bfdeaedaf8c80277d86800cc4977b` |
| 5 | `def` | [FixedPoints.subalgebra](../../../../mathematics/Algebra/Operations/Variantc937fd68e72b4f90cea117d0598e0056c2c2f95f79ec9ded66670a5d181c56d4.lean/declarations/fixedpoints-subalgebra--75c355dda62202402d23f774.md) | 95 | `declaration-track:75c355dda62202402d23f774bbebb54140da21454980f5b861b0d20fdf42bb99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
