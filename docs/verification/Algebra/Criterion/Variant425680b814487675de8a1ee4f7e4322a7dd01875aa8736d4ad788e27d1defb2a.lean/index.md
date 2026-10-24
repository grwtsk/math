# Verification target: GRWTSK.Algebra.Criterion.Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e07129627283409eba3c0047a30c81e39b52d63",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e07129627283409eba3c0047a30c81e39b52d63`.

Source path: `GRWTSK/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [generalizedEisenstein_aux](../../../../mathematics/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/declarations/generalizedeisenstein-aux--45b48b63401eaadf1f8630f6.md) | 62 | `result-track:45b48b63401eaadf1f8630f6f22430416813e88354dcf0e85219f90ff6fd8b04` |
| 2 | `theorem` | [generalizedEisenstein](../../../../mathematics/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/declarations/generalizedeisenstein--c2202532c188d40f7e6a1252.md) | 119 | `result-track:c2202532c188d40f7e6a1252131b572ae57834de75d76e667523789f22b2e075` |
| 3 | `theorem` | [irreducible_of_eisenstein_criterion](../../../../mathematics/Algebra/Criterion/Variant425680b814487675de8a1ee4f7e4322a7dd01875aa8736d4ad788e27d1defb2a.lean/declarations/irreducible-of-eisenstein-criterion--aece40d45554595da0f06f11.md) | 172 | `result-track:aece40d45554595da0f06f11b86c4aac16824459e835a1254e51cf2af6d2d2cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
