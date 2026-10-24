# Verification target: GRWTSK.Algebra.Units.Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de9ce10eb079cdd21eb38828aa21dc3f15b1ae8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de9ce10eb079cdd21eb38828aa21dc3f15b1ae8`.

Source path: `GRWTSK/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [units_eq_one_or](../../../../mathematics/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean/declarations/units-eq-one-or--91d472feab87314af0417389.md) | 36 | `result-track:91d472feab87314af0417389d013c4f8e6bfe2d1fccd7a9fd5edab42e6b64ab1` |
| 2 | `lemma` | [units_ne_iff_eq_neg](../../../../mathematics/Algebra/Units/Variant9e4bfacce389312802b85d2c672133aa486b131b6033c902bd09a3aff6f59ea6.lean/declarations/units-ne-iff-eq-neg--c2881fd74a9fb5287d5a4fbe.md) | 39 | `result-track:c2881fd74a9fb5287d5a4fbe21ac78dc6c20775fcc9d01bb0853c8c48af7066b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
