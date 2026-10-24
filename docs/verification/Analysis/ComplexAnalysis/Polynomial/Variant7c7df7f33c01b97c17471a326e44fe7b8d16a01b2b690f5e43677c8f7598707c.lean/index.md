# Verification target: GRWTSK.Analysis.ComplexAnalysis.Polynomial.Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba75c0d9279ab1aec938883f40091b7e5d221d4",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba75c0d9279ab1aec938883f40091b7e5d221d4`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Liouville` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_root](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean/declarations/exists-root--c4978d43e578dcc42820c373.md) | 37 | `result-track:c4978d43e578dcc42820c37366f92a9dd2c5e710ec4de62e56a3014255f9094d` |
| 2 | `instance` | [isAlgClosed](../../../../../mathematics/Analysis/ComplexAnalysis/Polynomial/Variant7c7df7f33c01b97c17471a326e44fe7b8d16a01b2b690f5e43677c8f7598707c.lean/declarations/isalgclosed--b47a3c1cc2e5596e2e260041.md) | 48 | `declaration-track:b47a3c1cc2e5596e2e26004124d87246b3e16f06c785a70d4db36493ec9d37db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
