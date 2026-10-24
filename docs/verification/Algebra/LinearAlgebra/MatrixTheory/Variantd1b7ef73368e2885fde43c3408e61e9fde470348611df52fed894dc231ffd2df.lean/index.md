# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46fc975d491c04769c642b8132f979956480475e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46fc975d491c04769c642b8132f979956480475e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean/declarations/macro-rules--278606df9633b94814e84705.md) | 22 | `declaration-track:278606df9633b94814e847050bd5d57cc6ca579d5d62ea66eff7f2377c2c08df` |
| 2 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean/declarations/entry-norm-bound-of-unitary--eff9bbc55d0cf144e4072736.md) | 30 | `result-track:eff9bbc55d0cf144e4072736273b5ca18938bca447c877639d0bca4cb3e7c3a3` |
| 3 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df.lean/declarations/entrywise-sup-norm-bound-of-unitary--9eaa259298005804de733f63.md) | 64 | `result-track:9eaa259298005804de733f63c1c0d92aeb02b449faf1a00f70b51554d100885a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
