# Verification target: GRWTSK.Algebra.CommutativeAlgebra.DegLex.Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f391df3b6ed0bc0d3c4fe2c081c2fb54ceb2e885",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f391df3b6ed0bc0d3c4fe2c081c2fb54ceb2e885`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPolynomial.MonomialOrder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder.DegLex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_degLexDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean/declarations/degree-deglexdegree--7031ff86d1bbebb98dea9435.md) | 23 | `result-track:7031ff86d1bbebb98dea943580c16f9a9d7c165d17ba229944f11b5fc0b73990` |
| 2 | `theorem` | [degLex_totalDegree_monotone](../../../../../mathematics/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean/declarations/deglex-totaldegree-monotone--054bedbd669094da497705ed.md) | 33 | `result-track:054bedbd669094da497705eddf23b044870bfc57e037a05c6cf3ba0e2d1afb01` |
| 3 | `theorem` | [totalDegree_mul_of_isDomain](../../../../../mathematics/Algebra/CommutativeAlgebra/DegLex/Variant43629adb9efa4b018aa8f72e4fb0da7128dc391ca5992b104fb667bce3e96da4.lean/declarations/totaldegree-mul-of-isdomain--b644730df3d42cfc1a300093.md) | 40 | `result-track:b644730df3d42cfc1a3000934f4afd256eda695258a9d6dfb0acb297601879b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
