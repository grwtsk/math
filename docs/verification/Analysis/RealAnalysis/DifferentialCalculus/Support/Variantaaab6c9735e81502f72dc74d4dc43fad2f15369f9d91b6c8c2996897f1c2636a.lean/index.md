# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Support.Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99a5b5664c417903643110d94bce1b24f3479c94",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99a5b5664c417903643110d94bce1b24f3479c94`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_deriv_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean/declarations/support-deriv-subset--7940b7df8ebd7e5d258b184d.md) | 42 | `result-track:7940b7df8ebd7e5d258b184dafe496d9ac266a24fc3eabefc7f0474c5cbdfe85` |
| 2 | `theorem` | [HasCompactSupport.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Support/Variantaaab6c9735e81502f72dc74d4dc43fad2f15369f9d91b6c8c2996897f1c2636a.lean/declarations/hascompactsupport-deriv--70b53eca0d4d60673c138a3f.md) | 49 | `result-track:70b53eca0d4d60673c138a3f29d1c73e626a232e788eec61bce6d42252a0b2fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
