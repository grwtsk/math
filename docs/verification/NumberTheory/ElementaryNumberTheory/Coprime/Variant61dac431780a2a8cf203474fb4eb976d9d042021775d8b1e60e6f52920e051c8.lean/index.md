# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Coprime.Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4518a2d582101bca0bd30fb23ef2d0eb66c8bdb1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4518a2d582101bca0bd30fb23ef2d0eb66c8bdb1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_iff_gcd_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean/declarations/eq-zero-iff-gcd-ne-one--fb0ad51ea7463bdbae0ac803.md) | 32 | `result-track:fb0ad51ea7463bdbae0ac803a8eb58ed4972aa2bf73c4275f4c722a850b7811c` |
| 2 | `theorem` | [ne_zero_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean/declarations/ne-zero-of-gcd-eq-one--05fa7070c3c77fe052bff614.md) | 39 | `result-track:05fa7070c3c77fe052bff614d4e5df4bd267a78744b79c062a47b959d7de6ffe` |
| 3 | `theorem` | [eq_zero_of_gcd_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variant61dac431780a2a8cf203474fb4eb976d9d042021775d8b1e60e6f52920e051c8.lean/declarations/eq-zero-of-gcd-ne-one--3d956559a1abec4316532593.md) | 43 | `result-track:3d956559a1abec43165325934c0be9a34e608232859fb4b2845c3e3a5088d59d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
