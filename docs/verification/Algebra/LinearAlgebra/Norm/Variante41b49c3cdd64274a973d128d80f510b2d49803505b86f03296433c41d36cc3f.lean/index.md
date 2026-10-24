# Verification target: GRWTSK.Algebra.LinearAlgebra.Norm.Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5e87f5674622b78bdb2fcfb8a9640846b8fe112",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5e87f5674622b78bdb2fcfb8a9640846b8fe112`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [associated_norm_prod_smith](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/declarations/associated-norm-prod-smith--a473b04eb71db6a04f80635c.md) | 38 | `result-track:a473b04eb71db6a04f80635c62d7c1e8ddd213d7efe9696cb78276e14b4f750a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/declarations/instance--072364ce274fb5c24848935f.md) | 67 | `declaration-track:072364ce274fb5c24848935f552d9966209f5271874a3e06bda91d58d6946b85` |
| 3 | `theorem` | [finrank_quotient_span_eq_natDegree_norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/declarations/finrank-quotient-span-eq-natdegree-norm--a1c52cb1d0591d6eeb1827ed.md) | 73 | `result-track:a1c52cb1d0591d6eeb1827ed50c0cf4dac8dd87279922b1a645d4363d4c8eb35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
