# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Factorization.Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ee2d2224c2b733a3de32ca355b03aa337f8113",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ee2d2224c2b733a3de32ca355b03aa337f8113`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.PrimePower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorizationMap](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/declarations/factorizationmap--772d51df365958d7ef46b19e.md) | 27 | `declaration-track:772d51df365958d7ef46b19e223b7996aaef3c6aa5925a993fc7bb0bec3f629c` |
| 2 | `def` | [IsPrimeSupport](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/declarations/isprimesupport--73fe19266336dbba91b1965c.md) | 30 | `declaration-track:73fe19266336dbba91b1965cae6bae4f512838a403ee0ab8a498ca3ea80adbec` |
| 3 | `theorem` | [factorization_support_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/declarations/factorization-support-prime--a93ed896c07479b976d3c8e0.md) | 33 | `result-track:a93ed896c07479b976d3c8e0aa1a65dc36ac0028b2e493823869d2d3cc312dbc` |
| 4 | `theorem` | [factorization_exponent_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/declarations/factorization-exponent-pos--9bbfd469f5d743284541c6b3.md) | 44 | `result-track:9bbfd469f5d743284541c6b3d7ca52827844e39e2a1067ecc4eea3f2bb5d1585` |
| 5 | `def` | [factorPrimePowerOfSupport](../../../../mathematics/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/declarations/factorprimepowerofsupport--ebcd226359afe24fac358fc1.md) | 51 | `declaration-track:ebcd226359afe24fac358fc1e4a72efd77fea1c9de78f120694f7f629c93093a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
