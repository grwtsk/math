# Verification target: GRWTSK.Algebra.LinearAlgebra.Norm.Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3b747edab3050b115fc3e9f43f05683ebf44d5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3b747edab3050b115fc3e9f43f05683ebf44d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [associated_norm_prod_smith](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean/declarations/associated-norm-prod-smith--a161bb999d8264db4194c2c7.md) | 30 | `result-track:a161bb999d8264db4194c2c7fa6e6ddcb8e068ba5e3a5228ca887c91f2937543` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean/declarations/instance--6779899b807a3dad9be76048.md) | 59 | `declaration-track:6779899b807a3dad9be76048f41c72bd41ec74fa5aa1ea22ad7550f65917c489` |
| 3 | `theorem` | [finrank_quotient_span_eq_natDegree_norm](../../../../../mathematics/Algebra/LinearAlgebra/Norm/Variante024576895630a5badabc511d9bbb7e216ee1536b25d4afa3145ba786910e0e9.lean/declarations/finrank-quotient-span-eq-natdegree-norm--ac9714390bdb20cc4a88cb48.md) | 65 | `result-track:ac9714390bdb20cc4a88cb4829f02b546b1eadc5af564b644ed9cb5608c0250a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
