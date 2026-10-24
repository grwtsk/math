# Verification target: GRWTSK.Algebra.EisensteinCriterion.Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4595df688e0e87c9819338723b41d2770aa9c1e8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md) · [Full source](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4595df688e0e87c9819338723b41d2770aa9c1e8`.

Source path: `GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_eq_C_mul_X_pow_of_forall_coeff_mem](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/declarations/map-eq-c-mul-x-pow-of-forall-coeff-mem--daae0711e021f1692ad8f9dc.md) | 40 | `result-track:daae0711e021f1692ad8f9dc1c36d99e6008f627d563f480cd660654f5a22ec9` |
| 2 | `theorem` | [le_natDegree_of_map_eq_mul_X_pow](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/declarations/le-natdegree-of-map-eq-mul-x-pow--ecbd35fcd712aa34b16f65d7.md) | 60 | `result-track:ecbd35fcd712aa34b16f65d752062a83f15a9d45228c01d4ed592ffe53290501` |
| 3 | `theorem` | [eval_zero_mem_ideal_of_eq_mul_X_pow](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/declarations/eval-zero-mem-ideal-of-eq-mul-x-pow--9b2328e44320b3e60aa4a025.md) | 73 | `result-track:9b2328e44320b3e60aa4a025cbd7d404b2f113955d9d5f5435b7824bde49efd7` |
| 4 | `theorem` | [isUnit_of_natDegree_eq_zero_of_isPrimitive](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/declarations/isunit-of-natdegree-eq-zero-of-isprimitive--086d5d88b26cb7e62ad2ee8b.md) | 82 | `result-track:086d5d88b26cb7e62ad2ee8b444c16566b758184d17b126b2b12b9886b14897a` |
| 5 | `theorem` | [irreducible_of_eisenstein_criterion](../../../../mathematics/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/declarations/irreducible-of-eisenstein-criterion--c09e7440f1cd51eca9b7be92.md) | 101 | `result-track:c09e7440f1cd51eca9b7be925ab4825b872ec68120a6508fc60de93723855600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
