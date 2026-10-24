# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FiniteDimensional.Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3068b3319a0939c3ea4186533ed2a061d5d9012",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3068b3319a0939c3ea4186533ed2a061d5d9012`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Torsion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isTorsion_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean/declarations/istorsion-of-aeval-eq-zero--25af6f20495667ddce5c37d4.md) | 29 | `result-track:25af6f20495667ddce5c37d44fe850f1c4e5f028f2b37382b8bf5c0a79cd41ac` |
| 2 | `theorem` | [isTorsion_of_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/FiniteDimensional/Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5.lean/declarations/istorsion-of-finitedimensional--6f57b1281ff4f0f1188203a6.md) | 38 | `result-track:6f57b1281ff4f0f1188203a6a96047b325a2e0c2307766a28494451cc6aeb267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
